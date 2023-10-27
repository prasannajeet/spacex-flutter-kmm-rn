import React from 'react';
import {FAB} from 'react-native-paper';
import {getStyle} from '../Styles';
import {useDispatch, useSelector} from 'react-redux';
import {switchTheme} from '../redux/ThemeSlice';

const ThemeSwitcher = () => {
  const dispatch = useDispatch();
  const isDarkTheme: boolean = useSelector(
    (state: any) => state.themeSwitcher.isDarkTheme,
  );
  const label = isDarkTheme ? 'Switch to light theme' : 'Switch to dark theme';
  return (
    <FAB
      label={label}
      style={getStyle().fab}
      onPress={() => dispatch(switchTheme())}
    />
  );
};

export default ThemeSwitcher;
