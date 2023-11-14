import {useDispatch, useSelector} from 'react-redux';
import {useEffect, useState} from 'react';
import {SPACEX_API_URL, SPACEX_COMPANY_INFO} from '../Utils';
import {Status} from '../types/NetworkCallType';
import {SpaceX} from '../types/SpaceX';
import {fetchData, networkActions} from '../redux/NetworkThunk';
import axios from 'axios';

/**
 * A custom hook to fetch and return SpaceX company information.
 *
 * @returns An object containing the fetched data, status and error.
 */
export const useCompanyInfo = () => {
  // const dispatch = useDispatch();
  // const data: SpaceX = useSelector((state: any) => state.networkFetch.data);
  // const status: Status = useSelector((state: any) => state.networkFetch.status);
  // const error: Error = useSelector((state: any) => state.networkFetch.error);

  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<Error | undefined>(undefined);
  const [data, setData] = useState<SpaceX | undefined>(undefined);

  useEffect(() => {
    onRefresh();
    // return () => {
    //   dispatch(networkActions.reset());
    // };
  }, []);

  const onRefresh = async () => {
    setLoading(true);
    try {
      const data = await axios.get(`${SPACEX_API_URL}${SPACEX_COMPANY_INFO}`);
      setData(data.data);
    } catch (error: any) {
      setError(error);
    }

    setLoading(false);
    //dispatch(fetchData(`${SPACEX_API_URL}${SPACEX_COMPANY_INFO}`) as any);
  };

  //return {data, status, error, onRefresh};
  return {loading, data, error, onRefresh};
};
