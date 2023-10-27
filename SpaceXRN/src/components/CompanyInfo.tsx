import React from 'react';
import { Text } from 'react-native-paper';
import { useCompanyInfo } from '../hooks/useCompanyInfo';
import { ScrollView, View } from 'react-native';

/**
 * Renders the SpaceX company information screen.
 * @returns JSX element containing the company information screen.
 */
export const SpaceXCompanyInfoScreen = () => {
    const { data, status, error } = useCompanyInfo();

    return (
        <View>
            {status === 'loading' && <Text variant="displayMedium">Loading...</Text>}
            {status === 'succeeded' && <ScrollView><Text variant="displayMedium">Data: {JSON.stringify(data)}</Text></ScrollView>}
            {status === 'failed' && <Text variant="displayMedium">Error: {error.message}</Text>}
        </View>
    );
}
