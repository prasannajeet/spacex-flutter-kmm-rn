/**
 * @format
 */

import { AppRegistry } from 'react-native';
import App from './App';
import { name as appName } from './app.json';
import store from './src/redux';
import { Provider } from 'react-redux';
import { MD3LightTheme as DefaultTheme, PaperProvider } from 'react-native-paper';
import { NavigationContainer } from '@react-navigation/native';

const theme = {
    ...DefaultTheme,
    colors: {
      ...DefaultTheme.colors,
      primary: 'tomato',
      secondary: 'yellow',
    },
  };

AppRegistry.registerComponent(appName, () => () => (
    <Provider store={store}>
        <PaperProvider theme={theme}>
            <NavigationContainer>
                <App />
            </NavigationContainer>
        </PaperProvider>
    </Provider>
));
