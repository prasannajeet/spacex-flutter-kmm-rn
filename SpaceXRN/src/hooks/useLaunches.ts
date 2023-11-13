import {useDispatch, useSelector} from 'react-redux';
import {useEffect} from 'react';
import {SPACEX_API_URL, SPACEX_LAUNCHES} from '../Utils';
import {Status} from '../types/NetworkCallType';
import {SpaceX} from '../types/SpaceX';
import {fetchData, networkActions} from '../redux/NetworkThunk';

/**
 * A custom hook to fetch and return SpaceX company information.
 *
 * @returns An object containing the fetched data, status and error.
 */
export const useLaunches = () => {
  const dispatch = useDispatch();
  const data: SpaceX = useSelector((state: any) => state.networkFetch.data);
  const status: Status = useSelector((state: any) => state.networkFetch.status);
  const error: Error = useSelector((state: any) => state.networkFetch.error);

  useEffect(() => {
    onRefresh();
    return () => {
      dispatch(networkActions.reset());
    };
  }, []);

  const onRefresh = () => {
    dispatch(fetchData(`${SPACEX_API_URL}${SPACEX_LAUNCHES}`) as any);
  };

  return {data, status, error, onRefresh};
};
