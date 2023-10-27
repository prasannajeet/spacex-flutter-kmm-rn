import {useDispatch, useSelector} from 'react-redux';
import {useEffect} from 'react';
import {SPACEX_API_URL, SPACEX_COMPANY_INFO} from '../Utils';
import {Status} from '../data/types/NetworkCallType';
import {CompanyInfoType} from '../data/types/CompanyInfoTypes';
import {fetchData} from '../data/network/networkthunk';

/**
 * A custom hook to fetch and return SpaceX company information.
 * @returns An object containing the fetched data, status and error.
 */
export const useCompanyInfo = () => {
  const dispatch = useDispatch();
  const data: CompanyInfoType = useSelector(
    (state: any) => state.networkFetch.data,
  );
  const status: Status = useSelector((state: any) => state.networkFetch.status);
  const error: Error = useSelector((state: any) => state.networkFetch.error);

  useEffect(() => {
    dispatch(fetchData(`${SPACEX_API_URL}${SPACEX_COMPANY_INFO}`));
  }, []);

  return {data, status, error};
};
