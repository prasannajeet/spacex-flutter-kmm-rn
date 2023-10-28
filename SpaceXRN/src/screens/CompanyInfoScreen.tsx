import React from 'react';
import {ActivityIndicator, MD3Colors, Text} from 'react-native-paper';
import {useCompanyInfo} from '../hooks/useCompanyInfo';
import {ScrollView, View} from 'react-native';
import {getStyle} from '../Styles';
import {TitleText} from '../components/TitleText';
import {SubtitleText} from '../components/SubtitleText';
import {HorizontalSpacer, VerticalSpacer} from '../components/Spacer';
import {BodyText} from '../components/BodyText';
import {CurrencyDisplay} from '../components/CurrencyDisplay';
import {SectionHeader} from '../components/SectionHeader';
import {SafeAreaView} from 'react-native-safe-area-context';

/**
 * Renders the SpaceX company information screen.
 * @returns JSX element containing the company information screen.
 */
export const SpaceXCompanyInfoScreen = () => {
  const {data, status, error, onRefresh} = useCompanyInfo();
  const style = getStyle();

  return (
    <ScrollView style={style.screen}>
      {status === 'loading' && (
        <ActivityIndicator
          style={style.progress}
          size={50}
          animating={true}
          color={MD3Colors.primary90}
        />
      )}
      {status === 'succeeded' && (
        <View>
          <TitleText>{data.name}</TitleText>
          <VerticalSpacer space={8} />
          <SubtitleText>
            Founded by {data.founder} in year {data.founded}
          </SubtitleText>
          <VerticalSpacer space={8} />
          <BodyText>{data.summary}</BodyText>
          <VerticalSpacer space={24} />
          <SectionHeader>Headquarters</SectionHeader>
          <BodyText>
            {data.headquarters.address}, {data.headquarters.city},{' '}
            {data.headquarters.state}
          </BodyText>
          <VerticalSpacer space={16} />
          <SectionHeader>Valuation</SectionHeader>
          <VerticalSpacer space={8} />
          <View style={{justifyContent: 'center', alignItems: 'center'}}>
            <CurrencyDisplay currencyType="$" currencyValue={data.valuation} />
          </View>
          <VerticalSpacer space={16} />
          <SectionHeader>Executive Team</SectionHeader>
          <View
            style={{
              alignContent: 'flex-start',
            }}>
            <View
              style={{
                flexDirection: 'row',
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <BodyText>CEO:</BodyText>
              <HorizontalSpacer space={8} />
              <BodyText>{data.ceo}</BodyText>
            </View>
            <VerticalSpacer space={8} />
            <View
              style={{
                flexDirection: 'row',
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <BodyText>CTO:</BodyText>
              <HorizontalSpacer space={8} />
              <BodyText>{data.cto}</BodyText>
            </View>
            <VerticalSpacer space={8} />
            <View
              style={{
                flexDirection: 'row',
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <BodyText>COO:</BodyText>
              <HorizontalSpacer space={8} />
              <BodyText>{data.coo}</BodyText>
            </View>
            <VerticalSpacer space={8} />
            <View
              style={{
                flexDirection: 'row',
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <BodyText>CTO Propulson:</BodyText>
              <HorizontalSpacer space={8} />
              <BodyText>{data.cto_propulsion}</BodyText>
            </View>
          </View>
          <VerticalSpacer space={16} />
          <SectionHeader>Resources</SectionHeader>
          <VerticalSpacer space={8} />
          <View
            style={{
              alignContent: 'flex-start',
            }}>
            <View
              style={{
                flexDirection: 'row',
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <BodyText>Employees:</BodyText>
              <HorizontalSpacer space={8} />
              <BodyText>{data.employees}</BodyText>
            </View>
            <VerticalSpacer space={8} />
            <View
              style={{
                flexDirection: 'row',
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <BodyText>Vehicles:</BodyText>
              <HorizontalSpacer space={8} />
              <BodyText>{data.vehicles}</BodyText>
            </View>
            <VerticalSpacer space={8} />
            <View
              style={{
                flexDirection: 'row',
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <BodyText>Launch Sites:</BodyText>
              <HorizontalSpacer space={8} />
              <BodyText>{data.launch_sites}</BodyText>
            </View>
            <VerticalSpacer space={8} />
            <View
              style={{
                flexDirection: 'row',
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <BodyText>Test Sites:</BodyText>
              <HorizontalSpacer space={8} />
              <BodyText>{data.test_sites}</BodyText>
            </View>
          </View>
        </View>
      )}
      {status === 'failed' && (
        <Text style={style.text} variant="bodyMedium">
          Error: {error.message}
        </Text>
      )}
    </ScrollView>
  );
};
