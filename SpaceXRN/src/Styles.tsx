import {StyleSheet} from 'react-native';
import {useSelector} from 'react-redux';

export const getStyle = () => {
    const isDarkTheme: boolean = useSelector(
        (state: any) => state.themeSwitcher.isDarkTheme,
    );

    return StyleSheet.create({
        screen: {
            backgroundColor: isDarkTheme ? 'black' : 'white',
            width: '100%',
            height: '100%',
            padding: 16,
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
        },
        text: {
            color: isDarkTheme ? 'white' : 'black',
        },
        fab: {
            position: 'absolute',
            margin: 8,
            right: 0,
            bottom: 32,
        },
        progress: {
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
        },
    });
};
