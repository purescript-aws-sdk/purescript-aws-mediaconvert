
module AWS.MediaConvert.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.
newtype AacAudioDescriptionBroadcasterMix = AacAudioDescriptionBroadcasterMix String
derive instance newtypeAacAudioDescriptionBroadcasterMix :: Newtype AacAudioDescriptionBroadcasterMix _
derive instance repGenericAacAudioDescriptionBroadcasterMix :: Generic AacAudioDescriptionBroadcasterMix _
instance showAacAudioDescriptionBroadcasterMix :: Show AacAudioDescriptionBroadcasterMix where show = genericShow
instance decodeAacAudioDescriptionBroadcasterMix :: Decode AacAudioDescriptionBroadcasterMix where decode = genericDecode options
instance encodeAacAudioDescriptionBroadcasterMix :: Encode AacAudioDescriptionBroadcasterMix where encode = genericEncode options



-- | AAC Profile.
newtype AacCodecProfile = AacCodecProfile String
derive instance newtypeAacCodecProfile :: Newtype AacCodecProfile _
derive instance repGenericAacCodecProfile :: Generic AacCodecProfile _
instance showAacCodecProfile :: Show AacCodecProfile where show = genericShow
instance decodeAacCodecProfile :: Decode AacCodecProfile where decode = genericDecode options
instance encodeAacCodecProfile :: Encode AacCodecProfile where encode = genericEncode options



-- | Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. "1.0 - Audio Description (Receiver Mix)" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
newtype AacCodingMode = AacCodingMode String
derive instance newtypeAacCodingMode :: Newtype AacCodingMode _
derive instance repGenericAacCodingMode :: Generic AacCodingMode _
instance showAacCodingMode :: Show AacCodingMode where show = genericShow
instance decodeAacCodingMode :: Decode AacCodingMode where decode = genericDecode options
instance encodeAacCodingMode :: Encode AacCodingMode where encode = genericEncode options



-- | Rate Control Mode.
newtype AacRateControlMode = AacRateControlMode String
derive instance newtypeAacRateControlMode :: Newtype AacRateControlMode _
derive instance repGenericAacRateControlMode :: Generic AacRateControlMode _
instance showAacRateControlMode :: Show AacRateControlMode where show = genericShow
instance decodeAacRateControlMode :: Decode AacRateControlMode where decode = genericDecode options
instance encodeAacRateControlMode :: Encode AacRateControlMode where encode = genericEncode options



-- | Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose "No container" for the output container.
newtype AacRawFormat = AacRawFormat String
derive instance newtypeAacRawFormat :: Newtype AacRawFormat _
derive instance repGenericAacRawFormat :: Generic AacRawFormat _
instance showAacRawFormat :: Show AacRawFormat where show = genericShow
instance decodeAacRawFormat :: Decode AacRawFormat where decode = genericDecode options
instance encodeAacRawFormat :: Encode AacRawFormat where encode = genericEncode options



-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC.
newtype AacSettings = AacSettings 
  { "AudioDescriptionBroadcasterMix" :: Maybe (AacAudioDescriptionBroadcasterMix)
  , "Bitrate" :: Maybe (Int)
  , "CodecProfile" :: Maybe (AacCodecProfile)
  , "CodingMode" :: Maybe (AacCodingMode)
  , "RateControlMode" :: Maybe (AacRateControlMode)
  , "RawFormat" :: Maybe (AacRawFormat)
  , "SampleRate" :: Maybe (Int)
  , "Specification" :: Maybe (AacSpecification)
  , "VbrQuality" :: Maybe (AacVbrQuality)
  }
derive instance newtypeAacSettings :: Newtype AacSettings _
derive instance repGenericAacSettings :: Generic AacSettings _
instance showAacSettings :: Show AacSettings where show = genericShow
instance decodeAacSettings :: Decode AacSettings where decode = genericDecode options
instance encodeAacSettings :: Encode AacSettings where encode = genericEncode options

-- | Constructs AacSettings from required parameters
newAacSettings :: AacSettings
newAacSettings  = AacSettings { "AudioDescriptionBroadcasterMix": Nothing, "Bitrate": Nothing, "CodecProfile": Nothing, "CodingMode": Nothing, "RateControlMode": Nothing, "RawFormat": Nothing, "SampleRate": Nothing, "Specification": Nothing, "VbrQuality": Nothing }

-- | Constructs AacSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAacSettings' :: ( { "AudioDescriptionBroadcasterMix" :: Maybe (AacAudioDescriptionBroadcasterMix) , "Bitrate" :: Maybe (Int) , "CodecProfile" :: Maybe (AacCodecProfile) , "CodingMode" :: Maybe (AacCodingMode) , "RateControlMode" :: Maybe (AacRateControlMode) , "RawFormat" :: Maybe (AacRawFormat) , "SampleRate" :: Maybe (Int) , "Specification" :: Maybe (AacSpecification) , "VbrQuality" :: Maybe (AacVbrQuality) } -> {"AudioDescriptionBroadcasterMix" :: Maybe (AacAudioDescriptionBroadcasterMix) , "Bitrate" :: Maybe (Int) , "CodecProfile" :: Maybe (AacCodecProfile) , "CodingMode" :: Maybe (AacCodingMode) , "RateControlMode" :: Maybe (AacRateControlMode) , "RawFormat" :: Maybe (AacRawFormat) , "SampleRate" :: Maybe (Int) , "Specification" :: Maybe (AacSpecification) , "VbrQuality" :: Maybe (AacVbrQuality) } ) -> AacSettings
newAacSettings'  customize = (AacSettings <<< customize) { "AudioDescriptionBroadcasterMix": Nothing, "Bitrate": Nothing, "CodecProfile": Nothing, "CodingMode": Nothing, "RateControlMode": Nothing, "RawFormat": Nothing, "SampleRate": Nothing, "Specification": Nothing, "VbrQuality": Nothing }



-- | Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
newtype AacSpecification = AacSpecification String
derive instance newtypeAacSpecification :: Newtype AacSpecification _
derive instance repGenericAacSpecification :: Generic AacSpecification _
instance showAacSpecification :: Show AacSpecification where show = genericShow
instance decodeAacSpecification :: Decode AacSpecification where decode = genericDecode options
instance encodeAacSpecification :: Encode AacSpecification where encode = genericEncode options



-- | VBR Quality Level - Only used if rate_control_mode is VBR.
newtype AacVbrQuality = AacVbrQuality String
derive instance newtypeAacVbrQuality :: Newtype AacVbrQuality _
derive instance repGenericAacVbrQuality :: Generic AacVbrQuality _
instance showAacVbrQuality :: Show AacVbrQuality where show = genericShow
instance decodeAacVbrQuality :: Decode AacVbrQuality where decode = genericDecode options
instance encodeAacVbrQuality :: Encode AacVbrQuality where encode = genericEncode options



-- | Specifies the "Bitstream Mode" (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.
newtype Ac3BitstreamMode = Ac3BitstreamMode String
derive instance newtypeAc3BitstreamMode :: Newtype Ac3BitstreamMode _
derive instance repGenericAc3BitstreamMode :: Generic Ac3BitstreamMode _
instance showAc3BitstreamMode :: Show Ac3BitstreamMode where show = genericShow
instance decodeAc3BitstreamMode :: Decode Ac3BitstreamMode where decode = genericDecode options
instance encodeAc3BitstreamMode :: Encode Ac3BitstreamMode where encode = genericEncode options



-- | Dolby Digital coding mode. Determines number of channels.
newtype Ac3CodingMode = Ac3CodingMode String
derive instance newtypeAc3CodingMode :: Newtype Ac3CodingMode _
derive instance repGenericAc3CodingMode :: Generic Ac3CodingMode _
instance showAc3CodingMode :: Show Ac3CodingMode where show = genericShow
instance decodeAc3CodingMode :: Decode Ac3CodingMode where decode = genericDecode options
instance encodeAc3CodingMode :: Encode Ac3CodingMode where encode = genericEncode options



-- | If set to FILM_STANDARD, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
newtype Ac3DynamicRangeCompressionProfile = Ac3DynamicRangeCompressionProfile String
derive instance newtypeAc3DynamicRangeCompressionProfile :: Newtype Ac3DynamicRangeCompressionProfile _
derive instance repGenericAc3DynamicRangeCompressionProfile :: Generic Ac3DynamicRangeCompressionProfile _
instance showAc3DynamicRangeCompressionProfile :: Show Ac3DynamicRangeCompressionProfile where show = genericShow
instance decodeAc3DynamicRangeCompressionProfile :: Decode Ac3DynamicRangeCompressionProfile where decode = genericDecode options
instance encodeAc3DynamicRangeCompressionProfile :: Encode Ac3DynamicRangeCompressionProfile where encode = genericEncode options



-- | Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
newtype Ac3LfeFilter = Ac3LfeFilter String
derive instance newtypeAc3LfeFilter :: Newtype Ac3LfeFilter _
derive instance repGenericAc3LfeFilter :: Generic Ac3LfeFilter _
instance showAc3LfeFilter :: Show Ac3LfeFilter where show = genericShow
instance decodeAc3LfeFilter :: Decode Ac3LfeFilter where decode = genericDecode options
instance encodeAc3LfeFilter :: Encode Ac3LfeFilter where encode = genericEncode options



-- | When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
newtype Ac3MetadataControl = Ac3MetadataControl String
derive instance newtypeAc3MetadataControl :: Newtype Ac3MetadataControl _
derive instance repGenericAc3MetadataControl :: Generic Ac3MetadataControl _
instance showAc3MetadataControl :: Show Ac3MetadataControl where show = genericShow
instance decodeAc3MetadataControl :: Decode Ac3MetadataControl where decode = genericDecode options
instance encodeAc3MetadataControl :: Encode Ac3MetadataControl where encode = genericEncode options



-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3.
newtype Ac3Settings = Ac3Settings 
  { "Bitrate" :: Maybe (Int)
  , "BitstreamMode" :: Maybe (Ac3BitstreamMode)
  , "CodingMode" :: Maybe (Ac3CodingMode)
  , "Dialnorm" :: Maybe (Int)
  , "DynamicRangeCompressionProfile" :: Maybe (Ac3DynamicRangeCompressionProfile)
  , "LfeFilter" :: Maybe (Ac3LfeFilter)
  , "MetadataControl" :: Maybe (Ac3MetadataControl)
  , "SampleRate" :: Maybe (Int)
  }
derive instance newtypeAc3Settings :: Newtype Ac3Settings _
derive instance repGenericAc3Settings :: Generic Ac3Settings _
instance showAc3Settings :: Show Ac3Settings where show = genericShow
instance decodeAc3Settings :: Decode Ac3Settings where decode = genericDecode options
instance encodeAc3Settings :: Encode Ac3Settings where encode = genericEncode options

-- | Constructs Ac3Settings from required parameters
newAc3Settings :: Ac3Settings
newAc3Settings  = Ac3Settings { "Bitrate": Nothing, "BitstreamMode": Nothing, "CodingMode": Nothing, "Dialnorm": Nothing, "DynamicRangeCompressionProfile": Nothing, "LfeFilter": Nothing, "MetadataControl": Nothing, "SampleRate": Nothing }

-- | Constructs Ac3Settings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAc3Settings' :: ( { "Bitrate" :: Maybe (Int) , "BitstreamMode" :: Maybe (Ac3BitstreamMode) , "CodingMode" :: Maybe (Ac3CodingMode) , "Dialnorm" :: Maybe (Int) , "DynamicRangeCompressionProfile" :: Maybe (Ac3DynamicRangeCompressionProfile) , "LfeFilter" :: Maybe (Ac3LfeFilter) , "MetadataControl" :: Maybe (Ac3MetadataControl) , "SampleRate" :: Maybe (Int) } -> {"Bitrate" :: Maybe (Int) , "BitstreamMode" :: Maybe (Ac3BitstreamMode) , "CodingMode" :: Maybe (Ac3CodingMode) , "Dialnorm" :: Maybe (Int) , "DynamicRangeCompressionProfile" :: Maybe (Ac3DynamicRangeCompressionProfile) , "LfeFilter" :: Maybe (Ac3LfeFilter) , "MetadataControl" :: Maybe (Ac3MetadataControl) , "SampleRate" :: Maybe (Int) } ) -> Ac3Settings
newAc3Settings'  customize = (Ac3Settings <<< customize) { "Bitrate": Nothing, "BitstreamMode": Nothing, "CodingMode": Nothing, "Dialnorm": Nothing, "DynamicRangeCompressionProfile": Nothing, "LfeFilter": Nothing, "MetadataControl": Nothing, "SampleRate": Nothing }



-- | This setting only applies to H.264 and MPEG2 outputs. Use Insert AFD signaling (AfdSignaling) to whether there are AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data.
newtype AfdSignaling = AfdSignaling String
derive instance newtypeAfdSignaling :: Newtype AfdSignaling _
derive instance repGenericAfdSignaling :: Generic AfdSignaling _
instance showAfdSignaling :: Show AfdSignaling where show = genericShow
instance decodeAfdSignaling :: Decode AfdSignaling where decode = genericDecode options
instance encodeAfdSignaling :: Encode AfdSignaling where encode = genericEncode options



-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF.
newtype AiffSettings = AiffSettings 
  { "BitDepth" :: Maybe (Int)
  , "Channels" :: Maybe (Int)
  , "SampleRate" :: Maybe (Int)
  }
derive instance newtypeAiffSettings :: Newtype AiffSettings _
derive instance repGenericAiffSettings :: Generic AiffSettings _
instance showAiffSettings :: Show AiffSettings where show = genericShow
instance decodeAiffSettings :: Decode AiffSettings where decode = genericDecode options
instance encodeAiffSettings :: Encode AiffSettings where encode = genericEncode options

-- | Constructs AiffSettings from required parameters
newAiffSettings :: AiffSettings
newAiffSettings  = AiffSettings { "BitDepth": Nothing, "Channels": Nothing, "SampleRate": Nothing }

-- | Constructs AiffSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAiffSettings' :: ( { "BitDepth" :: Maybe (Int) , "Channels" :: Maybe (Int) , "SampleRate" :: Maybe (Int) } -> {"BitDepth" :: Maybe (Int) , "Channels" :: Maybe (Int) , "SampleRate" :: Maybe (Int) } ) -> AiffSettings
newAiffSettings'  customize = (AiffSettings <<< customize) { "BitDepth": Nothing, "Channels": Nothing, "SampleRate": Nothing }



-- | Settings for ancillary captions source.
newtype AncillarySourceSettings = AncillarySourceSettings 
  { "SourceAncillaryChannelNumber" :: Maybe (Int)
  }
derive instance newtypeAncillarySourceSettings :: Newtype AncillarySourceSettings _
derive instance repGenericAncillarySourceSettings :: Generic AncillarySourceSettings _
instance showAncillarySourceSettings :: Show AncillarySourceSettings where show = genericShow
instance decodeAncillarySourceSettings :: Decode AncillarySourceSettings where decode = genericDecode options
instance encodeAncillarySourceSettings :: Encode AncillarySourceSettings where encode = genericEncode options

-- | Constructs AncillarySourceSettings from required parameters
newAncillarySourceSettings :: AncillarySourceSettings
newAncillarySourceSettings  = AncillarySourceSettings { "SourceAncillaryChannelNumber": Nothing }

-- | Constructs AncillarySourceSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAncillarySourceSettings' :: ( { "SourceAncillaryChannelNumber" :: Maybe (Int) } -> {"SourceAncillaryChannelNumber" :: Maybe (Int) } ) -> AncillarySourceSettings
newAncillarySourceSettings'  customize = (AncillarySourceSettings <<< customize) { "SourceAncillaryChannelNumber": Nothing }



-- | Enable Anti-alias (AntiAlias) to enhance sharp edges in video output when your input resolution is much larger than your output resolution. Default is enabled.
newtype AntiAlias = AntiAlias String
derive instance newtypeAntiAlias :: Newtype AntiAlias _
derive instance repGenericAntiAlias :: Generic AntiAlias _
instance showAntiAlias :: Show AntiAlias where show = genericShow
instance decodeAntiAlias :: Decode AntiAlias where decode = genericDecode options
instance encodeAntiAlias :: Encode AntiAlias where encode = genericEncode options



-- | Type of Audio codec.
newtype AudioCodec = AudioCodec String
derive instance newtypeAudioCodec :: Newtype AudioCodec _
derive instance repGenericAudioCodec :: Generic AudioCodec _
instance showAudioCodec :: Show AudioCodec where show = genericShow
instance decodeAudioCodec :: Decode AudioCodec where decode = genericDecode options
instance encodeAudioCodec :: Encode AudioCodec where encode = genericEncode options



-- | Audio codec settings (CodecSettings) under (AudioDescriptions) contains the group of settings related to audio encoding. The settings in this group vary depending on the value you choose for Audio codec (Codec). For each codec enum you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AAC, AacSettings * MP2, Mp2Settings * WAV, WavSettings * AIFF, AiffSettings * AC3, Ac3Settings * EAC3, Eac3Settings
newtype AudioCodecSettings = AudioCodecSettings 
  { "AacSettings" :: Maybe (AacSettings)
  , "Ac3Settings" :: Maybe (Ac3Settings)
  , "AiffSettings" :: Maybe (AiffSettings)
  , "Codec" :: Maybe (AudioCodec)
  , "Eac3Settings" :: Maybe (Eac3Settings)
  , "Mp2Settings" :: Maybe (Mp2Settings)
  , "WavSettings" :: Maybe (WavSettings)
  }
derive instance newtypeAudioCodecSettings :: Newtype AudioCodecSettings _
derive instance repGenericAudioCodecSettings :: Generic AudioCodecSettings _
instance showAudioCodecSettings :: Show AudioCodecSettings where show = genericShow
instance decodeAudioCodecSettings :: Decode AudioCodecSettings where decode = genericDecode options
instance encodeAudioCodecSettings :: Encode AudioCodecSettings where encode = genericEncode options

-- | Constructs AudioCodecSettings from required parameters
newAudioCodecSettings :: AudioCodecSettings
newAudioCodecSettings  = AudioCodecSettings { "AacSettings": Nothing, "Ac3Settings": Nothing, "AiffSettings": Nothing, "Codec": Nothing, "Eac3Settings": Nothing, "Mp2Settings": Nothing, "WavSettings": Nothing }

-- | Constructs AudioCodecSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAudioCodecSettings' :: ( { "AacSettings" :: Maybe (AacSettings) , "Ac3Settings" :: Maybe (Ac3Settings) , "AiffSettings" :: Maybe (AiffSettings) , "Codec" :: Maybe (AudioCodec) , "Eac3Settings" :: Maybe (Eac3Settings) , "Mp2Settings" :: Maybe (Mp2Settings) , "WavSettings" :: Maybe (WavSettings) } -> {"AacSettings" :: Maybe (AacSettings) , "Ac3Settings" :: Maybe (Ac3Settings) , "AiffSettings" :: Maybe (AiffSettings) , "Codec" :: Maybe (AudioCodec) , "Eac3Settings" :: Maybe (Eac3Settings) , "Mp2Settings" :: Maybe (Mp2Settings) , "WavSettings" :: Maybe (WavSettings) } ) -> AudioCodecSettings
newAudioCodecSettings'  customize = (AudioCodecSettings <<< customize) { "AacSettings": Nothing, "Ac3Settings": Nothing, "AiffSettings": Nothing, "Codec": Nothing, "Eac3Settings": Nothing, "Mp2Settings": Nothing, "WavSettings": Nothing }



-- | When an "Audio Description":#audio_description specifies an AudioSelector or AudioSelectorGroup  for which no matching source is found in the input, then the audio selector marked as DEFAULT will be used.  If none are marked as default, silence will be inserted for the duration of the input.
newtype AudioDefaultSelection = AudioDefaultSelection String
derive instance newtypeAudioDefaultSelection :: Newtype AudioDefaultSelection _
derive instance repGenericAudioDefaultSelection :: Generic AudioDefaultSelection _
instance showAudioDefaultSelection :: Show AudioDefaultSelection where show = genericShow
instance decodeAudioDefaultSelection :: Decode AudioDefaultSelection where decode = genericDecode options
instance encodeAudioDefaultSelection :: Encode AudioDefaultSelection where encode = genericEncode options



-- | Description of audio output
newtype AudioDescription = AudioDescription 
  { "AudioNormalizationSettings" :: Maybe (AudioNormalizationSettings)
  , "AudioSourceName" :: Maybe (String)
  , "AudioType" :: Maybe (Int)
  , "AudioTypeControl" :: Maybe (AudioTypeControl)
  , "CodecSettings" :: Maybe (AudioCodecSettings)
  , "LanguageCode" :: Maybe (LanguageCode)
  , "LanguageCodeControl" :: Maybe (AudioLanguageCodeControl)
  , "RemixSettings" :: Maybe (RemixSettings)
  , "StreamName" :: Maybe (String)
  }
derive instance newtypeAudioDescription :: Newtype AudioDescription _
derive instance repGenericAudioDescription :: Generic AudioDescription _
instance showAudioDescription :: Show AudioDescription where show = genericShow
instance decodeAudioDescription :: Decode AudioDescription where decode = genericDecode options
instance encodeAudioDescription :: Encode AudioDescription where encode = genericEncode options

-- | Constructs AudioDescription from required parameters
newAudioDescription :: AudioDescription
newAudioDescription  = AudioDescription { "AudioNormalizationSettings": Nothing, "AudioSourceName": Nothing, "AudioType": Nothing, "AudioTypeControl": Nothing, "CodecSettings": Nothing, "LanguageCode": Nothing, "LanguageCodeControl": Nothing, "RemixSettings": Nothing, "StreamName": Nothing }

-- | Constructs AudioDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAudioDescription' :: ( { "AudioNormalizationSettings" :: Maybe (AudioNormalizationSettings) , "AudioSourceName" :: Maybe (String) , "AudioType" :: Maybe (Int) , "AudioTypeControl" :: Maybe (AudioTypeControl) , "CodecSettings" :: Maybe (AudioCodecSettings) , "LanguageCode" :: Maybe (LanguageCode) , "LanguageCodeControl" :: Maybe (AudioLanguageCodeControl) , "RemixSettings" :: Maybe (RemixSettings) , "StreamName" :: Maybe (String) } -> {"AudioNormalizationSettings" :: Maybe (AudioNormalizationSettings) , "AudioSourceName" :: Maybe (String) , "AudioType" :: Maybe (Int) , "AudioTypeControl" :: Maybe (AudioTypeControl) , "CodecSettings" :: Maybe (AudioCodecSettings) , "LanguageCode" :: Maybe (LanguageCode) , "LanguageCodeControl" :: Maybe (AudioLanguageCodeControl) , "RemixSettings" :: Maybe (RemixSettings) , "StreamName" :: Maybe (String) } ) -> AudioDescription
newAudioDescription'  customize = (AudioDescription <<< customize) { "AudioNormalizationSettings": Nothing, "AudioSourceName": Nothing, "AudioType": Nothing, "AudioTypeControl": Nothing, "CodecSettings": Nothing, "LanguageCode": Nothing, "LanguageCodeControl": Nothing, "RemixSettings": Nothing, "StreamName": Nothing }



-- | Choosing FOLLOW_INPUT will cause the ISO 639 language code of the output to follow the ISO 639 language code of the input. The language specified for languageCode' will be used when USE_CONFIGURED is selected or when FOLLOW_INPUT is selected but there is no ISO 639 language code specified by the input.
newtype AudioLanguageCodeControl = AudioLanguageCodeControl String
derive instance newtypeAudioLanguageCodeControl :: Newtype AudioLanguageCodeControl _
derive instance repGenericAudioLanguageCodeControl :: Generic AudioLanguageCodeControl _
instance showAudioLanguageCodeControl :: Show AudioLanguageCodeControl where show = genericShow
instance decodeAudioLanguageCodeControl :: Decode AudioLanguageCodeControl where decode = genericDecode options
instance encodeAudioLanguageCodeControl :: Encode AudioLanguageCodeControl where encode = genericEncode options



-- | Audio normalization algorithm to use. 1770-1 conforms to the CALM Act specification, 1770-2 conforms to the EBU R-128 specification.
newtype AudioNormalizationAlgorithm = AudioNormalizationAlgorithm String
derive instance newtypeAudioNormalizationAlgorithm :: Newtype AudioNormalizationAlgorithm _
derive instance repGenericAudioNormalizationAlgorithm :: Generic AudioNormalizationAlgorithm _
instance showAudioNormalizationAlgorithm :: Show AudioNormalizationAlgorithm where show = genericShow
instance decodeAudioNormalizationAlgorithm :: Decode AudioNormalizationAlgorithm where decode = genericDecode options
instance encodeAudioNormalizationAlgorithm :: Encode AudioNormalizationAlgorithm where encode = genericEncode options



-- | When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted.
newtype AudioNormalizationAlgorithmControl = AudioNormalizationAlgorithmControl String
derive instance newtypeAudioNormalizationAlgorithmControl :: Newtype AudioNormalizationAlgorithmControl _
derive instance repGenericAudioNormalizationAlgorithmControl :: Generic AudioNormalizationAlgorithmControl _
instance showAudioNormalizationAlgorithmControl :: Show AudioNormalizationAlgorithmControl where show = genericShow
instance decodeAudioNormalizationAlgorithmControl :: Decode AudioNormalizationAlgorithmControl where decode = genericDecode options
instance encodeAudioNormalizationAlgorithmControl :: Encode AudioNormalizationAlgorithmControl where encode = genericEncode options



-- | If set to LOG, log each output's audio track loudness to a CSV file.
newtype AudioNormalizationLoudnessLogging = AudioNormalizationLoudnessLogging String
derive instance newtypeAudioNormalizationLoudnessLogging :: Newtype AudioNormalizationLoudnessLogging _
derive instance repGenericAudioNormalizationLoudnessLogging :: Generic AudioNormalizationLoudnessLogging _
instance showAudioNormalizationLoudnessLogging :: Show AudioNormalizationLoudnessLogging where show = genericShow
instance decodeAudioNormalizationLoudnessLogging :: Decode AudioNormalizationLoudnessLogging where decode = genericDecode options
instance encodeAudioNormalizationLoudnessLogging :: Encode AudioNormalizationLoudnessLogging where encode = genericEncode options



-- | If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness.
newtype AudioNormalizationPeakCalculation = AudioNormalizationPeakCalculation String
derive instance newtypeAudioNormalizationPeakCalculation :: Newtype AudioNormalizationPeakCalculation _
derive instance repGenericAudioNormalizationPeakCalculation :: Generic AudioNormalizationPeakCalculation _
instance showAudioNormalizationPeakCalculation :: Show AudioNormalizationPeakCalculation where show = genericShow
instance decodeAudioNormalizationPeakCalculation :: Decode AudioNormalizationPeakCalculation where decode = genericDecode options
instance encodeAudioNormalizationPeakCalculation :: Encode AudioNormalizationPeakCalculation where encode = genericEncode options



-- | Advanced audio normalization settings.
newtype AudioNormalizationSettings = AudioNormalizationSettings 
  { "Algorithm" :: Maybe (AudioNormalizationAlgorithm)
  , "AlgorithmControl" :: Maybe (AudioNormalizationAlgorithmControl)
  , "CorrectionGateLevel" :: Maybe (Int)
  , "LoudnessLogging" :: Maybe (AudioNormalizationLoudnessLogging)
  , "PeakCalculation" :: Maybe (AudioNormalizationPeakCalculation)
  , "TargetLkfs" :: Maybe (Number)
  }
derive instance newtypeAudioNormalizationSettings :: Newtype AudioNormalizationSettings _
derive instance repGenericAudioNormalizationSettings :: Generic AudioNormalizationSettings _
instance showAudioNormalizationSettings :: Show AudioNormalizationSettings where show = genericShow
instance decodeAudioNormalizationSettings :: Decode AudioNormalizationSettings where decode = genericDecode options
instance encodeAudioNormalizationSettings :: Encode AudioNormalizationSettings where encode = genericEncode options

-- | Constructs AudioNormalizationSettings from required parameters
newAudioNormalizationSettings :: AudioNormalizationSettings
newAudioNormalizationSettings  = AudioNormalizationSettings { "Algorithm": Nothing, "AlgorithmControl": Nothing, "CorrectionGateLevel": Nothing, "LoudnessLogging": Nothing, "PeakCalculation": Nothing, "TargetLkfs": Nothing }

-- | Constructs AudioNormalizationSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAudioNormalizationSettings' :: ( { "Algorithm" :: Maybe (AudioNormalizationAlgorithm) , "AlgorithmControl" :: Maybe (AudioNormalizationAlgorithmControl) , "CorrectionGateLevel" :: Maybe (Int) , "LoudnessLogging" :: Maybe (AudioNormalizationLoudnessLogging) , "PeakCalculation" :: Maybe (AudioNormalizationPeakCalculation) , "TargetLkfs" :: Maybe (Number) } -> {"Algorithm" :: Maybe (AudioNormalizationAlgorithm) , "AlgorithmControl" :: Maybe (AudioNormalizationAlgorithmControl) , "CorrectionGateLevel" :: Maybe (Int) , "LoudnessLogging" :: Maybe (AudioNormalizationLoudnessLogging) , "PeakCalculation" :: Maybe (AudioNormalizationPeakCalculation) , "TargetLkfs" :: Maybe (Number) } ) -> AudioNormalizationSettings
newAudioNormalizationSettings'  customize = (AudioNormalizationSettings <<< customize) { "Algorithm": Nothing, "AlgorithmControl": Nothing, "CorrectionGateLevel": Nothing, "LoudnessLogging": Nothing, "PeakCalculation": Nothing, "TargetLkfs": Nothing }



-- | Selector for Audio
newtype AudioSelector = AudioSelector 
  { "DefaultSelection" :: Maybe (AudioDefaultSelection)
  , "ExternalAudioFileInput" :: Maybe (String)
  , "LanguageCode" :: Maybe (LanguageCode)
  , "Offset" :: Maybe (Int)
  , "Pids" :: Maybe (ListOf__integer)
  , "ProgramSelection" :: Maybe (Int)
  , "RemixSettings" :: Maybe (RemixSettings)
  , "SelectorType" :: Maybe (AudioSelectorType)
  , "Tracks" :: Maybe (ListOf__integer)
  }
derive instance newtypeAudioSelector :: Newtype AudioSelector _
derive instance repGenericAudioSelector :: Generic AudioSelector _
instance showAudioSelector :: Show AudioSelector where show = genericShow
instance decodeAudioSelector :: Decode AudioSelector where decode = genericDecode options
instance encodeAudioSelector :: Encode AudioSelector where encode = genericEncode options

-- | Constructs AudioSelector from required parameters
newAudioSelector :: AudioSelector
newAudioSelector  = AudioSelector { "DefaultSelection": Nothing, "ExternalAudioFileInput": Nothing, "LanguageCode": Nothing, "Offset": Nothing, "Pids": Nothing, "ProgramSelection": Nothing, "RemixSettings": Nothing, "SelectorType": Nothing, "Tracks": Nothing }

-- | Constructs AudioSelector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAudioSelector' :: ( { "DefaultSelection" :: Maybe (AudioDefaultSelection) , "ExternalAudioFileInput" :: Maybe (String) , "LanguageCode" :: Maybe (LanguageCode) , "Offset" :: Maybe (Int) , "Pids" :: Maybe (ListOf__integer) , "ProgramSelection" :: Maybe (Int) , "RemixSettings" :: Maybe (RemixSettings) , "SelectorType" :: Maybe (AudioSelectorType) , "Tracks" :: Maybe (ListOf__integer) } -> {"DefaultSelection" :: Maybe (AudioDefaultSelection) , "ExternalAudioFileInput" :: Maybe (String) , "LanguageCode" :: Maybe (LanguageCode) , "Offset" :: Maybe (Int) , "Pids" :: Maybe (ListOf__integer) , "ProgramSelection" :: Maybe (Int) , "RemixSettings" :: Maybe (RemixSettings) , "SelectorType" :: Maybe (AudioSelectorType) , "Tracks" :: Maybe (ListOf__integer) } ) -> AudioSelector
newAudioSelector'  customize = (AudioSelector <<< customize) { "DefaultSelection": Nothing, "ExternalAudioFileInput": Nothing, "LanguageCode": Nothing, "Offset": Nothing, "Pids": Nothing, "ProgramSelection": Nothing, "RemixSettings": Nothing, "SelectorType": Nothing, "Tracks": Nothing }



-- | Group of Audio Selectors
newtype AudioSelectorGroup = AudioSelectorGroup 
  { "AudioSelectorNames" :: Maybe (ListOf__string)
  }
derive instance newtypeAudioSelectorGroup :: Newtype AudioSelectorGroup _
derive instance repGenericAudioSelectorGroup :: Generic AudioSelectorGroup _
instance showAudioSelectorGroup :: Show AudioSelectorGroup where show = genericShow
instance decodeAudioSelectorGroup :: Decode AudioSelectorGroup where decode = genericDecode options
instance encodeAudioSelectorGroup :: Encode AudioSelectorGroup where encode = genericEncode options

-- | Constructs AudioSelectorGroup from required parameters
newAudioSelectorGroup :: AudioSelectorGroup
newAudioSelectorGroup  = AudioSelectorGroup { "AudioSelectorNames": Nothing }

-- | Constructs AudioSelectorGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAudioSelectorGroup' :: ( { "AudioSelectorNames" :: Maybe (ListOf__string) } -> {"AudioSelectorNames" :: Maybe (ListOf__string) } ) -> AudioSelectorGroup
newAudioSelectorGroup'  customize = (AudioSelectorGroup <<< customize) { "AudioSelectorNames": Nothing }



-- | Specifies the type of the audio selector.
newtype AudioSelectorType = AudioSelectorType String
derive instance newtypeAudioSelectorType :: Newtype AudioSelectorType _
derive instance repGenericAudioSelectorType :: Generic AudioSelectorType _
instance showAudioSelectorType :: Show AudioSelectorType where show = genericShow
instance decodeAudioSelectorType :: Decode AudioSelectorType where decode = genericDecode options
instance encodeAudioSelectorType :: Encode AudioSelectorType where encode = genericEncode options



-- | When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.
newtype AudioTypeControl = AudioTypeControl String
derive instance newtypeAudioTypeControl :: Newtype AudioTypeControl _
derive instance repGenericAudioTypeControl :: Generic AudioTypeControl _
instance showAudioTypeControl :: Show AudioTypeControl where show = genericShow
instance decodeAudioTypeControl :: Decode AudioTypeControl where decode = genericDecode options
instance encodeAudioTypeControl :: Encode AudioTypeControl where encode = genericEncode options



-- | Settings for Avail Blanking
newtype AvailBlanking = AvailBlanking 
  { "AvailBlankingImage" :: Maybe (String)
  }
derive instance newtypeAvailBlanking :: Newtype AvailBlanking _
derive instance repGenericAvailBlanking :: Generic AvailBlanking _
instance showAvailBlanking :: Show AvailBlanking where show = genericShow
instance decodeAvailBlanking :: Decode AvailBlanking where decode = genericDecode options
instance encodeAvailBlanking :: Encode AvailBlanking where encode = genericEncode options

-- | Constructs AvailBlanking from required parameters
newAvailBlanking :: AvailBlanking
newAvailBlanking  = AvailBlanking { "AvailBlankingImage": Nothing }

-- | Constructs AvailBlanking's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAvailBlanking' :: ( { "AvailBlankingImage" :: Maybe (String) } -> {"AvailBlankingImage" :: Maybe (String) } ) -> AvailBlanking
newAvailBlanking'  customize = (AvailBlanking <<< customize) { "AvailBlankingImage": Nothing }



-- | The service can't process your request because of a problem in the request. Please check your request form and syntax.
newtype BadRequestException = BadRequestException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where decode = genericDecode options
instance encodeBadRequestException :: Encode BadRequestException where encode = genericEncode options

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "Message": Nothing }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "Message": Nothing }



-- | Burn-In Destination Settings.
newtype BurninDestinationSettings = BurninDestinationSettings 
  { "Alignment" :: Maybe (BurninSubtitleAlignment)
  , "BackgroundColor" :: Maybe (BurninSubtitleBackgroundColor)
  , "BackgroundOpacity" :: Maybe (Int)
  , "FontColor" :: Maybe (BurninSubtitleFontColor)
  , "FontOpacity" :: Maybe (Int)
  , "FontResolution" :: Maybe (Int)
  , "FontSize" :: Maybe (Int)
  , "OutlineColor" :: Maybe (BurninSubtitleOutlineColor)
  , "OutlineSize" :: Maybe (Int)
  , "ShadowColor" :: Maybe (BurninSubtitleShadowColor)
  , "ShadowOpacity" :: Maybe (Int)
  , "ShadowXOffset" :: Maybe (Int)
  , "ShadowYOffset" :: Maybe (Int)
  , "TeletextSpacing" :: Maybe (BurninSubtitleTeletextSpacing)
  , "XPosition" :: Maybe (Int)
  , "YPosition" :: Maybe (Int)
  }
derive instance newtypeBurninDestinationSettings :: Newtype BurninDestinationSettings _
derive instance repGenericBurninDestinationSettings :: Generic BurninDestinationSettings _
instance showBurninDestinationSettings :: Show BurninDestinationSettings where show = genericShow
instance decodeBurninDestinationSettings :: Decode BurninDestinationSettings where decode = genericDecode options
instance encodeBurninDestinationSettings :: Encode BurninDestinationSettings where encode = genericEncode options

-- | Constructs BurninDestinationSettings from required parameters
newBurninDestinationSettings :: BurninDestinationSettings
newBurninDestinationSettings  = BurninDestinationSettings { "Alignment": Nothing, "BackgroundColor": Nothing, "BackgroundOpacity": Nothing, "FontColor": Nothing, "FontOpacity": Nothing, "FontResolution": Nothing, "FontSize": Nothing, "OutlineColor": Nothing, "OutlineSize": Nothing, "ShadowColor": Nothing, "ShadowOpacity": Nothing, "ShadowXOffset": Nothing, "ShadowYOffset": Nothing, "TeletextSpacing": Nothing, "XPosition": Nothing, "YPosition": Nothing }

-- | Constructs BurninDestinationSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBurninDestinationSettings' :: ( { "Alignment" :: Maybe (BurninSubtitleAlignment) , "BackgroundColor" :: Maybe (BurninSubtitleBackgroundColor) , "BackgroundOpacity" :: Maybe (Int) , "FontColor" :: Maybe (BurninSubtitleFontColor) , "FontOpacity" :: Maybe (Int) , "FontResolution" :: Maybe (Int) , "FontSize" :: Maybe (Int) , "OutlineColor" :: Maybe (BurninSubtitleOutlineColor) , "OutlineSize" :: Maybe (Int) , "ShadowColor" :: Maybe (BurninSubtitleShadowColor) , "ShadowOpacity" :: Maybe (Int) , "ShadowXOffset" :: Maybe (Int) , "ShadowYOffset" :: Maybe (Int) , "TeletextSpacing" :: Maybe (BurninSubtitleTeletextSpacing) , "XPosition" :: Maybe (Int) , "YPosition" :: Maybe (Int) } -> {"Alignment" :: Maybe (BurninSubtitleAlignment) , "BackgroundColor" :: Maybe (BurninSubtitleBackgroundColor) , "BackgroundOpacity" :: Maybe (Int) , "FontColor" :: Maybe (BurninSubtitleFontColor) , "FontOpacity" :: Maybe (Int) , "FontResolution" :: Maybe (Int) , "FontSize" :: Maybe (Int) , "OutlineColor" :: Maybe (BurninSubtitleOutlineColor) , "OutlineSize" :: Maybe (Int) , "ShadowColor" :: Maybe (BurninSubtitleShadowColor) , "ShadowOpacity" :: Maybe (Int) , "ShadowXOffset" :: Maybe (Int) , "ShadowYOffset" :: Maybe (Int) , "TeletextSpacing" :: Maybe (BurninSubtitleTeletextSpacing) , "XPosition" :: Maybe (Int) , "YPosition" :: Maybe (Int) } ) -> BurninDestinationSettings
newBurninDestinationSettings'  customize = (BurninDestinationSettings <<< customize) { "Alignment": Nothing, "BackgroundColor": Nothing, "BackgroundOpacity": Nothing, "FontColor": Nothing, "FontOpacity": Nothing, "FontResolution": Nothing, "FontSize": Nothing, "OutlineColor": Nothing, "OutlineSize": Nothing, "ShadowColor": Nothing, "ShadowOpacity": Nothing, "ShadowXOffset": Nothing, "ShadowYOffset": Nothing, "TeletextSpacing": Nothing, "XPosition": Nothing, "YPosition": Nothing }



-- | If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
newtype BurninSubtitleAlignment = BurninSubtitleAlignment String
derive instance newtypeBurninSubtitleAlignment :: Newtype BurninSubtitleAlignment _
derive instance repGenericBurninSubtitleAlignment :: Generic BurninSubtitleAlignment _
instance showBurninSubtitleAlignment :: Show BurninSubtitleAlignment where show = genericShow
instance decodeBurninSubtitleAlignment :: Decode BurninSubtitleAlignment where decode = genericDecode options
instance encodeBurninSubtitleAlignment :: Encode BurninSubtitleAlignment where encode = genericEncode options



-- | Specifies the color of the rectangle behind the captions.
-- | All burn-in and DVB-Sub font settings must match.
newtype BurninSubtitleBackgroundColor = BurninSubtitleBackgroundColor String
derive instance newtypeBurninSubtitleBackgroundColor :: Newtype BurninSubtitleBackgroundColor _
derive instance repGenericBurninSubtitleBackgroundColor :: Generic BurninSubtitleBackgroundColor _
instance showBurninSubtitleBackgroundColor :: Show BurninSubtitleBackgroundColor where show = genericShow
instance decodeBurninSubtitleBackgroundColor :: Decode BurninSubtitleBackgroundColor where decode = genericDecode options
instance encodeBurninSubtitleBackgroundColor :: Encode BurninSubtitleBackgroundColor where encode = genericEncode options



-- | Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
newtype BurninSubtitleFontColor = BurninSubtitleFontColor String
derive instance newtypeBurninSubtitleFontColor :: Newtype BurninSubtitleFontColor _
derive instance repGenericBurninSubtitleFontColor :: Generic BurninSubtitleFontColor _
instance showBurninSubtitleFontColor :: Show BurninSubtitleFontColor where show = genericShow
instance decodeBurninSubtitleFontColor :: Decode BurninSubtitleFontColor where decode = genericDecode options
instance encodeBurninSubtitleFontColor :: Encode BurninSubtitleFontColor where encode = genericEncode options



-- | Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
newtype BurninSubtitleOutlineColor = BurninSubtitleOutlineColor String
derive instance newtypeBurninSubtitleOutlineColor :: Newtype BurninSubtitleOutlineColor _
derive instance repGenericBurninSubtitleOutlineColor :: Generic BurninSubtitleOutlineColor _
instance showBurninSubtitleOutlineColor :: Show BurninSubtitleOutlineColor where show = genericShow
instance decodeBurninSubtitleOutlineColor :: Decode BurninSubtitleOutlineColor where decode = genericDecode options
instance encodeBurninSubtitleOutlineColor :: Encode BurninSubtitleOutlineColor where encode = genericEncode options



-- | Specifies the color of the shadow cast by the captions.
-- | All burn-in and DVB-Sub font settings must match.
newtype BurninSubtitleShadowColor = BurninSubtitleShadowColor String
derive instance newtypeBurninSubtitleShadowColor :: Newtype BurninSubtitleShadowColor _
derive instance repGenericBurninSubtitleShadowColor :: Generic BurninSubtitleShadowColor _
instance showBurninSubtitleShadowColor :: Show BurninSubtitleShadowColor where show = genericShow
instance decodeBurninSubtitleShadowColor :: Decode BurninSubtitleShadowColor where decode = genericDecode options
instance encodeBurninSubtitleShadowColor :: Encode BurninSubtitleShadowColor where encode = genericEncode options



-- | Controls whether a fixed grid size or proportional font spacing will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
newtype BurninSubtitleTeletextSpacing = BurninSubtitleTeletextSpacing String
derive instance newtypeBurninSubtitleTeletextSpacing :: Newtype BurninSubtitleTeletextSpacing _
derive instance repGenericBurninSubtitleTeletextSpacing :: Generic BurninSubtitleTeletextSpacing _
instance showBurninSubtitleTeletextSpacing :: Show BurninSubtitleTeletextSpacing where show = genericShow
instance decodeBurninSubtitleTeletextSpacing :: Decode BurninSubtitleTeletextSpacing where decode = genericDecode options
instance encodeBurninSubtitleTeletextSpacing :: Encode BurninSubtitleTeletextSpacing where encode = genericEncode options



newtype CancelJobRequest = CancelJobRequest 
  { "Id" :: (String)
  }
derive instance newtypeCancelJobRequest :: Newtype CancelJobRequest _
derive instance repGenericCancelJobRequest :: Generic CancelJobRequest _
instance showCancelJobRequest :: Show CancelJobRequest where show = genericShow
instance decodeCancelJobRequest :: Decode CancelJobRequest where decode = genericDecode options
instance encodeCancelJobRequest :: Encode CancelJobRequest where encode = genericEncode options

-- | Constructs CancelJobRequest from required parameters
newCancelJobRequest :: String -> CancelJobRequest
newCancelJobRequest _Id = CancelJobRequest { "Id": _Id }

-- | Constructs CancelJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelJobRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> CancelJobRequest
newCancelJobRequest' _Id customize = (CancelJobRequest <<< customize) { "Id": _Id }



newtype CancelJobResponse = CancelJobResponse Types.NoArguments
derive instance newtypeCancelJobResponse :: Newtype CancelJobResponse _
derive instance repGenericCancelJobResponse :: Generic CancelJobResponse _
instance showCancelJobResponse :: Show CancelJobResponse where show = genericShow
instance decodeCancelJobResponse :: Decode CancelJobResponse where decode = genericDecode options
instance encodeCancelJobResponse :: Encode CancelJobResponse where encode = genericEncode options



-- | Description of Caption output
newtype CaptionDescription = CaptionDescription 
  { "CaptionSelectorName" :: Maybe (String)
  , "DestinationSettings" :: Maybe (CaptionDestinationSettings)
  , "LanguageCode" :: Maybe (LanguageCode)
  , "LanguageDescription" :: Maybe (String)
  }
derive instance newtypeCaptionDescription :: Newtype CaptionDescription _
derive instance repGenericCaptionDescription :: Generic CaptionDescription _
instance showCaptionDescription :: Show CaptionDescription where show = genericShow
instance decodeCaptionDescription :: Decode CaptionDescription where decode = genericDecode options
instance encodeCaptionDescription :: Encode CaptionDescription where encode = genericEncode options

-- | Constructs CaptionDescription from required parameters
newCaptionDescription :: CaptionDescription
newCaptionDescription  = CaptionDescription { "CaptionSelectorName": Nothing, "DestinationSettings": Nothing, "LanguageCode": Nothing, "LanguageDescription": Nothing }

-- | Constructs CaptionDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCaptionDescription' :: ( { "CaptionSelectorName" :: Maybe (String) , "DestinationSettings" :: Maybe (CaptionDestinationSettings) , "LanguageCode" :: Maybe (LanguageCode) , "LanguageDescription" :: Maybe (String) } -> {"CaptionSelectorName" :: Maybe (String) , "DestinationSettings" :: Maybe (CaptionDestinationSettings) , "LanguageCode" :: Maybe (LanguageCode) , "LanguageDescription" :: Maybe (String) } ) -> CaptionDescription
newCaptionDescription'  customize = (CaptionDescription <<< customize) { "CaptionSelectorName": Nothing, "DestinationSettings": Nothing, "LanguageCode": Nothing, "LanguageDescription": Nothing }



-- | Caption Description for preset
newtype CaptionDescriptionPreset = CaptionDescriptionPreset 
  { "DestinationSettings" :: Maybe (CaptionDestinationSettings)
  , "LanguageCode" :: Maybe (LanguageCode)
  , "LanguageDescription" :: Maybe (String)
  }
derive instance newtypeCaptionDescriptionPreset :: Newtype CaptionDescriptionPreset _
derive instance repGenericCaptionDescriptionPreset :: Generic CaptionDescriptionPreset _
instance showCaptionDescriptionPreset :: Show CaptionDescriptionPreset where show = genericShow
instance decodeCaptionDescriptionPreset :: Decode CaptionDescriptionPreset where decode = genericDecode options
instance encodeCaptionDescriptionPreset :: Encode CaptionDescriptionPreset where encode = genericEncode options

-- | Constructs CaptionDescriptionPreset from required parameters
newCaptionDescriptionPreset :: CaptionDescriptionPreset
newCaptionDescriptionPreset  = CaptionDescriptionPreset { "DestinationSettings": Nothing, "LanguageCode": Nothing, "LanguageDescription": Nothing }

-- | Constructs CaptionDescriptionPreset's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCaptionDescriptionPreset' :: ( { "DestinationSettings" :: Maybe (CaptionDestinationSettings) , "LanguageCode" :: Maybe (LanguageCode) , "LanguageDescription" :: Maybe (String) } -> {"DestinationSettings" :: Maybe (CaptionDestinationSettings) , "LanguageCode" :: Maybe (LanguageCode) , "LanguageDescription" :: Maybe (String) } ) -> CaptionDescriptionPreset
newCaptionDescriptionPreset'  customize = (CaptionDescriptionPreset <<< customize) { "DestinationSettings": Nothing, "LanguageCode": Nothing, "LanguageDescription": Nothing }



-- | Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext.
newtype CaptionDestinationSettings = CaptionDestinationSettings 
  { "BurninDestinationSettings" :: Maybe (BurninDestinationSettings)
  , "DestinationType" :: Maybe (CaptionDestinationType)
  , "DvbSubDestinationSettings" :: Maybe (DvbSubDestinationSettings)
  , "SccDestinationSettings" :: Maybe (SccDestinationSettings)
  , "TeletextDestinationSettings" :: Maybe (TeletextDestinationSettings)
  , "TtmlDestinationSettings" :: Maybe (TtmlDestinationSettings)
  }
derive instance newtypeCaptionDestinationSettings :: Newtype CaptionDestinationSettings _
derive instance repGenericCaptionDestinationSettings :: Generic CaptionDestinationSettings _
instance showCaptionDestinationSettings :: Show CaptionDestinationSettings where show = genericShow
instance decodeCaptionDestinationSettings :: Decode CaptionDestinationSettings where decode = genericDecode options
instance encodeCaptionDestinationSettings :: Encode CaptionDestinationSettings where encode = genericEncode options

-- | Constructs CaptionDestinationSettings from required parameters
newCaptionDestinationSettings :: CaptionDestinationSettings
newCaptionDestinationSettings  = CaptionDestinationSettings { "BurninDestinationSettings": Nothing, "DestinationType": Nothing, "DvbSubDestinationSettings": Nothing, "SccDestinationSettings": Nothing, "TeletextDestinationSettings": Nothing, "TtmlDestinationSettings": Nothing }

-- | Constructs CaptionDestinationSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCaptionDestinationSettings' :: ( { "BurninDestinationSettings" :: Maybe (BurninDestinationSettings) , "DestinationType" :: Maybe (CaptionDestinationType) , "DvbSubDestinationSettings" :: Maybe (DvbSubDestinationSettings) , "SccDestinationSettings" :: Maybe (SccDestinationSettings) , "TeletextDestinationSettings" :: Maybe (TeletextDestinationSettings) , "TtmlDestinationSettings" :: Maybe (TtmlDestinationSettings) } -> {"BurninDestinationSettings" :: Maybe (BurninDestinationSettings) , "DestinationType" :: Maybe (CaptionDestinationType) , "DvbSubDestinationSettings" :: Maybe (DvbSubDestinationSettings) , "SccDestinationSettings" :: Maybe (SccDestinationSettings) , "TeletextDestinationSettings" :: Maybe (TeletextDestinationSettings) , "TtmlDestinationSettings" :: Maybe (TtmlDestinationSettings) } ) -> CaptionDestinationSettings
newCaptionDestinationSettings'  customize = (CaptionDestinationSettings <<< customize) { "BurninDestinationSettings": Nothing, "DestinationType": Nothing, "DvbSubDestinationSettings": Nothing, "SccDestinationSettings": Nothing, "TeletextDestinationSettings": Nothing, "TtmlDestinationSettings": Nothing }



-- | Type of Caption output, including Burn-In, Embedded, SCC, SRT, TTML, WebVTT, DVB-Sub, Teletext.
newtype CaptionDestinationType = CaptionDestinationType String
derive instance newtypeCaptionDestinationType :: Newtype CaptionDestinationType _
derive instance repGenericCaptionDestinationType :: Generic CaptionDestinationType _
instance showCaptionDestinationType :: Show CaptionDestinationType where show = genericShow
instance decodeCaptionDestinationType :: Decode CaptionDestinationType where decode = genericDecode options
instance encodeCaptionDestinationType :: Encode CaptionDestinationType where encode = genericEncode options



-- | Caption inputs to be mapped to caption outputs.
newtype CaptionSelector = CaptionSelector 
  { "LanguageCode" :: Maybe (LanguageCode)
  , "SourceSettings" :: Maybe (CaptionSourceSettings)
  }
derive instance newtypeCaptionSelector :: Newtype CaptionSelector _
derive instance repGenericCaptionSelector :: Generic CaptionSelector _
instance showCaptionSelector :: Show CaptionSelector where show = genericShow
instance decodeCaptionSelector :: Decode CaptionSelector where decode = genericDecode options
instance encodeCaptionSelector :: Encode CaptionSelector where encode = genericEncode options

-- | Constructs CaptionSelector from required parameters
newCaptionSelector :: CaptionSelector
newCaptionSelector  = CaptionSelector { "LanguageCode": Nothing, "SourceSettings": Nothing }

-- | Constructs CaptionSelector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCaptionSelector' :: ( { "LanguageCode" :: Maybe (LanguageCode) , "SourceSettings" :: Maybe (CaptionSourceSettings) } -> {"LanguageCode" :: Maybe (LanguageCode) , "SourceSettings" :: Maybe (CaptionSourceSettings) } ) -> CaptionSelector
newCaptionSelector'  customize = (CaptionSelector <<< customize) { "LanguageCode": Nothing, "SourceSettings": Nothing }



-- | Source settings (SourceSettings) contains the group of settings for captions in the input.
newtype CaptionSourceSettings = CaptionSourceSettings 
  { "AncillarySourceSettings" :: Maybe (AncillarySourceSettings)
  , "DvbSubSourceSettings" :: Maybe (DvbSubSourceSettings)
  , "EmbeddedSourceSettings" :: Maybe (EmbeddedSourceSettings)
  , "FileSourceSettings" :: Maybe (FileSourceSettings)
  , "SourceType" :: Maybe (CaptionSourceType)
  , "TeletextSourceSettings" :: Maybe (TeletextSourceSettings)
  }
derive instance newtypeCaptionSourceSettings :: Newtype CaptionSourceSettings _
derive instance repGenericCaptionSourceSettings :: Generic CaptionSourceSettings _
instance showCaptionSourceSettings :: Show CaptionSourceSettings where show = genericShow
instance decodeCaptionSourceSettings :: Decode CaptionSourceSettings where decode = genericDecode options
instance encodeCaptionSourceSettings :: Encode CaptionSourceSettings where encode = genericEncode options

-- | Constructs CaptionSourceSettings from required parameters
newCaptionSourceSettings :: CaptionSourceSettings
newCaptionSourceSettings  = CaptionSourceSettings { "AncillarySourceSettings": Nothing, "DvbSubSourceSettings": Nothing, "EmbeddedSourceSettings": Nothing, "FileSourceSettings": Nothing, "SourceType": Nothing, "TeletextSourceSettings": Nothing }

-- | Constructs CaptionSourceSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCaptionSourceSettings' :: ( { "AncillarySourceSettings" :: Maybe (AncillarySourceSettings) , "DvbSubSourceSettings" :: Maybe (DvbSubSourceSettings) , "EmbeddedSourceSettings" :: Maybe (EmbeddedSourceSettings) , "FileSourceSettings" :: Maybe (FileSourceSettings) , "SourceType" :: Maybe (CaptionSourceType) , "TeletextSourceSettings" :: Maybe (TeletextSourceSettings) } -> {"AncillarySourceSettings" :: Maybe (AncillarySourceSettings) , "DvbSubSourceSettings" :: Maybe (DvbSubSourceSettings) , "EmbeddedSourceSettings" :: Maybe (EmbeddedSourceSettings) , "FileSourceSettings" :: Maybe (FileSourceSettings) , "SourceType" :: Maybe (CaptionSourceType) , "TeletextSourceSettings" :: Maybe (TeletextSourceSettings) } ) -> CaptionSourceSettings
newCaptionSourceSettings'  customize = (CaptionSourceSettings <<< customize) { "AncillarySourceSettings": Nothing, "DvbSubSourceSettings": Nothing, "EmbeddedSourceSettings": Nothing, "FileSourceSettings": Nothing, "SourceType": Nothing, "TeletextSourceSettings": Nothing }



-- | Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format.
newtype CaptionSourceType = CaptionSourceType String
derive instance newtypeCaptionSourceType :: Newtype CaptionSourceType _
derive instance repGenericCaptionSourceType :: Generic CaptionSourceType _
instance showCaptionSourceType :: Show CaptionSourceType where show = genericShow
instance decodeCaptionSourceType :: Decode CaptionSourceType where decode = genericDecode options
instance encodeCaptionSourceType :: Encode CaptionSourceType where encode = genericEncode options



-- | Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel. Units are in dB. Acceptable values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification).
newtype ChannelMapping = ChannelMapping 
  { "OutputChannels" :: Maybe (ListOfOutputChannelMapping)
  }
derive instance newtypeChannelMapping :: Newtype ChannelMapping _
derive instance repGenericChannelMapping :: Generic ChannelMapping _
instance showChannelMapping :: Show ChannelMapping where show = genericShow
instance decodeChannelMapping :: Decode ChannelMapping where decode = genericDecode options
instance encodeChannelMapping :: Encode ChannelMapping where encode = genericEncode options

-- | Constructs ChannelMapping from required parameters
newChannelMapping :: ChannelMapping
newChannelMapping  = ChannelMapping { "OutputChannels": Nothing }

-- | Constructs ChannelMapping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChannelMapping' :: ( { "OutputChannels" :: Maybe (ListOfOutputChannelMapping) } -> {"OutputChannels" :: Maybe (ListOfOutputChannelMapping) } ) -> ChannelMapping
newChannelMapping'  customize = (ChannelMapping <<< customize) { "OutputChannels": Nothing }



-- | Settings for color correction.
newtype ColorCorrector = ColorCorrector 
  { "Brightness" :: Maybe (Int)
  , "ColorSpaceConversion" :: Maybe (ColorSpaceConversion)
  , "Contrast" :: Maybe (Int)
  , "Hdr10Metadata" :: Maybe (Hdr10Metadata)
  , "Hue" :: Maybe (Int)
  , "Saturation" :: Maybe (Int)
  }
derive instance newtypeColorCorrector :: Newtype ColorCorrector _
derive instance repGenericColorCorrector :: Generic ColorCorrector _
instance showColorCorrector :: Show ColorCorrector where show = genericShow
instance decodeColorCorrector :: Decode ColorCorrector where decode = genericDecode options
instance encodeColorCorrector :: Encode ColorCorrector where encode = genericEncode options

-- | Constructs ColorCorrector from required parameters
newColorCorrector :: ColorCorrector
newColorCorrector  = ColorCorrector { "Brightness": Nothing, "ColorSpaceConversion": Nothing, "Contrast": Nothing, "Hdr10Metadata": Nothing, "Hue": Nothing, "Saturation": Nothing }

-- | Constructs ColorCorrector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newColorCorrector' :: ( { "Brightness" :: Maybe (Int) , "ColorSpaceConversion" :: Maybe (ColorSpaceConversion) , "Contrast" :: Maybe (Int) , "Hdr10Metadata" :: Maybe (Hdr10Metadata) , "Hue" :: Maybe (Int) , "Saturation" :: Maybe (Int) } -> {"Brightness" :: Maybe (Int) , "ColorSpaceConversion" :: Maybe (ColorSpaceConversion) , "Contrast" :: Maybe (Int) , "Hdr10Metadata" :: Maybe (Hdr10Metadata) , "Hue" :: Maybe (Int) , "Saturation" :: Maybe (Int) } ) -> ColorCorrector
newColorCorrector'  customize = (ColorCorrector <<< customize) { "Brightness": Nothing, "ColorSpaceConversion": Nothing, "Contrast": Nothing, "Hdr10Metadata": Nothing, "Hue": Nothing, "Saturation": Nothing }



-- | Enable Insert color metadata (ColorMetadata) to include color metadata in this output. This setting is enabled by default.
newtype ColorMetadata = ColorMetadata String
derive instance newtypeColorMetadata :: Newtype ColorMetadata _
derive instance repGenericColorMetadata :: Generic ColorMetadata _
instance showColorMetadata :: Show ColorMetadata where show = genericShow
instance decodeColorMetadata :: Decode ColorMetadata where decode = genericDecode options
instance encodeColorMetadata :: Encode ColorMetadata where encode = genericEncode options



-- | Specifies the colorspace of an input. This setting works in tandem with "Color Corrector":#color_corrector > color_space_conversion to determine if any conversion will be performed.
newtype ColorSpace = ColorSpace String
derive instance newtypeColorSpace :: Newtype ColorSpace _
derive instance repGenericColorSpace :: Generic ColorSpace _
instance showColorSpace :: Show ColorSpace where show = genericShow
instance decodeColorSpace :: Decode ColorSpace where decode = genericDecode options
instance encodeColorSpace :: Encode ColorSpace where encode = genericEncode options



-- | Determines if colorspace conversion will be performed. If set to _None_, no conversion will be performed. If _Force 601_ or _Force 709_ are selected, conversion will be performed for inputs with differing colorspaces. An input's colorspace can be specified explicitly in the "Video Selector":#inputs-video_selector if necessary.
newtype ColorSpaceConversion = ColorSpaceConversion String
derive instance newtypeColorSpaceConversion :: Newtype ColorSpaceConversion _
derive instance repGenericColorSpaceConversion :: Generic ColorSpaceConversion _
instance showColorSpaceConversion :: Show ColorSpaceConversion where show = genericShow
instance decodeColorSpaceConversion :: Decode ColorSpaceConversion where decode = genericDecode options
instance encodeColorSpaceConversion :: Encode ColorSpaceConversion where encode = genericEncode options



-- | There are two sources for color metadata, the input file and the job configuration. This enum controls which takes precedence. FORCE: System will use color metadata supplied by user, if any. If the user does not supply color metadata the system will use data from the source. FALLBACK: System will use color metadata from the source. If source has no color metadata, the system will use user-supplied color metadata values if available.
newtype ColorSpaceUsage = ColorSpaceUsage String
derive instance newtypeColorSpaceUsage :: Newtype ColorSpaceUsage _
derive instance repGenericColorSpaceUsage :: Generic ColorSpaceUsage _
instance showColorSpaceUsage :: Show ColorSpaceUsage where show = genericShow
instance decodeColorSpaceUsage :: Decode ColorSpaceUsage where decode = genericDecode options
instance encodeColorSpaceUsage :: Encode ColorSpaceUsage where encode = genericEncode options



-- | The service could not complete your request because there is a conflict with the current state of the resource.
newtype ConflictException = ConflictException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where show = genericShow
instance decodeConflictException :: Decode ConflictException where decode = genericDecode options
instance encodeConflictException :: Encode ConflictException where encode = genericEncode options

-- | Constructs ConflictException from required parameters
newConflictException :: ConflictException
newConflictException  = ConflictException { "Message": Nothing }

-- | Constructs ConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> ConflictException
newConflictException'  customize = (ConflictException <<< customize) { "Message": Nothing }



-- | Container specific settings.
newtype ContainerSettings = ContainerSettings 
  { "Container" :: Maybe (ContainerType)
  , "F4vSettings" :: Maybe (F4vSettings)
  , "M2tsSettings" :: Maybe (M2tsSettings)
  , "M3u8Settings" :: Maybe (M3u8Settings)
  , "MovSettings" :: Maybe (MovSettings)
  , "Mp4Settings" :: Maybe (Mp4Settings)
  }
derive instance newtypeContainerSettings :: Newtype ContainerSettings _
derive instance repGenericContainerSettings :: Generic ContainerSettings _
instance showContainerSettings :: Show ContainerSettings where show = genericShow
instance decodeContainerSettings :: Decode ContainerSettings where decode = genericDecode options
instance encodeContainerSettings :: Encode ContainerSettings where encode = genericEncode options

-- | Constructs ContainerSettings from required parameters
newContainerSettings :: ContainerSettings
newContainerSettings  = ContainerSettings { "Container": Nothing, "F4vSettings": Nothing, "M2tsSettings": Nothing, "M3u8Settings": Nothing, "MovSettings": Nothing, "Mp4Settings": Nothing }

-- | Constructs ContainerSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerSettings' :: ( { "Container" :: Maybe (ContainerType) , "F4vSettings" :: Maybe (F4vSettings) , "M2tsSettings" :: Maybe (M2tsSettings) , "M3u8Settings" :: Maybe (M3u8Settings) , "MovSettings" :: Maybe (MovSettings) , "Mp4Settings" :: Maybe (Mp4Settings) } -> {"Container" :: Maybe (ContainerType) , "F4vSettings" :: Maybe (F4vSettings) , "M2tsSettings" :: Maybe (M2tsSettings) , "M3u8Settings" :: Maybe (M3u8Settings) , "MovSettings" :: Maybe (MovSettings) , "Mp4Settings" :: Maybe (Mp4Settings) } ) -> ContainerSettings
newContainerSettings'  customize = (ContainerSettings <<< customize) { "Container": Nothing, "F4vSettings": Nothing, "M2tsSettings": Nothing, "M3u8Settings": Nothing, "MovSettings": Nothing, "Mp4Settings": Nothing }



-- | Container for this output. Some containers require a container settings object. If not specified, the default object will be created.
newtype ContainerType = ContainerType String
derive instance newtypeContainerType :: Newtype ContainerType _
derive instance repGenericContainerType :: Generic ContainerType _
instance showContainerType :: Show ContainerType where show = genericShow
instance decodeContainerType :: Decode ContainerType where decode = genericDecode options
instance encodeContainerType :: Encode ContainerType where encode = genericEncode options



newtype CreateJobRequest = CreateJobRequest 
  { "ClientRequestToken" :: Maybe (String)
  , "JobTemplate" :: Maybe (String)
  , "Queue" :: Maybe (String)
  , "Role" :: Maybe (String)
  , "Settings" :: Maybe (JobSettings)
  , "UserMetadata" :: Maybe (MapOf__string)
  }
derive instance newtypeCreateJobRequest :: Newtype CreateJobRequest _
derive instance repGenericCreateJobRequest :: Generic CreateJobRequest _
instance showCreateJobRequest :: Show CreateJobRequest where show = genericShow
instance decodeCreateJobRequest :: Decode CreateJobRequest where decode = genericDecode options
instance encodeCreateJobRequest :: Encode CreateJobRequest where encode = genericEncode options

-- | Constructs CreateJobRequest from required parameters
newCreateJobRequest :: CreateJobRequest
newCreateJobRequest  = CreateJobRequest { "ClientRequestToken": Nothing, "JobTemplate": Nothing, "Queue": Nothing, "Role": Nothing, "Settings": Nothing, "UserMetadata": Nothing }

-- | Constructs CreateJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobRequest' :: ( { "ClientRequestToken" :: Maybe (String) , "JobTemplate" :: Maybe (String) , "Queue" :: Maybe (String) , "Role" :: Maybe (String) , "Settings" :: Maybe (JobSettings) , "UserMetadata" :: Maybe (MapOf__string) } -> {"ClientRequestToken" :: Maybe (String) , "JobTemplate" :: Maybe (String) , "Queue" :: Maybe (String) , "Role" :: Maybe (String) , "Settings" :: Maybe (JobSettings) , "UserMetadata" :: Maybe (MapOf__string) } ) -> CreateJobRequest
newCreateJobRequest'  customize = (CreateJobRequest <<< customize) { "ClientRequestToken": Nothing, "JobTemplate": Nothing, "Queue": Nothing, "Role": Nothing, "Settings": Nothing, "UserMetadata": Nothing }



newtype CreateJobResponse = CreateJobResponse 
  { "Job" :: Maybe (Job)
  }
derive instance newtypeCreateJobResponse :: Newtype CreateJobResponse _
derive instance repGenericCreateJobResponse :: Generic CreateJobResponse _
instance showCreateJobResponse :: Show CreateJobResponse where show = genericShow
instance decodeCreateJobResponse :: Decode CreateJobResponse where decode = genericDecode options
instance encodeCreateJobResponse :: Encode CreateJobResponse where encode = genericEncode options

-- | Constructs CreateJobResponse from required parameters
newCreateJobResponse :: CreateJobResponse
newCreateJobResponse  = CreateJobResponse { "Job": Nothing }

-- | Constructs CreateJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobResponse' :: ( { "Job" :: Maybe (Job) } -> {"Job" :: Maybe (Job) } ) -> CreateJobResponse
newCreateJobResponse'  customize = (CreateJobResponse <<< customize) { "Job": Nothing }



newtype CreateJobTemplateRequest = CreateJobTemplateRequest 
  { "Category" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "Queue" :: Maybe (String)
  , "Settings" :: Maybe (JobTemplateSettings)
  }
derive instance newtypeCreateJobTemplateRequest :: Newtype CreateJobTemplateRequest _
derive instance repGenericCreateJobTemplateRequest :: Generic CreateJobTemplateRequest _
instance showCreateJobTemplateRequest :: Show CreateJobTemplateRequest where show = genericShow
instance decodeCreateJobTemplateRequest :: Decode CreateJobTemplateRequest where decode = genericDecode options
instance encodeCreateJobTemplateRequest :: Encode CreateJobTemplateRequest where encode = genericEncode options

-- | Constructs CreateJobTemplateRequest from required parameters
newCreateJobTemplateRequest :: CreateJobTemplateRequest
newCreateJobTemplateRequest  = CreateJobTemplateRequest { "Category": Nothing, "Description": Nothing, "Name": Nothing, "Queue": Nothing, "Settings": Nothing }

-- | Constructs CreateJobTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobTemplateRequest' :: ( { "Category" :: Maybe (String) , "Description" :: Maybe (String) , "Name" :: Maybe (String) , "Queue" :: Maybe (String) , "Settings" :: Maybe (JobTemplateSettings) } -> {"Category" :: Maybe (String) , "Description" :: Maybe (String) , "Name" :: Maybe (String) , "Queue" :: Maybe (String) , "Settings" :: Maybe (JobTemplateSettings) } ) -> CreateJobTemplateRequest
newCreateJobTemplateRequest'  customize = (CreateJobTemplateRequest <<< customize) { "Category": Nothing, "Description": Nothing, "Name": Nothing, "Queue": Nothing, "Settings": Nothing }



newtype CreateJobTemplateResponse = CreateJobTemplateResponse 
  { "JobTemplate" :: Maybe (JobTemplate)
  }
derive instance newtypeCreateJobTemplateResponse :: Newtype CreateJobTemplateResponse _
derive instance repGenericCreateJobTemplateResponse :: Generic CreateJobTemplateResponse _
instance showCreateJobTemplateResponse :: Show CreateJobTemplateResponse where show = genericShow
instance decodeCreateJobTemplateResponse :: Decode CreateJobTemplateResponse where decode = genericDecode options
instance encodeCreateJobTemplateResponse :: Encode CreateJobTemplateResponse where encode = genericEncode options

-- | Constructs CreateJobTemplateResponse from required parameters
newCreateJobTemplateResponse :: CreateJobTemplateResponse
newCreateJobTemplateResponse  = CreateJobTemplateResponse { "JobTemplate": Nothing }

-- | Constructs CreateJobTemplateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobTemplateResponse' :: ( { "JobTemplate" :: Maybe (JobTemplate) } -> {"JobTemplate" :: Maybe (JobTemplate) } ) -> CreateJobTemplateResponse
newCreateJobTemplateResponse'  customize = (CreateJobTemplateResponse <<< customize) { "JobTemplate": Nothing }



newtype CreatePresetRequest = CreatePresetRequest 
  { "Category" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "Settings" :: Maybe (PresetSettings)
  }
derive instance newtypeCreatePresetRequest :: Newtype CreatePresetRequest _
derive instance repGenericCreatePresetRequest :: Generic CreatePresetRequest _
instance showCreatePresetRequest :: Show CreatePresetRequest where show = genericShow
instance decodeCreatePresetRequest :: Decode CreatePresetRequest where decode = genericDecode options
instance encodeCreatePresetRequest :: Encode CreatePresetRequest where encode = genericEncode options

-- | Constructs CreatePresetRequest from required parameters
newCreatePresetRequest :: CreatePresetRequest
newCreatePresetRequest  = CreatePresetRequest { "Category": Nothing, "Description": Nothing, "Name": Nothing, "Settings": Nothing }

-- | Constructs CreatePresetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePresetRequest' :: ( { "Category" :: Maybe (String) , "Description" :: Maybe (String) , "Name" :: Maybe (String) , "Settings" :: Maybe (PresetSettings) } -> {"Category" :: Maybe (String) , "Description" :: Maybe (String) , "Name" :: Maybe (String) , "Settings" :: Maybe (PresetSettings) } ) -> CreatePresetRequest
newCreatePresetRequest'  customize = (CreatePresetRequest <<< customize) { "Category": Nothing, "Description": Nothing, "Name": Nothing, "Settings": Nothing }



newtype CreatePresetResponse = CreatePresetResponse 
  { "Preset" :: Maybe (Preset)
  }
derive instance newtypeCreatePresetResponse :: Newtype CreatePresetResponse _
derive instance repGenericCreatePresetResponse :: Generic CreatePresetResponse _
instance showCreatePresetResponse :: Show CreatePresetResponse where show = genericShow
instance decodeCreatePresetResponse :: Decode CreatePresetResponse where decode = genericDecode options
instance encodeCreatePresetResponse :: Encode CreatePresetResponse where encode = genericEncode options

-- | Constructs CreatePresetResponse from required parameters
newCreatePresetResponse :: CreatePresetResponse
newCreatePresetResponse  = CreatePresetResponse { "Preset": Nothing }

-- | Constructs CreatePresetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePresetResponse' :: ( { "Preset" :: Maybe (Preset) } -> {"Preset" :: Maybe (Preset) } ) -> CreatePresetResponse
newCreatePresetResponse'  customize = (CreatePresetResponse <<< customize) { "Preset": Nothing }



newtype CreateQueueRequest = CreateQueueRequest 
  { "Description" :: Maybe (String)
  , "Name" :: Maybe (String)
  }
derive instance newtypeCreateQueueRequest :: Newtype CreateQueueRequest _
derive instance repGenericCreateQueueRequest :: Generic CreateQueueRequest _
instance showCreateQueueRequest :: Show CreateQueueRequest where show = genericShow
instance decodeCreateQueueRequest :: Decode CreateQueueRequest where decode = genericDecode options
instance encodeCreateQueueRequest :: Encode CreateQueueRequest where encode = genericEncode options

-- | Constructs CreateQueueRequest from required parameters
newCreateQueueRequest :: CreateQueueRequest
newCreateQueueRequest  = CreateQueueRequest { "Description": Nothing, "Name": Nothing }

-- | Constructs CreateQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQueueRequest' :: ( { "Description" :: Maybe (String) , "Name" :: Maybe (String) } -> {"Description" :: Maybe (String) , "Name" :: Maybe (String) } ) -> CreateQueueRequest
newCreateQueueRequest'  customize = (CreateQueueRequest <<< customize) { "Description": Nothing, "Name": Nothing }



newtype CreateQueueResponse = CreateQueueResponse 
  { "Queue" :: Maybe (Queue)
  }
derive instance newtypeCreateQueueResponse :: Newtype CreateQueueResponse _
derive instance repGenericCreateQueueResponse :: Generic CreateQueueResponse _
instance showCreateQueueResponse :: Show CreateQueueResponse where show = genericShow
instance decodeCreateQueueResponse :: Decode CreateQueueResponse where decode = genericDecode options
instance encodeCreateQueueResponse :: Encode CreateQueueResponse where encode = genericEncode options

-- | Constructs CreateQueueResponse from required parameters
newCreateQueueResponse :: CreateQueueResponse
newCreateQueueResponse  = CreateQueueResponse { "Queue": Nothing }

-- | Constructs CreateQueueResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQueueResponse' :: ( { "Queue" :: Maybe (Queue) } -> {"Queue" :: Maybe (Queue) } ) -> CreateQueueResponse
newCreateQueueResponse'  customize = (CreateQueueResponse <<< customize) { "Queue": Nothing }



-- | Specifies DRM settings for DASH outputs.
newtype DashIsoEncryptionSettings = DashIsoEncryptionSettings 
  { "SpekeKeyProvider" :: Maybe (SpekeKeyProvider)
  }
derive instance newtypeDashIsoEncryptionSettings :: Newtype DashIsoEncryptionSettings _
derive instance repGenericDashIsoEncryptionSettings :: Generic DashIsoEncryptionSettings _
instance showDashIsoEncryptionSettings :: Show DashIsoEncryptionSettings where show = genericShow
instance decodeDashIsoEncryptionSettings :: Decode DashIsoEncryptionSettings where decode = genericDecode options
instance encodeDashIsoEncryptionSettings :: Encode DashIsoEncryptionSettings where encode = genericEncode options

-- | Constructs DashIsoEncryptionSettings from required parameters
newDashIsoEncryptionSettings :: DashIsoEncryptionSettings
newDashIsoEncryptionSettings  = DashIsoEncryptionSettings { "SpekeKeyProvider": Nothing }

-- | Constructs DashIsoEncryptionSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDashIsoEncryptionSettings' :: ( { "SpekeKeyProvider" :: Maybe (SpekeKeyProvider) } -> {"SpekeKeyProvider" :: Maybe (SpekeKeyProvider) } ) -> DashIsoEncryptionSettings
newDashIsoEncryptionSettings'  customize = (DashIsoEncryptionSettings <<< customize) { "SpekeKeyProvider": Nothing }



-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.
newtype DashIsoGroupSettings = DashIsoGroupSettings 
  { "BaseUrl" :: Maybe (String)
  , "Destination" :: Maybe (String)
  , "Encryption" :: Maybe (DashIsoEncryptionSettings)
  , "FragmentLength" :: Maybe (Int)
  , "HbbtvCompliance" :: Maybe (DashIsoHbbtvCompliance)
  , "MinBufferTime" :: Maybe (Int)
  , "SegmentControl" :: Maybe (DashIsoSegmentControl)
  , "SegmentLength" :: Maybe (Int)
  }
derive instance newtypeDashIsoGroupSettings :: Newtype DashIsoGroupSettings _
derive instance repGenericDashIsoGroupSettings :: Generic DashIsoGroupSettings _
instance showDashIsoGroupSettings :: Show DashIsoGroupSettings where show = genericShow
instance decodeDashIsoGroupSettings :: Decode DashIsoGroupSettings where decode = genericDecode options
instance encodeDashIsoGroupSettings :: Encode DashIsoGroupSettings where encode = genericEncode options

-- | Constructs DashIsoGroupSettings from required parameters
newDashIsoGroupSettings :: DashIsoGroupSettings
newDashIsoGroupSettings  = DashIsoGroupSettings { "BaseUrl": Nothing, "Destination": Nothing, "Encryption": Nothing, "FragmentLength": Nothing, "HbbtvCompliance": Nothing, "MinBufferTime": Nothing, "SegmentControl": Nothing, "SegmentLength": Nothing }

-- | Constructs DashIsoGroupSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDashIsoGroupSettings' :: ( { "BaseUrl" :: Maybe (String) , "Destination" :: Maybe (String) , "Encryption" :: Maybe (DashIsoEncryptionSettings) , "FragmentLength" :: Maybe (Int) , "HbbtvCompliance" :: Maybe (DashIsoHbbtvCompliance) , "MinBufferTime" :: Maybe (Int) , "SegmentControl" :: Maybe (DashIsoSegmentControl) , "SegmentLength" :: Maybe (Int) } -> {"BaseUrl" :: Maybe (String) , "Destination" :: Maybe (String) , "Encryption" :: Maybe (DashIsoEncryptionSettings) , "FragmentLength" :: Maybe (Int) , "HbbtvCompliance" :: Maybe (DashIsoHbbtvCompliance) , "MinBufferTime" :: Maybe (Int) , "SegmentControl" :: Maybe (DashIsoSegmentControl) , "SegmentLength" :: Maybe (Int) } ) -> DashIsoGroupSettings
newDashIsoGroupSettings'  customize = (DashIsoGroupSettings <<< customize) { "BaseUrl": Nothing, "Destination": Nothing, "Encryption": Nothing, "FragmentLength": Nothing, "HbbtvCompliance": Nothing, "MinBufferTime": Nothing, "SegmentControl": Nothing, "SegmentLength": Nothing }



-- | Supports HbbTV specification as indicated
newtype DashIsoHbbtvCompliance = DashIsoHbbtvCompliance String
derive instance newtypeDashIsoHbbtvCompliance :: Newtype DashIsoHbbtvCompliance _
derive instance repGenericDashIsoHbbtvCompliance :: Generic DashIsoHbbtvCompliance _
instance showDashIsoHbbtvCompliance :: Show DashIsoHbbtvCompliance where show = genericShow
instance decodeDashIsoHbbtvCompliance :: Decode DashIsoHbbtvCompliance where decode = genericDecode options
instance encodeDashIsoHbbtvCompliance :: Encode DashIsoHbbtvCompliance where encode = genericEncode options



-- | When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
newtype DashIsoSegmentControl = DashIsoSegmentControl String
derive instance newtypeDashIsoSegmentControl :: Newtype DashIsoSegmentControl _
derive instance repGenericDashIsoSegmentControl :: Generic DashIsoSegmentControl _
instance showDashIsoSegmentControl :: Show DashIsoSegmentControl where show = genericShow
instance decodeDashIsoSegmentControl :: Decode DashIsoSegmentControl where decode = genericDecode options
instance encodeDashIsoSegmentControl :: Encode DashIsoSegmentControl where encode = genericEncode options



-- | Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate (INTERPOLATE) produces sharper pictures, while blend (BLEND) produces smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your source file includes a ticker, such as a scrolling headline at the bottom of the frame.
newtype DeinterlaceAlgorithm = DeinterlaceAlgorithm String
derive instance newtypeDeinterlaceAlgorithm :: Newtype DeinterlaceAlgorithm _
derive instance repGenericDeinterlaceAlgorithm :: Generic DeinterlaceAlgorithm _
instance showDeinterlaceAlgorithm :: Show DeinterlaceAlgorithm where show = genericShow
instance decodeDeinterlaceAlgorithm :: Decode DeinterlaceAlgorithm where decode = genericDecode options
instance encodeDeinterlaceAlgorithm :: Encode DeinterlaceAlgorithm where encode = genericEncode options



-- | Settings for deinterlacer
newtype Deinterlacer = Deinterlacer 
  { "Algorithm" :: Maybe (DeinterlaceAlgorithm)
  , "Control" :: Maybe (DeinterlacerControl)
  , "Mode" :: Maybe (DeinterlacerMode)
  }
derive instance newtypeDeinterlacer :: Newtype Deinterlacer _
derive instance repGenericDeinterlacer :: Generic Deinterlacer _
instance showDeinterlacer :: Show Deinterlacer where show = genericShow
instance decodeDeinterlacer :: Decode Deinterlacer where decode = genericDecode options
instance encodeDeinterlacer :: Encode Deinterlacer where encode = genericEncode options

-- | Constructs Deinterlacer from required parameters
newDeinterlacer :: Deinterlacer
newDeinterlacer  = Deinterlacer { "Algorithm": Nothing, "Control": Nothing, "Mode": Nothing }

-- | Constructs Deinterlacer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeinterlacer' :: ( { "Algorithm" :: Maybe (DeinterlaceAlgorithm) , "Control" :: Maybe (DeinterlacerControl) , "Mode" :: Maybe (DeinterlacerMode) } -> {"Algorithm" :: Maybe (DeinterlaceAlgorithm) , "Control" :: Maybe (DeinterlacerControl) , "Mode" :: Maybe (DeinterlacerMode) } ) -> Deinterlacer
newDeinterlacer'  customize = (Deinterlacer <<< customize) { "Algorithm": Nothing, "Control": Nothing, "Mode": Nothing }



-- | - When set to NORMAL (default), the deinterlacer does not convert frames that are tagged  in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is  a good chance that the metadata has tagged frames as progressive when they are not  progressive. Do not turn on otherwise; processing frames that are already progressive  into progressive will probably result in lower quality video.
newtype DeinterlacerControl = DeinterlacerControl String
derive instance newtypeDeinterlacerControl :: Newtype DeinterlacerControl _
derive instance repGenericDeinterlacerControl :: Generic DeinterlacerControl _
instance showDeinterlacerControl :: Show DeinterlacerControl where show = genericShow
instance decodeDeinterlacerControl :: Decode DeinterlacerControl where decode = genericDecode options
instance encodeDeinterlacerControl :: Encode DeinterlacerControl where encode = genericEncode options



-- | Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive.
newtype DeinterlacerMode = DeinterlacerMode String
derive instance newtypeDeinterlacerMode :: Newtype DeinterlacerMode _
derive instance repGenericDeinterlacerMode :: Generic DeinterlacerMode _
instance showDeinterlacerMode :: Show DeinterlacerMode where show = genericShow
instance decodeDeinterlacerMode :: Decode DeinterlacerMode where decode = genericDecode options
instance encodeDeinterlacerMode :: Encode DeinterlacerMode where encode = genericEncode options



newtype DeleteJobTemplateRequest = DeleteJobTemplateRequest 
  { "Name" :: (String)
  }
derive instance newtypeDeleteJobTemplateRequest :: Newtype DeleteJobTemplateRequest _
derive instance repGenericDeleteJobTemplateRequest :: Generic DeleteJobTemplateRequest _
instance showDeleteJobTemplateRequest :: Show DeleteJobTemplateRequest where show = genericShow
instance decodeDeleteJobTemplateRequest :: Decode DeleteJobTemplateRequest where decode = genericDecode options
instance encodeDeleteJobTemplateRequest :: Encode DeleteJobTemplateRequest where encode = genericEncode options

-- | Constructs DeleteJobTemplateRequest from required parameters
newDeleteJobTemplateRequest :: String -> DeleteJobTemplateRequest
newDeleteJobTemplateRequest _Name = DeleteJobTemplateRequest { "Name": _Name }

-- | Constructs DeleteJobTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteJobTemplateRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> DeleteJobTemplateRequest
newDeleteJobTemplateRequest' _Name customize = (DeleteJobTemplateRequest <<< customize) { "Name": _Name }



newtype DeleteJobTemplateResponse = DeleteJobTemplateResponse Types.NoArguments
derive instance newtypeDeleteJobTemplateResponse :: Newtype DeleteJobTemplateResponse _
derive instance repGenericDeleteJobTemplateResponse :: Generic DeleteJobTemplateResponse _
instance showDeleteJobTemplateResponse :: Show DeleteJobTemplateResponse where show = genericShow
instance decodeDeleteJobTemplateResponse :: Decode DeleteJobTemplateResponse where decode = genericDecode options
instance encodeDeleteJobTemplateResponse :: Encode DeleteJobTemplateResponse where encode = genericEncode options



newtype DeletePresetRequest = DeletePresetRequest 
  { "Name" :: (String)
  }
derive instance newtypeDeletePresetRequest :: Newtype DeletePresetRequest _
derive instance repGenericDeletePresetRequest :: Generic DeletePresetRequest _
instance showDeletePresetRequest :: Show DeletePresetRequest where show = genericShow
instance decodeDeletePresetRequest :: Decode DeletePresetRequest where decode = genericDecode options
instance encodeDeletePresetRequest :: Encode DeletePresetRequest where encode = genericEncode options

-- | Constructs DeletePresetRequest from required parameters
newDeletePresetRequest :: String -> DeletePresetRequest
newDeletePresetRequest _Name = DeletePresetRequest { "Name": _Name }

-- | Constructs DeletePresetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePresetRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> DeletePresetRequest
newDeletePresetRequest' _Name customize = (DeletePresetRequest <<< customize) { "Name": _Name }



newtype DeletePresetResponse = DeletePresetResponse Types.NoArguments
derive instance newtypeDeletePresetResponse :: Newtype DeletePresetResponse _
derive instance repGenericDeletePresetResponse :: Generic DeletePresetResponse _
instance showDeletePresetResponse :: Show DeletePresetResponse where show = genericShow
instance decodeDeletePresetResponse :: Decode DeletePresetResponse where decode = genericDecode options
instance encodeDeletePresetResponse :: Encode DeletePresetResponse where encode = genericEncode options



newtype DeleteQueueRequest = DeleteQueueRequest 
  { "Name" :: (String)
  }
derive instance newtypeDeleteQueueRequest :: Newtype DeleteQueueRequest _
derive instance repGenericDeleteQueueRequest :: Generic DeleteQueueRequest _
instance showDeleteQueueRequest :: Show DeleteQueueRequest where show = genericShow
instance decodeDeleteQueueRequest :: Decode DeleteQueueRequest where decode = genericDecode options
instance encodeDeleteQueueRequest :: Encode DeleteQueueRequest where encode = genericEncode options

-- | Constructs DeleteQueueRequest from required parameters
newDeleteQueueRequest :: String -> DeleteQueueRequest
newDeleteQueueRequest _Name = DeleteQueueRequest { "Name": _Name }

-- | Constructs DeleteQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteQueueRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> DeleteQueueRequest
newDeleteQueueRequest' _Name customize = (DeleteQueueRequest <<< customize) { "Name": _Name }



newtype DeleteQueueResponse = DeleteQueueResponse Types.NoArguments
derive instance newtypeDeleteQueueResponse :: Newtype DeleteQueueResponse _
derive instance repGenericDeleteQueueResponse :: Generic DeleteQueueResponse _
instance showDeleteQueueResponse :: Show DeleteQueueResponse where show = genericShow
instance decodeDeleteQueueResponse :: Decode DeleteQueueResponse where decode = genericDecode options
instance encodeDeleteQueueResponse :: Encode DeleteQueueResponse where encode = genericEncode options



-- | DescribeEndpointsRequest
newtype DescribeEndpointsRequest = DescribeEndpointsRequest 
  { "MaxResults" :: Maybe (Int)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeEndpointsRequest :: Newtype DescribeEndpointsRequest _
derive instance repGenericDescribeEndpointsRequest :: Generic DescribeEndpointsRequest _
instance showDescribeEndpointsRequest :: Show DescribeEndpointsRequest where show = genericShow
instance decodeDescribeEndpointsRequest :: Decode DescribeEndpointsRequest where decode = genericDecode options
instance encodeDescribeEndpointsRequest :: Encode DescribeEndpointsRequest where encode = genericEncode options

-- | Constructs DescribeEndpointsRequest from required parameters
newDescribeEndpointsRequest :: DescribeEndpointsRequest
newDescribeEndpointsRequest  = DescribeEndpointsRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs DescribeEndpointsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEndpointsRequest' :: ( { "MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) } -> {"MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) } ) -> DescribeEndpointsRequest
newDescribeEndpointsRequest'  customize = (DescribeEndpointsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype DescribeEndpointsResponse = DescribeEndpointsResponse 
  { "Endpoints" :: Maybe (ListOfEndpoint)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeEndpointsResponse :: Newtype DescribeEndpointsResponse _
derive instance repGenericDescribeEndpointsResponse :: Generic DescribeEndpointsResponse _
instance showDescribeEndpointsResponse :: Show DescribeEndpointsResponse where show = genericShow
instance decodeDescribeEndpointsResponse :: Decode DescribeEndpointsResponse where decode = genericDecode options
instance encodeDescribeEndpointsResponse :: Encode DescribeEndpointsResponse where encode = genericEncode options

-- | Constructs DescribeEndpointsResponse from required parameters
newDescribeEndpointsResponse :: DescribeEndpointsResponse
newDescribeEndpointsResponse  = DescribeEndpointsResponse { "Endpoints": Nothing, "NextToken": Nothing }

-- | Constructs DescribeEndpointsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEndpointsResponse' :: ( { "Endpoints" :: Maybe (ListOfEndpoint) , "NextToken" :: Maybe (String) } -> {"Endpoints" :: Maybe (ListOfEndpoint) , "NextToken" :: Maybe (String) } ) -> DescribeEndpointsResponse
newDescribeEndpointsResponse'  customize = (DescribeEndpointsResponse <<< customize) { "Endpoints": Nothing, "NextToken": Nothing }



-- | Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion (TimecodeInsertion) is enabled.
newtype DropFrameTimecode = DropFrameTimecode String
derive instance newtypeDropFrameTimecode :: Newtype DropFrameTimecode _
derive instance repGenericDropFrameTimecode :: Generic DropFrameTimecode _
instance showDropFrameTimecode :: Show DropFrameTimecode where show = genericShow
instance decodeDropFrameTimecode :: Decode DropFrameTimecode where decode = genericDecode options
instance encodeDropFrameTimecode :: Encode DropFrameTimecode where encode = genericEncode options



-- | Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
newtype DvbNitSettings = DvbNitSettings 
  { "NetworkId" :: Maybe (Int)
  , "NetworkName" :: Maybe (String)
  , "NitInterval" :: Maybe (Int)
  }
derive instance newtypeDvbNitSettings :: Newtype DvbNitSettings _
derive instance repGenericDvbNitSettings :: Generic DvbNitSettings _
instance showDvbNitSettings :: Show DvbNitSettings where show = genericShow
instance decodeDvbNitSettings :: Decode DvbNitSettings where decode = genericDecode options
instance encodeDvbNitSettings :: Encode DvbNitSettings where encode = genericEncode options

-- | Constructs DvbNitSettings from required parameters
newDvbNitSettings :: DvbNitSettings
newDvbNitSettings  = DvbNitSettings { "NetworkId": Nothing, "NetworkName": Nothing, "NitInterval": Nothing }

-- | Constructs DvbNitSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDvbNitSettings' :: ( { "NetworkId" :: Maybe (Int) , "NetworkName" :: Maybe (String) , "NitInterval" :: Maybe (Int) } -> {"NetworkId" :: Maybe (Int) , "NetworkName" :: Maybe (String) , "NitInterval" :: Maybe (Int) } ) -> DvbNitSettings
newDvbNitSettings'  customize = (DvbNitSettings <<< customize) { "NetworkId": Nothing, "NetworkName": Nothing, "NitInterval": Nothing }



-- | Inserts DVB Service Description Table (NIT) at the specified table repetition interval.
newtype DvbSdtSettings = DvbSdtSettings 
  { "OutputSdt" :: Maybe (OutputSdt)
  , "SdtInterval" :: Maybe (Int)
  , "ServiceName" :: Maybe (String)
  , "ServiceProviderName" :: Maybe (String)
  }
derive instance newtypeDvbSdtSettings :: Newtype DvbSdtSettings _
derive instance repGenericDvbSdtSettings :: Generic DvbSdtSettings _
instance showDvbSdtSettings :: Show DvbSdtSettings where show = genericShow
instance decodeDvbSdtSettings :: Decode DvbSdtSettings where decode = genericDecode options
instance encodeDvbSdtSettings :: Encode DvbSdtSettings where encode = genericEncode options

-- | Constructs DvbSdtSettings from required parameters
newDvbSdtSettings :: DvbSdtSettings
newDvbSdtSettings  = DvbSdtSettings { "OutputSdt": Nothing, "SdtInterval": Nothing, "ServiceName": Nothing, "ServiceProviderName": Nothing }

-- | Constructs DvbSdtSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDvbSdtSettings' :: ( { "OutputSdt" :: Maybe (OutputSdt) , "SdtInterval" :: Maybe (Int) , "ServiceName" :: Maybe (String) , "ServiceProviderName" :: Maybe (String) } -> {"OutputSdt" :: Maybe (OutputSdt) , "SdtInterval" :: Maybe (Int) , "ServiceName" :: Maybe (String) , "ServiceProviderName" :: Maybe (String) } ) -> DvbSdtSettings
newDvbSdtSettings'  customize = (DvbSdtSettings <<< customize) { "OutputSdt": Nothing, "SdtInterval": Nothing, "ServiceName": Nothing, "ServiceProviderName": Nothing }



-- | DVB-Sub Destination Settings
newtype DvbSubDestinationSettings = DvbSubDestinationSettings 
  { "Alignment" :: Maybe (DvbSubtitleAlignment)
  , "BackgroundColor" :: Maybe (DvbSubtitleBackgroundColor)
  , "BackgroundOpacity" :: Maybe (Int)
  , "FontColor" :: Maybe (DvbSubtitleFontColor)
  , "FontOpacity" :: Maybe (Int)
  , "FontResolution" :: Maybe (Int)
  , "FontSize" :: Maybe (Int)
  , "OutlineColor" :: Maybe (DvbSubtitleOutlineColor)
  , "OutlineSize" :: Maybe (Int)
  , "ShadowColor" :: Maybe (DvbSubtitleShadowColor)
  , "ShadowOpacity" :: Maybe (Int)
  , "ShadowXOffset" :: Maybe (Int)
  , "ShadowYOffset" :: Maybe (Int)
  , "TeletextSpacing" :: Maybe (DvbSubtitleTeletextSpacing)
  , "XPosition" :: Maybe (Int)
  , "YPosition" :: Maybe (Int)
  }
derive instance newtypeDvbSubDestinationSettings :: Newtype DvbSubDestinationSettings _
derive instance repGenericDvbSubDestinationSettings :: Generic DvbSubDestinationSettings _
instance showDvbSubDestinationSettings :: Show DvbSubDestinationSettings where show = genericShow
instance decodeDvbSubDestinationSettings :: Decode DvbSubDestinationSettings where decode = genericDecode options
instance encodeDvbSubDestinationSettings :: Encode DvbSubDestinationSettings where encode = genericEncode options

-- | Constructs DvbSubDestinationSettings from required parameters
newDvbSubDestinationSettings :: DvbSubDestinationSettings
newDvbSubDestinationSettings  = DvbSubDestinationSettings { "Alignment": Nothing, "BackgroundColor": Nothing, "BackgroundOpacity": Nothing, "FontColor": Nothing, "FontOpacity": Nothing, "FontResolution": Nothing, "FontSize": Nothing, "OutlineColor": Nothing, "OutlineSize": Nothing, "ShadowColor": Nothing, "ShadowOpacity": Nothing, "ShadowXOffset": Nothing, "ShadowYOffset": Nothing, "TeletextSpacing": Nothing, "XPosition": Nothing, "YPosition": Nothing }

-- | Constructs DvbSubDestinationSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDvbSubDestinationSettings' :: ( { "Alignment" :: Maybe (DvbSubtitleAlignment) , "BackgroundColor" :: Maybe (DvbSubtitleBackgroundColor) , "BackgroundOpacity" :: Maybe (Int) , "FontColor" :: Maybe (DvbSubtitleFontColor) , "FontOpacity" :: Maybe (Int) , "FontResolution" :: Maybe (Int) , "FontSize" :: Maybe (Int) , "OutlineColor" :: Maybe (DvbSubtitleOutlineColor) , "OutlineSize" :: Maybe (Int) , "ShadowColor" :: Maybe (DvbSubtitleShadowColor) , "ShadowOpacity" :: Maybe (Int) , "ShadowXOffset" :: Maybe (Int) , "ShadowYOffset" :: Maybe (Int) , "TeletextSpacing" :: Maybe (DvbSubtitleTeletextSpacing) , "XPosition" :: Maybe (Int) , "YPosition" :: Maybe (Int) } -> {"Alignment" :: Maybe (DvbSubtitleAlignment) , "BackgroundColor" :: Maybe (DvbSubtitleBackgroundColor) , "BackgroundOpacity" :: Maybe (Int) , "FontColor" :: Maybe (DvbSubtitleFontColor) , "FontOpacity" :: Maybe (Int) , "FontResolution" :: Maybe (Int) , "FontSize" :: Maybe (Int) , "OutlineColor" :: Maybe (DvbSubtitleOutlineColor) , "OutlineSize" :: Maybe (Int) , "ShadowColor" :: Maybe (DvbSubtitleShadowColor) , "ShadowOpacity" :: Maybe (Int) , "ShadowXOffset" :: Maybe (Int) , "ShadowYOffset" :: Maybe (Int) , "TeletextSpacing" :: Maybe (DvbSubtitleTeletextSpacing) , "XPosition" :: Maybe (Int) , "YPosition" :: Maybe (Int) } ) -> DvbSubDestinationSettings
newDvbSubDestinationSettings'  customize = (DvbSubDestinationSettings <<< customize) { "Alignment": Nothing, "BackgroundColor": Nothing, "BackgroundOpacity": Nothing, "FontColor": Nothing, "FontOpacity": Nothing, "FontResolution": Nothing, "FontSize": Nothing, "OutlineColor": Nothing, "OutlineSize": Nothing, "ShadowColor": Nothing, "ShadowOpacity": Nothing, "ShadowXOffset": Nothing, "ShadowYOffset": Nothing, "TeletextSpacing": Nothing, "XPosition": Nothing, "YPosition": Nothing }



-- | DVB Sub Source Settings
newtype DvbSubSourceSettings = DvbSubSourceSettings 
  { "Pid" :: Maybe (Int)
  }
derive instance newtypeDvbSubSourceSettings :: Newtype DvbSubSourceSettings _
derive instance repGenericDvbSubSourceSettings :: Generic DvbSubSourceSettings _
instance showDvbSubSourceSettings :: Show DvbSubSourceSettings where show = genericShow
instance decodeDvbSubSourceSettings :: Decode DvbSubSourceSettings where decode = genericDecode options
instance encodeDvbSubSourceSettings :: Encode DvbSubSourceSettings where encode = genericEncode options

-- | Constructs DvbSubSourceSettings from required parameters
newDvbSubSourceSettings :: DvbSubSourceSettings
newDvbSubSourceSettings  = DvbSubSourceSettings { "Pid": Nothing }

-- | Constructs DvbSubSourceSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDvbSubSourceSettings' :: ( { "Pid" :: Maybe (Int) } -> {"Pid" :: Maybe (Int) } ) -> DvbSubSourceSettings
newDvbSubSourceSettings'  customize = (DvbSubSourceSettings <<< customize) { "Pid": Nothing }



-- | If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
newtype DvbSubtitleAlignment = DvbSubtitleAlignment String
derive instance newtypeDvbSubtitleAlignment :: Newtype DvbSubtitleAlignment _
derive instance repGenericDvbSubtitleAlignment :: Generic DvbSubtitleAlignment _
instance showDvbSubtitleAlignment :: Show DvbSubtitleAlignment where show = genericShow
instance decodeDvbSubtitleAlignment :: Decode DvbSubtitleAlignment where decode = genericDecode options
instance encodeDvbSubtitleAlignment :: Encode DvbSubtitleAlignment where encode = genericEncode options



-- | Specifies the color of the rectangle behind the captions.
-- | All burn-in and DVB-Sub font settings must match.
newtype DvbSubtitleBackgroundColor = DvbSubtitleBackgroundColor String
derive instance newtypeDvbSubtitleBackgroundColor :: Newtype DvbSubtitleBackgroundColor _
derive instance repGenericDvbSubtitleBackgroundColor :: Generic DvbSubtitleBackgroundColor _
instance showDvbSubtitleBackgroundColor :: Show DvbSubtitleBackgroundColor where show = genericShow
instance decodeDvbSubtitleBackgroundColor :: Decode DvbSubtitleBackgroundColor where decode = genericDecode options
instance encodeDvbSubtitleBackgroundColor :: Encode DvbSubtitleBackgroundColor where encode = genericEncode options



-- | Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
newtype DvbSubtitleFontColor = DvbSubtitleFontColor String
derive instance newtypeDvbSubtitleFontColor :: Newtype DvbSubtitleFontColor _
derive instance repGenericDvbSubtitleFontColor :: Generic DvbSubtitleFontColor _
instance showDvbSubtitleFontColor :: Show DvbSubtitleFontColor where show = genericShow
instance decodeDvbSubtitleFontColor :: Decode DvbSubtitleFontColor where decode = genericDecode options
instance encodeDvbSubtitleFontColor :: Encode DvbSubtitleFontColor where encode = genericEncode options



-- | Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
newtype DvbSubtitleOutlineColor = DvbSubtitleOutlineColor String
derive instance newtypeDvbSubtitleOutlineColor :: Newtype DvbSubtitleOutlineColor _
derive instance repGenericDvbSubtitleOutlineColor :: Generic DvbSubtitleOutlineColor _
instance showDvbSubtitleOutlineColor :: Show DvbSubtitleOutlineColor where show = genericShow
instance decodeDvbSubtitleOutlineColor :: Decode DvbSubtitleOutlineColor where decode = genericDecode options
instance encodeDvbSubtitleOutlineColor :: Encode DvbSubtitleOutlineColor where encode = genericEncode options



-- | Specifies the color of the shadow cast by the captions.
-- | All burn-in and DVB-Sub font settings must match.
newtype DvbSubtitleShadowColor = DvbSubtitleShadowColor String
derive instance newtypeDvbSubtitleShadowColor :: Newtype DvbSubtitleShadowColor _
derive instance repGenericDvbSubtitleShadowColor :: Generic DvbSubtitleShadowColor _
instance showDvbSubtitleShadowColor :: Show DvbSubtitleShadowColor where show = genericShow
instance decodeDvbSubtitleShadowColor :: Decode DvbSubtitleShadowColor where decode = genericDecode options
instance encodeDvbSubtitleShadowColor :: Encode DvbSubtitleShadowColor where encode = genericEncode options



-- | Controls whether a fixed grid size or proportional font spacing will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
newtype DvbSubtitleTeletextSpacing = DvbSubtitleTeletextSpacing String
derive instance newtypeDvbSubtitleTeletextSpacing :: Newtype DvbSubtitleTeletextSpacing _
derive instance repGenericDvbSubtitleTeletextSpacing :: Generic DvbSubtitleTeletextSpacing _
instance showDvbSubtitleTeletextSpacing :: Show DvbSubtitleTeletextSpacing where show = genericShow
instance decodeDvbSubtitleTeletextSpacing :: Decode DvbSubtitleTeletextSpacing where decode = genericDecode options
instance encodeDvbSubtitleTeletextSpacing :: Encode DvbSubtitleTeletextSpacing where encode = genericEncode options



-- | Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
newtype DvbTdtSettings = DvbTdtSettings 
  { "TdtInterval" :: Maybe (Int)
  }
derive instance newtypeDvbTdtSettings :: Newtype DvbTdtSettings _
derive instance repGenericDvbTdtSettings :: Generic DvbTdtSettings _
instance showDvbTdtSettings :: Show DvbTdtSettings where show = genericShow
instance decodeDvbTdtSettings :: Decode DvbTdtSettings where decode = genericDecode options
instance encodeDvbTdtSettings :: Encode DvbTdtSettings where encode = genericEncode options

-- | Constructs DvbTdtSettings from required parameters
newDvbTdtSettings :: DvbTdtSettings
newDvbTdtSettings  = DvbTdtSettings { "TdtInterval": Nothing }

-- | Constructs DvbTdtSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDvbTdtSettings' :: ( { "TdtInterval" :: Maybe (Int) } -> {"TdtInterval" :: Maybe (Int) } ) -> DvbTdtSettings
newDvbTdtSettings'  customize = (DvbTdtSettings <<< customize) { "TdtInterval": Nothing }



-- | If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
newtype Eac3AttenuationControl = Eac3AttenuationControl String
derive instance newtypeEac3AttenuationControl :: Newtype Eac3AttenuationControl _
derive instance repGenericEac3AttenuationControl :: Generic Eac3AttenuationControl _
instance showEac3AttenuationControl :: Show Eac3AttenuationControl where show = genericShow
instance decodeEac3AttenuationControl :: Decode Eac3AttenuationControl where decode = genericDecode options
instance encodeEac3AttenuationControl :: Encode Eac3AttenuationControl where encode = genericEncode options



-- | Specifies the "Bitstream Mode" (bsmod) for the emitted E-AC-3 stream. See ATSC A/52-2012 (Annex E) for background on these values.
newtype Eac3BitstreamMode = Eac3BitstreamMode String
derive instance newtypeEac3BitstreamMode :: Newtype Eac3BitstreamMode _
derive instance repGenericEac3BitstreamMode :: Generic Eac3BitstreamMode _
instance showEac3BitstreamMode :: Show Eac3BitstreamMode where show = genericShow
instance decodeEac3BitstreamMode :: Decode Eac3BitstreamMode where decode = genericDecode options
instance encodeEac3BitstreamMode :: Encode Eac3BitstreamMode where encode = genericEncode options



-- | Dolby Digital Plus coding mode. Determines number of channels.
newtype Eac3CodingMode = Eac3CodingMode String
derive instance newtypeEac3CodingMode :: Newtype Eac3CodingMode _
derive instance repGenericEac3CodingMode :: Generic Eac3CodingMode _
instance showEac3CodingMode :: Show Eac3CodingMode where show = genericShow
instance decodeEac3CodingMode :: Decode Eac3CodingMode where decode = genericDecode options
instance encodeEac3CodingMode :: Encode Eac3CodingMode where encode = genericEncode options



-- | Activates a DC highpass filter for all input channels.
newtype Eac3DcFilter = Eac3DcFilter String
derive instance newtypeEac3DcFilter :: Newtype Eac3DcFilter _
derive instance repGenericEac3DcFilter :: Generic Eac3DcFilter _
instance showEac3DcFilter :: Show Eac3DcFilter where show = genericShow
instance decodeEac3DcFilter :: Decode Eac3DcFilter where decode = genericDecode options
instance encodeEac3DcFilter :: Encode Eac3DcFilter where encode = genericEncode options



-- | Enables Dynamic Range Compression that restricts the absolute peak level for a signal.
newtype Eac3DynamicRangeCompressionLine = Eac3DynamicRangeCompressionLine String
derive instance newtypeEac3DynamicRangeCompressionLine :: Newtype Eac3DynamicRangeCompressionLine _
derive instance repGenericEac3DynamicRangeCompressionLine :: Generic Eac3DynamicRangeCompressionLine _
instance showEac3DynamicRangeCompressionLine :: Show Eac3DynamicRangeCompressionLine where show = genericShow
instance decodeEac3DynamicRangeCompressionLine :: Decode Eac3DynamicRangeCompressionLine where decode = genericDecode options
instance encodeEac3DynamicRangeCompressionLine :: Encode Eac3DynamicRangeCompressionLine where encode = genericEncode options



-- | Enables Heavy Dynamic Range Compression, ensures that the instantaneous signal peaks do not exceed specified levels.
newtype Eac3DynamicRangeCompressionRf = Eac3DynamicRangeCompressionRf String
derive instance newtypeEac3DynamicRangeCompressionRf :: Newtype Eac3DynamicRangeCompressionRf _
derive instance repGenericEac3DynamicRangeCompressionRf :: Generic Eac3DynamicRangeCompressionRf _
instance showEac3DynamicRangeCompressionRf :: Show Eac3DynamicRangeCompressionRf where show = genericShow
instance decodeEac3DynamicRangeCompressionRf :: Decode Eac3DynamicRangeCompressionRf where decode = genericDecode options
instance encodeEac3DynamicRangeCompressionRf :: Encode Eac3DynamicRangeCompressionRf where encode = genericEncode options



-- | When encoding 3/2 audio, controls whether the LFE channel is enabled
newtype Eac3LfeControl = Eac3LfeControl String
derive instance newtypeEac3LfeControl :: Newtype Eac3LfeControl _
derive instance repGenericEac3LfeControl :: Generic Eac3LfeControl _
instance showEac3LfeControl :: Show Eac3LfeControl where show = genericShow
instance decodeEac3LfeControl :: Decode Eac3LfeControl where decode = genericDecode options
instance encodeEac3LfeControl :: Encode Eac3LfeControl where encode = genericEncode options



-- | Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
newtype Eac3LfeFilter = Eac3LfeFilter String
derive instance newtypeEac3LfeFilter :: Newtype Eac3LfeFilter _
derive instance repGenericEac3LfeFilter :: Generic Eac3LfeFilter _
instance showEac3LfeFilter :: Show Eac3LfeFilter where show = genericShow
instance decodeEac3LfeFilter :: Decode Eac3LfeFilter where decode = genericDecode options
instance encodeEac3LfeFilter :: Encode Eac3LfeFilter where encode = genericEncode options



-- | When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
newtype Eac3MetadataControl = Eac3MetadataControl String
derive instance newtypeEac3MetadataControl :: Newtype Eac3MetadataControl _
derive instance repGenericEac3MetadataControl :: Generic Eac3MetadataControl _
instance showEac3MetadataControl :: Show Eac3MetadataControl where show = genericShow
instance decodeEac3MetadataControl :: Decode Eac3MetadataControl where decode = genericDecode options
instance encodeEac3MetadataControl :: Encode Eac3MetadataControl where encode = genericEncode options



-- | When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
newtype Eac3PassthroughControl = Eac3PassthroughControl String
derive instance newtypeEac3PassthroughControl :: Newtype Eac3PassthroughControl _
derive instance repGenericEac3PassthroughControl :: Generic Eac3PassthroughControl _
instance showEac3PassthroughControl :: Show Eac3PassthroughControl where show = genericShow
instance decodeEac3PassthroughControl :: Decode Eac3PassthroughControl where decode = genericDecode options
instance encodeEac3PassthroughControl :: Encode Eac3PassthroughControl where encode = genericEncode options



-- | Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode.
newtype Eac3PhaseControl = Eac3PhaseControl String
derive instance newtypeEac3PhaseControl :: Newtype Eac3PhaseControl _
derive instance repGenericEac3PhaseControl :: Generic Eac3PhaseControl _
instance showEac3PhaseControl :: Show Eac3PhaseControl where show = genericShow
instance decodeEac3PhaseControl :: Decode Eac3PhaseControl where decode = genericDecode options
instance encodeEac3PhaseControl :: Encode Eac3PhaseControl where encode = genericEncode options



-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3.
newtype Eac3Settings = Eac3Settings 
  { "AttenuationControl" :: Maybe (Eac3AttenuationControl)
  , "Bitrate" :: Maybe (Int)
  , "BitstreamMode" :: Maybe (Eac3BitstreamMode)
  , "CodingMode" :: Maybe (Eac3CodingMode)
  , "DcFilter" :: Maybe (Eac3DcFilter)
  , "Dialnorm" :: Maybe (Int)
  , "DynamicRangeCompressionLine" :: Maybe (Eac3DynamicRangeCompressionLine)
  , "DynamicRangeCompressionRf" :: Maybe (Eac3DynamicRangeCompressionRf)
  , "LfeControl" :: Maybe (Eac3LfeControl)
  , "LfeFilter" :: Maybe (Eac3LfeFilter)
  , "LoRoCenterMixLevel" :: Maybe (Number)
  , "LoRoSurroundMixLevel" :: Maybe (Number)
  , "LtRtCenterMixLevel" :: Maybe (Number)
  , "LtRtSurroundMixLevel" :: Maybe (Number)
  , "MetadataControl" :: Maybe (Eac3MetadataControl)
  , "PassthroughControl" :: Maybe (Eac3PassthroughControl)
  , "PhaseControl" :: Maybe (Eac3PhaseControl)
  , "SampleRate" :: Maybe (Int)
  , "StereoDownmix" :: Maybe (Eac3StereoDownmix)
  , "SurroundExMode" :: Maybe (Eac3SurroundExMode)
  , "SurroundMode" :: Maybe (Eac3SurroundMode)
  }
derive instance newtypeEac3Settings :: Newtype Eac3Settings _
derive instance repGenericEac3Settings :: Generic Eac3Settings _
instance showEac3Settings :: Show Eac3Settings where show = genericShow
instance decodeEac3Settings :: Decode Eac3Settings where decode = genericDecode options
instance encodeEac3Settings :: Encode Eac3Settings where encode = genericEncode options

-- | Constructs Eac3Settings from required parameters
newEac3Settings :: Eac3Settings
newEac3Settings  = Eac3Settings { "AttenuationControl": Nothing, "Bitrate": Nothing, "BitstreamMode": Nothing, "CodingMode": Nothing, "DcFilter": Nothing, "Dialnorm": Nothing, "DynamicRangeCompressionLine": Nothing, "DynamicRangeCompressionRf": Nothing, "LfeControl": Nothing, "LfeFilter": Nothing, "LoRoCenterMixLevel": Nothing, "LoRoSurroundMixLevel": Nothing, "LtRtCenterMixLevel": Nothing, "LtRtSurroundMixLevel": Nothing, "MetadataControl": Nothing, "PassthroughControl": Nothing, "PhaseControl": Nothing, "SampleRate": Nothing, "StereoDownmix": Nothing, "SurroundExMode": Nothing, "SurroundMode": Nothing }

-- | Constructs Eac3Settings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEac3Settings' :: ( { "AttenuationControl" :: Maybe (Eac3AttenuationControl) , "Bitrate" :: Maybe (Int) , "BitstreamMode" :: Maybe (Eac3BitstreamMode) , "CodingMode" :: Maybe (Eac3CodingMode) , "DcFilter" :: Maybe (Eac3DcFilter) , "Dialnorm" :: Maybe (Int) , "DynamicRangeCompressionLine" :: Maybe (Eac3DynamicRangeCompressionLine) , "DynamicRangeCompressionRf" :: Maybe (Eac3DynamicRangeCompressionRf) , "LfeControl" :: Maybe (Eac3LfeControl) , "LfeFilter" :: Maybe (Eac3LfeFilter) , "LoRoCenterMixLevel" :: Maybe (Number) , "LoRoSurroundMixLevel" :: Maybe (Number) , "LtRtCenterMixLevel" :: Maybe (Number) , "LtRtSurroundMixLevel" :: Maybe (Number) , "MetadataControl" :: Maybe (Eac3MetadataControl) , "PassthroughControl" :: Maybe (Eac3PassthroughControl) , "PhaseControl" :: Maybe (Eac3PhaseControl) , "SampleRate" :: Maybe (Int) , "StereoDownmix" :: Maybe (Eac3StereoDownmix) , "SurroundExMode" :: Maybe (Eac3SurroundExMode) , "SurroundMode" :: Maybe (Eac3SurroundMode) } -> {"AttenuationControl" :: Maybe (Eac3AttenuationControl) , "Bitrate" :: Maybe (Int) , "BitstreamMode" :: Maybe (Eac3BitstreamMode) , "CodingMode" :: Maybe (Eac3CodingMode) , "DcFilter" :: Maybe (Eac3DcFilter) , "Dialnorm" :: Maybe (Int) , "DynamicRangeCompressionLine" :: Maybe (Eac3DynamicRangeCompressionLine) , "DynamicRangeCompressionRf" :: Maybe (Eac3DynamicRangeCompressionRf) , "LfeControl" :: Maybe (Eac3LfeControl) , "LfeFilter" :: Maybe (Eac3LfeFilter) , "LoRoCenterMixLevel" :: Maybe (Number) , "LoRoSurroundMixLevel" :: Maybe (Number) , "LtRtCenterMixLevel" :: Maybe (Number) , "LtRtSurroundMixLevel" :: Maybe (Number) , "MetadataControl" :: Maybe (Eac3MetadataControl) , "PassthroughControl" :: Maybe (Eac3PassthroughControl) , "PhaseControl" :: Maybe (Eac3PhaseControl) , "SampleRate" :: Maybe (Int) , "StereoDownmix" :: Maybe (Eac3StereoDownmix) , "SurroundExMode" :: Maybe (Eac3SurroundExMode) , "SurroundMode" :: Maybe (Eac3SurroundMode) } ) -> Eac3Settings
newEac3Settings'  customize = (Eac3Settings <<< customize) { "AttenuationControl": Nothing, "Bitrate": Nothing, "BitstreamMode": Nothing, "CodingMode": Nothing, "DcFilter": Nothing, "Dialnorm": Nothing, "DynamicRangeCompressionLine": Nothing, "DynamicRangeCompressionRf": Nothing, "LfeControl": Nothing, "LfeFilter": Nothing, "LoRoCenterMixLevel": Nothing, "LoRoSurroundMixLevel": Nothing, "LtRtCenterMixLevel": Nothing, "LtRtSurroundMixLevel": Nothing, "MetadataControl": Nothing, "PassthroughControl": Nothing, "PhaseControl": Nothing, "SampleRate": Nothing, "StereoDownmix": Nothing, "SurroundExMode": Nothing, "SurroundMode": Nothing }



-- | Stereo downmix preference. Only used for 3/2 coding mode.
newtype Eac3StereoDownmix = Eac3StereoDownmix String
derive instance newtypeEac3StereoDownmix :: Newtype Eac3StereoDownmix _
derive instance repGenericEac3StereoDownmix :: Generic Eac3StereoDownmix _
instance showEac3StereoDownmix :: Show Eac3StereoDownmix where show = genericShow
instance decodeEac3StereoDownmix :: Decode Eac3StereoDownmix where decode = genericDecode options
instance encodeEac3StereoDownmix :: Encode Eac3StereoDownmix where encode = genericEncode options



-- | When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.
newtype Eac3SurroundExMode = Eac3SurroundExMode String
derive instance newtypeEac3SurroundExMode :: Newtype Eac3SurroundExMode _
derive instance repGenericEac3SurroundExMode :: Generic Eac3SurroundExMode _
instance showEac3SurroundExMode :: Show Eac3SurroundExMode where show = genericShow
instance decodeEac3SurroundExMode :: Decode Eac3SurroundExMode where decode = genericDecode options
instance encodeEac3SurroundExMode :: Encode Eac3SurroundExMode where encode = genericEncode options



-- | When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
newtype Eac3SurroundMode = Eac3SurroundMode String
derive instance newtypeEac3SurroundMode :: Newtype Eac3SurroundMode _
derive instance repGenericEac3SurroundMode :: Generic Eac3SurroundMode _
instance showEac3SurroundMode :: Show Eac3SurroundMode where show = genericShow
instance decodeEac3SurroundMode :: Decode Eac3SurroundMode where decode = genericDecode options
instance encodeEac3SurroundMode :: Encode Eac3SurroundMode where encode = genericEncode options



-- | When set to UPCONVERT, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
newtype EmbeddedConvert608To708 = EmbeddedConvert608To708 String
derive instance newtypeEmbeddedConvert608To708 :: Newtype EmbeddedConvert608To708 _
derive instance repGenericEmbeddedConvert608To708 :: Generic EmbeddedConvert608To708 _
instance showEmbeddedConvert608To708 :: Show EmbeddedConvert608To708 where show = genericShow
instance decodeEmbeddedConvert608To708 :: Decode EmbeddedConvert608To708 where decode = genericDecode options
instance encodeEmbeddedConvert608To708 :: Encode EmbeddedConvert608To708 where encode = genericEncode options



-- | Settings for embedded captions Source
newtype EmbeddedSourceSettings = EmbeddedSourceSettings 
  { "Convert608To708" :: Maybe (EmbeddedConvert608To708)
  , "Source608ChannelNumber" :: Maybe (Int)
  , "Source608TrackNumber" :: Maybe (Int)
  }
derive instance newtypeEmbeddedSourceSettings :: Newtype EmbeddedSourceSettings _
derive instance repGenericEmbeddedSourceSettings :: Generic EmbeddedSourceSettings _
instance showEmbeddedSourceSettings :: Show EmbeddedSourceSettings where show = genericShow
instance decodeEmbeddedSourceSettings :: Decode EmbeddedSourceSettings where decode = genericDecode options
instance encodeEmbeddedSourceSettings :: Encode EmbeddedSourceSettings where encode = genericEncode options

-- | Constructs EmbeddedSourceSettings from required parameters
newEmbeddedSourceSettings :: EmbeddedSourceSettings
newEmbeddedSourceSettings  = EmbeddedSourceSettings { "Convert608To708": Nothing, "Source608ChannelNumber": Nothing, "Source608TrackNumber": Nothing }

-- | Constructs EmbeddedSourceSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEmbeddedSourceSettings' :: ( { "Convert608To708" :: Maybe (EmbeddedConvert608To708) , "Source608ChannelNumber" :: Maybe (Int) , "Source608TrackNumber" :: Maybe (Int) } -> {"Convert608To708" :: Maybe (EmbeddedConvert608To708) , "Source608ChannelNumber" :: Maybe (Int) , "Source608TrackNumber" :: Maybe (Int) } ) -> EmbeddedSourceSettings
newEmbeddedSourceSettings'  customize = (EmbeddedSourceSettings <<< customize) { "Convert608To708": Nothing, "Source608ChannelNumber": Nothing, "Source608TrackNumber": Nothing }



-- | Describes account specific API endpoint
newtype Endpoint = Endpoint 
  { "Url" :: Maybe (String)
  }
derive instance newtypeEndpoint :: Newtype Endpoint _
derive instance repGenericEndpoint :: Generic Endpoint _
instance showEndpoint :: Show Endpoint where show = genericShow
instance decodeEndpoint :: Decode Endpoint where decode = genericDecode options
instance encodeEndpoint :: Encode Endpoint where encode = genericEncode options

-- | Constructs Endpoint from required parameters
newEndpoint :: Endpoint
newEndpoint  = Endpoint { "Url": Nothing }

-- | Constructs Endpoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEndpoint' :: ( { "Url" :: Maybe (String) } -> {"Url" :: Maybe (String) } ) -> Endpoint
newEndpoint'  customize = (Endpoint <<< customize) { "Url": Nothing }



newtype ExceptionBody = ExceptionBody 
  { "Message" :: Maybe (String)
  }
derive instance newtypeExceptionBody :: Newtype ExceptionBody _
derive instance repGenericExceptionBody :: Generic ExceptionBody _
instance showExceptionBody :: Show ExceptionBody where show = genericShow
instance decodeExceptionBody :: Decode ExceptionBody where decode = genericDecode options
instance encodeExceptionBody :: Encode ExceptionBody where encode = genericEncode options

-- | Constructs ExceptionBody from required parameters
newExceptionBody :: ExceptionBody
newExceptionBody  = ExceptionBody { "Message": Nothing }

-- | Constructs ExceptionBody's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExceptionBody' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> ExceptionBody
newExceptionBody'  customize = (ExceptionBody <<< customize) { "Message": Nothing }



-- | If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.
newtype F4vMoovPlacement = F4vMoovPlacement String
derive instance newtypeF4vMoovPlacement :: Newtype F4vMoovPlacement _
derive instance repGenericF4vMoovPlacement :: Generic F4vMoovPlacement _
instance showF4vMoovPlacement :: Show F4vMoovPlacement where show = genericShow
instance decodeF4vMoovPlacement :: Decode F4vMoovPlacement where decode = genericDecode options
instance encodeF4vMoovPlacement :: Encode F4vMoovPlacement where encode = genericEncode options



-- | Settings for F4v container
newtype F4vSettings = F4vSettings 
  { "MoovPlacement" :: Maybe (F4vMoovPlacement)
  }
derive instance newtypeF4vSettings :: Newtype F4vSettings _
derive instance repGenericF4vSettings :: Generic F4vSettings _
instance showF4vSettings :: Show F4vSettings where show = genericShow
instance decodeF4vSettings :: Decode F4vSettings where decode = genericDecode options
instance encodeF4vSettings :: Encode F4vSettings where encode = genericEncode options

-- | Constructs F4vSettings from required parameters
newF4vSettings :: F4vSettings
newF4vSettings  = F4vSettings { "MoovPlacement": Nothing }

-- | Constructs F4vSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newF4vSettings' :: ( { "MoovPlacement" :: Maybe (F4vMoovPlacement) } -> {"MoovPlacement" :: Maybe (F4vMoovPlacement) } ) -> F4vSettings
newF4vSettings'  customize = (F4vSettings <<< customize) { "MoovPlacement": Nothing }



-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to FILE_GROUP_SETTINGS.
newtype FileGroupSettings = FileGroupSettings 
  { "Destination" :: Maybe (String)
  }
derive instance newtypeFileGroupSettings :: Newtype FileGroupSettings _
derive instance repGenericFileGroupSettings :: Generic FileGroupSettings _
instance showFileGroupSettings :: Show FileGroupSettings where show = genericShow
instance decodeFileGroupSettings :: Decode FileGroupSettings where decode = genericDecode options
instance encodeFileGroupSettings :: Encode FileGroupSettings where encode = genericEncode options

-- | Constructs FileGroupSettings from required parameters
newFileGroupSettings :: FileGroupSettings
newFileGroupSettings  = FileGroupSettings { "Destination": Nothing }

-- | Constructs FileGroupSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFileGroupSettings' :: ( { "Destination" :: Maybe (String) } -> {"Destination" :: Maybe (String) } ) -> FileGroupSettings
newFileGroupSettings'  customize = (FileGroupSettings <<< customize) { "Destination": Nothing }



-- | If set to UPCONVERT, 608 caption data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
newtype FileSourceConvert608To708 = FileSourceConvert608To708 String
derive instance newtypeFileSourceConvert608To708 :: Newtype FileSourceConvert608To708 _
derive instance repGenericFileSourceConvert608To708 :: Generic FileSourceConvert608To708 _
instance showFileSourceConvert608To708 :: Show FileSourceConvert608To708 where show = genericShow
instance decodeFileSourceConvert608To708 :: Decode FileSourceConvert608To708 where decode = genericDecode options
instance encodeFileSourceConvert608To708 :: Encode FileSourceConvert608To708 where encode = genericEncode options



-- | Settings for File-based Captions in Source
newtype FileSourceSettings = FileSourceSettings 
  { "Convert608To708" :: Maybe (FileSourceConvert608To708)
  , "SourceFile" :: Maybe (String)
  , "TimeDelta" :: Maybe (Int)
  }
derive instance newtypeFileSourceSettings :: Newtype FileSourceSettings _
derive instance repGenericFileSourceSettings :: Generic FileSourceSettings _
instance showFileSourceSettings :: Show FileSourceSettings where show = genericShow
instance decodeFileSourceSettings :: Decode FileSourceSettings where decode = genericDecode options
instance encodeFileSourceSettings :: Encode FileSourceSettings where encode = genericEncode options

-- | Constructs FileSourceSettings from required parameters
newFileSourceSettings :: FileSourceSettings
newFileSourceSettings  = FileSourceSettings { "Convert608To708": Nothing, "SourceFile": Nothing, "TimeDelta": Nothing }

-- | Constructs FileSourceSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFileSourceSettings' :: ( { "Convert608To708" :: Maybe (FileSourceConvert608To708) , "SourceFile" :: Maybe (String) , "TimeDelta" :: Maybe (Int) } -> {"Convert608To708" :: Maybe (FileSourceConvert608To708) , "SourceFile" :: Maybe (String) , "TimeDelta" :: Maybe (Int) } ) -> FileSourceSettings
newFileSourceSettings'  customize = (FileSourceSettings <<< customize) { "Convert608To708": Nothing, "SourceFile": Nothing, "TimeDelta": Nothing }



-- | You don't have permissions for this action with the credentials you sent.
newtype ForbiddenException = ForbiddenException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeForbiddenException :: Newtype ForbiddenException _
derive instance repGenericForbiddenException :: Generic ForbiddenException _
instance showForbiddenException :: Show ForbiddenException where show = genericShow
instance decodeForbiddenException :: Decode ForbiddenException where decode = genericDecode options
instance encodeForbiddenException :: Encode ForbiddenException where encode = genericEncode options

-- | Constructs ForbiddenException from required parameters
newForbiddenException :: ForbiddenException
newForbiddenException  = ForbiddenException { "Message": Nothing }

-- | Constructs ForbiddenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForbiddenException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> ForbiddenException
newForbiddenException'  customize = (ForbiddenException <<< customize) { "Message": Nothing }



-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE.
newtype FrameCaptureSettings = FrameCaptureSettings 
  { "FramerateDenominator" :: Maybe (Int)
  , "FramerateNumerator" :: Maybe (Int)
  , "MaxCaptures" :: Maybe (Int)
  , "Quality" :: Maybe (Int)
  }
derive instance newtypeFrameCaptureSettings :: Newtype FrameCaptureSettings _
derive instance repGenericFrameCaptureSettings :: Generic FrameCaptureSettings _
instance showFrameCaptureSettings :: Show FrameCaptureSettings where show = genericShow
instance decodeFrameCaptureSettings :: Decode FrameCaptureSettings where decode = genericDecode options
instance encodeFrameCaptureSettings :: Encode FrameCaptureSettings where encode = genericEncode options

-- | Constructs FrameCaptureSettings from required parameters
newFrameCaptureSettings :: FrameCaptureSettings
newFrameCaptureSettings  = FrameCaptureSettings { "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "MaxCaptures": Nothing, "Quality": Nothing }

-- | Constructs FrameCaptureSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFrameCaptureSettings' :: ( { "FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "MaxCaptures" :: Maybe (Int) , "Quality" :: Maybe (Int) } -> {"FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "MaxCaptures" :: Maybe (Int) , "Quality" :: Maybe (Int) } ) -> FrameCaptureSettings
newFrameCaptureSettings'  customize = (FrameCaptureSettings <<< customize) { "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "MaxCaptures": Nothing, "Quality": Nothing }



newtype GetJobRequest = GetJobRequest 
  { "Id" :: (String)
  }
derive instance newtypeGetJobRequest :: Newtype GetJobRequest _
derive instance repGenericGetJobRequest :: Generic GetJobRequest _
instance showGetJobRequest :: Show GetJobRequest where show = genericShow
instance decodeGetJobRequest :: Decode GetJobRequest where decode = genericDecode options
instance encodeGetJobRequest :: Encode GetJobRequest where encode = genericEncode options

-- | Constructs GetJobRequest from required parameters
newGetJobRequest :: String -> GetJobRequest
newGetJobRequest _Id = GetJobRequest { "Id": _Id }

-- | Constructs GetJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> GetJobRequest
newGetJobRequest' _Id customize = (GetJobRequest <<< customize) { "Id": _Id }



newtype GetJobResponse = GetJobResponse 
  { "Job" :: Maybe (Job)
  }
derive instance newtypeGetJobResponse :: Newtype GetJobResponse _
derive instance repGenericGetJobResponse :: Generic GetJobResponse _
instance showGetJobResponse :: Show GetJobResponse where show = genericShow
instance decodeGetJobResponse :: Decode GetJobResponse where decode = genericDecode options
instance encodeGetJobResponse :: Encode GetJobResponse where encode = genericEncode options

-- | Constructs GetJobResponse from required parameters
newGetJobResponse :: GetJobResponse
newGetJobResponse  = GetJobResponse { "Job": Nothing }

-- | Constructs GetJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobResponse' :: ( { "Job" :: Maybe (Job) } -> {"Job" :: Maybe (Job) } ) -> GetJobResponse
newGetJobResponse'  customize = (GetJobResponse <<< customize) { "Job": Nothing }



newtype GetJobTemplateRequest = GetJobTemplateRequest 
  { "Name" :: (String)
  }
derive instance newtypeGetJobTemplateRequest :: Newtype GetJobTemplateRequest _
derive instance repGenericGetJobTemplateRequest :: Generic GetJobTemplateRequest _
instance showGetJobTemplateRequest :: Show GetJobTemplateRequest where show = genericShow
instance decodeGetJobTemplateRequest :: Decode GetJobTemplateRequest where decode = genericDecode options
instance encodeGetJobTemplateRequest :: Encode GetJobTemplateRequest where encode = genericEncode options

-- | Constructs GetJobTemplateRequest from required parameters
newGetJobTemplateRequest :: String -> GetJobTemplateRequest
newGetJobTemplateRequest _Name = GetJobTemplateRequest { "Name": _Name }

-- | Constructs GetJobTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobTemplateRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> GetJobTemplateRequest
newGetJobTemplateRequest' _Name customize = (GetJobTemplateRequest <<< customize) { "Name": _Name }



newtype GetJobTemplateResponse = GetJobTemplateResponse 
  { "JobTemplate" :: Maybe (JobTemplate)
  }
derive instance newtypeGetJobTemplateResponse :: Newtype GetJobTemplateResponse _
derive instance repGenericGetJobTemplateResponse :: Generic GetJobTemplateResponse _
instance showGetJobTemplateResponse :: Show GetJobTemplateResponse where show = genericShow
instance decodeGetJobTemplateResponse :: Decode GetJobTemplateResponse where decode = genericDecode options
instance encodeGetJobTemplateResponse :: Encode GetJobTemplateResponse where encode = genericEncode options

-- | Constructs GetJobTemplateResponse from required parameters
newGetJobTemplateResponse :: GetJobTemplateResponse
newGetJobTemplateResponse  = GetJobTemplateResponse { "JobTemplate": Nothing }

-- | Constructs GetJobTemplateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobTemplateResponse' :: ( { "JobTemplate" :: Maybe (JobTemplate) } -> {"JobTemplate" :: Maybe (JobTemplate) } ) -> GetJobTemplateResponse
newGetJobTemplateResponse'  customize = (GetJobTemplateResponse <<< customize) { "JobTemplate": Nothing }



newtype GetPresetRequest = GetPresetRequest 
  { "Name" :: (String)
  }
derive instance newtypeGetPresetRequest :: Newtype GetPresetRequest _
derive instance repGenericGetPresetRequest :: Generic GetPresetRequest _
instance showGetPresetRequest :: Show GetPresetRequest where show = genericShow
instance decodeGetPresetRequest :: Decode GetPresetRequest where decode = genericDecode options
instance encodeGetPresetRequest :: Encode GetPresetRequest where encode = genericEncode options

-- | Constructs GetPresetRequest from required parameters
newGetPresetRequest :: String -> GetPresetRequest
newGetPresetRequest _Name = GetPresetRequest { "Name": _Name }

-- | Constructs GetPresetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPresetRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> GetPresetRequest
newGetPresetRequest' _Name customize = (GetPresetRequest <<< customize) { "Name": _Name }



newtype GetPresetResponse = GetPresetResponse 
  { "Preset" :: Maybe (Preset)
  }
derive instance newtypeGetPresetResponse :: Newtype GetPresetResponse _
derive instance repGenericGetPresetResponse :: Generic GetPresetResponse _
instance showGetPresetResponse :: Show GetPresetResponse where show = genericShow
instance decodeGetPresetResponse :: Decode GetPresetResponse where decode = genericDecode options
instance encodeGetPresetResponse :: Encode GetPresetResponse where encode = genericEncode options

-- | Constructs GetPresetResponse from required parameters
newGetPresetResponse :: GetPresetResponse
newGetPresetResponse  = GetPresetResponse { "Preset": Nothing }

-- | Constructs GetPresetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPresetResponse' :: ( { "Preset" :: Maybe (Preset) } -> {"Preset" :: Maybe (Preset) } ) -> GetPresetResponse
newGetPresetResponse'  customize = (GetPresetResponse <<< customize) { "Preset": Nothing }



newtype GetQueueRequest = GetQueueRequest 
  { "Name" :: (String)
  }
derive instance newtypeGetQueueRequest :: Newtype GetQueueRequest _
derive instance repGenericGetQueueRequest :: Generic GetQueueRequest _
instance showGetQueueRequest :: Show GetQueueRequest where show = genericShow
instance decodeGetQueueRequest :: Decode GetQueueRequest where decode = genericDecode options
instance encodeGetQueueRequest :: Encode GetQueueRequest where encode = genericEncode options

-- | Constructs GetQueueRequest from required parameters
newGetQueueRequest :: String -> GetQueueRequest
newGetQueueRequest _Name = GetQueueRequest { "Name": _Name }

-- | Constructs GetQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueueRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> GetQueueRequest
newGetQueueRequest' _Name customize = (GetQueueRequest <<< customize) { "Name": _Name }



newtype GetQueueResponse = GetQueueResponse 
  { "Queue" :: Maybe (Queue)
  }
derive instance newtypeGetQueueResponse :: Newtype GetQueueResponse _
derive instance repGenericGetQueueResponse :: Generic GetQueueResponse _
instance showGetQueueResponse :: Show GetQueueResponse where show = genericShow
instance decodeGetQueueResponse :: Decode GetQueueResponse where decode = genericDecode options
instance encodeGetQueueResponse :: Encode GetQueueResponse where encode = genericEncode options

-- | Constructs GetQueueResponse from required parameters
newGetQueueResponse :: GetQueueResponse
newGetQueueResponse  = GetQueueResponse { "Queue": Nothing }

-- | Constructs GetQueueResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueueResponse' :: ( { "Queue" :: Maybe (Queue) } -> {"Queue" :: Maybe (Queue) } ) -> GetQueueResponse
newGetQueueResponse'  customize = (GetQueueResponse <<< customize) { "Queue": Nothing }



-- | Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
newtype H264AdaptiveQuantization = H264AdaptiveQuantization String
derive instance newtypeH264AdaptiveQuantization :: Newtype H264AdaptiveQuantization _
derive instance repGenericH264AdaptiveQuantization :: Generic H264AdaptiveQuantization _
instance showH264AdaptiveQuantization :: Show H264AdaptiveQuantization where show = genericShow
instance decodeH264AdaptiveQuantization :: Decode H264AdaptiveQuantization where decode = genericDecode options
instance encodeH264AdaptiveQuantization :: Encode H264AdaptiveQuantization where encode = genericEncode options



-- | H.264 Level.
newtype H264CodecLevel = H264CodecLevel String
derive instance newtypeH264CodecLevel :: Newtype H264CodecLevel _
derive instance repGenericH264CodecLevel :: Generic H264CodecLevel _
instance showH264CodecLevel :: Show H264CodecLevel where show = genericShow
instance decodeH264CodecLevel :: Decode H264CodecLevel where decode = genericDecode options
instance encodeH264CodecLevel :: Encode H264CodecLevel where encode = genericEncode options



-- | H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.
newtype H264CodecProfile = H264CodecProfile String
derive instance newtypeH264CodecProfile :: Newtype H264CodecProfile _
derive instance repGenericH264CodecProfile :: Generic H264CodecProfile _
instance showH264CodecProfile :: Show H264CodecProfile where show = genericShow
instance decodeH264CodecProfile :: Decode H264CodecProfile where decode = genericDecode options
instance encodeH264CodecProfile :: Encode H264CodecProfile where encode = genericEncode options



-- | Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.
newtype H264EntropyEncoding = H264EntropyEncoding String
derive instance newtypeH264EntropyEncoding :: Newtype H264EntropyEncoding _
derive instance repGenericH264EntropyEncoding :: Generic H264EntropyEncoding _
instance showH264EntropyEncoding :: Show H264EntropyEncoding where show = genericShow
instance decodeH264EntropyEncoding :: Decode H264EntropyEncoding where decode = genericDecode options
instance encodeH264EntropyEncoding :: Encode H264EntropyEncoding where encode = genericEncode options



-- | Choosing FORCE_FIELD disables PAFF encoding for interlaced outputs.
newtype H264FieldEncoding = H264FieldEncoding String
derive instance newtypeH264FieldEncoding :: Newtype H264FieldEncoding _
derive instance repGenericH264FieldEncoding :: Generic H264FieldEncoding _
instance showH264FieldEncoding :: Show H264FieldEncoding where show = genericShow
instance decodeH264FieldEncoding :: Decode H264FieldEncoding where decode = genericDecode options
instance encodeH264FieldEncoding :: Encode H264FieldEncoding where encode = genericEncode options



-- | Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
newtype H264FlickerAdaptiveQuantization = H264FlickerAdaptiveQuantization String
derive instance newtypeH264FlickerAdaptiveQuantization :: Newtype H264FlickerAdaptiveQuantization _
derive instance repGenericH264FlickerAdaptiveQuantization :: Generic H264FlickerAdaptiveQuantization _
instance showH264FlickerAdaptiveQuantization :: Show H264FlickerAdaptiveQuantization where show = genericShow
instance decodeH264FlickerAdaptiveQuantization :: Decode H264FlickerAdaptiveQuantization where decode = genericDecode options
instance encodeH264FlickerAdaptiveQuantization :: Encode H264FlickerAdaptiveQuantization where encode = genericEncode options



-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
newtype H264FramerateControl = H264FramerateControl String
derive instance newtypeH264FramerateControl :: Newtype H264FramerateControl _
derive instance repGenericH264FramerateControl :: Generic H264FramerateControl _
instance showH264FramerateControl :: Show H264FramerateControl where show = genericShow
instance decodeH264FramerateControl :: Decode H264FramerateControl where decode = genericDecode options
instance encodeH264FramerateControl :: Encode H264FramerateControl where encode = genericEncode options



-- | When set to INTERPOLATE, produces smoother motion during framerate conversion.
newtype H264FramerateConversionAlgorithm = H264FramerateConversionAlgorithm String
derive instance newtypeH264FramerateConversionAlgorithm :: Newtype H264FramerateConversionAlgorithm _
derive instance repGenericH264FramerateConversionAlgorithm :: Generic H264FramerateConversionAlgorithm _
instance showH264FramerateConversionAlgorithm :: Show H264FramerateConversionAlgorithm where show = genericShow
instance decodeH264FramerateConversionAlgorithm :: Decode H264FramerateConversionAlgorithm where decode = genericDecode options
instance encodeH264FramerateConversionAlgorithm :: Encode H264FramerateConversionAlgorithm where encode = genericEncode options



-- | If enable, use reference B frames for GOP structures that have B frames > 1.
newtype H264GopBReference = H264GopBReference String
derive instance newtypeH264GopBReference :: Newtype H264GopBReference _
derive instance repGenericH264GopBReference :: Generic H264GopBReference _
instance showH264GopBReference :: Show H264GopBReference where show = genericShow
instance decodeH264GopBReference :: Decode H264GopBReference where decode = genericDecode options
instance encodeH264GopBReference :: Encode H264GopBReference where encode = genericEncode options



-- | Indicates if the GOP Size in H264 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
newtype H264GopSizeUnits = H264GopSizeUnits String
derive instance newtypeH264GopSizeUnits :: Newtype H264GopSizeUnits _
derive instance repGenericH264GopSizeUnits :: Generic H264GopSizeUnits _
instance showH264GopSizeUnits :: Show H264GopSizeUnits where show = genericShow
instance decodeH264GopSizeUnits :: Decode H264GopSizeUnits where decode = genericDecode options
instance encodeH264GopSizeUnits :: Encode H264GopSizeUnits where encode = genericEncode options



-- | Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
newtype H264InterlaceMode = H264InterlaceMode String
derive instance newtypeH264InterlaceMode :: Newtype H264InterlaceMode _
derive instance repGenericH264InterlaceMode :: Generic H264InterlaceMode _
instance showH264InterlaceMode :: Show H264InterlaceMode where show = genericShow
instance decodeH264InterlaceMode :: Decode H264InterlaceMode where decode = genericDecode options
instance encodeH264InterlaceMode :: Encode H264InterlaceMode where encode = genericEncode options



-- | Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
newtype H264ParControl = H264ParControl String
derive instance newtypeH264ParControl :: Newtype H264ParControl _
derive instance repGenericH264ParControl :: Generic H264ParControl _
instance showH264ParControl :: Show H264ParControl where show = genericShow
instance decodeH264ParControl :: Decode H264ParControl where decode = genericDecode options
instance encodeH264ParControl :: Encode H264ParControl where encode = genericEncode options



-- | Use Quality tuning level (H264QualityTuningLevel) to specifiy whether to use fast single-pass, high-quality singlepass, or high-quality multipass video encoding.
newtype H264QualityTuningLevel = H264QualityTuningLevel String
derive instance newtypeH264QualityTuningLevel :: Newtype H264QualityTuningLevel _
derive instance repGenericH264QualityTuningLevel :: Generic H264QualityTuningLevel _
instance showH264QualityTuningLevel :: Show H264QualityTuningLevel where show = genericShow
instance decodeH264QualityTuningLevel :: Decode H264QualityTuningLevel where decode = genericDecode options
instance encodeH264QualityTuningLevel :: Encode H264QualityTuningLevel where encode = genericEncode options



-- | Rate control mode. CQ uses constant quantizer (qp), ABR (average bitrate) does not write HRD parameters.
newtype H264RateControlMode = H264RateControlMode String
derive instance newtypeH264RateControlMode :: Newtype H264RateControlMode _
derive instance repGenericH264RateControlMode :: Generic H264RateControlMode _
instance showH264RateControlMode :: Show H264RateControlMode where show = genericShow
instance decodeH264RateControlMode :: Decode H264RateControlMode where decode = genericDecode options
instance encodeH264RateControlMode :: Encode H264RateControlMode where encode = genericEncode options



-- | Places a PPS header on each encoded picture, even if repeated.
newtype H264RepeatPps = H264RepeatPps String
derive instance newtypeH264RepeatPps :: Newtype H264RepeatPps _
derive instance repGenericH264RepeatPps :: Generic H264RepeatPps _
instance showH264RepeatPps :: Show H264RepeatPps where show = genericShow
instance decodeH264RepeatPps :: Decode H264RepeatPps where decode = genericDecode options
instance encodeH264RepeatPps :: Encode H264RepeatPps where encode = genericEncode options



-- | Scene change detection (inserts I-frames on scene changes).
newtype H264SceneChangeDetect = H264SceneChangeDetect String
derive instance newtypeH264SceneChangeDetect :: Newtype H264SceneChangeDetect _
derive instance repGenericH264SceneChangeDetect :: Generic H264SceneChangeDetect _
instance showH264SceneChangeDetect :: Show H264SceneChangeDetect where show = genericShow
instance decodeH264SceneChangeDetect :: Decode H264SceneChangeDetect where decode = genericDecode options
instance encodeH264SceneChangeDetect :: Encode H264SceneChangeDetect where encode = genericEncode options



-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264.
newtype H264Settings = H264Settings 
  { "AdaptiveQuantization" :: Maybe (H264AdaptiveQuantization)
  , "Bitrate" :: Maybe (Int)
  , "CodecLevel" :: Maybe (H264CodecLevel)
  , "CodecProfile" :: Maybe (H264CodecProfile)
  , "EntropyEncoding" :: Maybe (H264EntropyEncoding)
  , "FieldEncoding" :: Maybe (H264FieldEncoding)
  , "FlickerAdaptiveQuantization" :: Maybe (H264FlickerAdaptiveQuantization)
  , "FramerateControl" :: Maybe (H264FramerateControl)
  , "FramerateConversionAlgorithm" :: Maybe (H264FramerateConversionAlgorithm)
  , "FramerateDenominator" :: Maybe (Int)
  , "FramerateNumerator" :: Maybe (Int)
  , "GopBReference" :: Maybe (H264GopBReference)
  , "GopClosedCadence" :: Maybe (Int)
  , "GopSize" :: Maybe (Number)
  , "GopSizeUnits" :: Maybe (H264GopSizeUnits)
  , "HrdBufferInitialFillPercentage" :: Maybe (Int)
  , "HrdBufferSize" :: Maybe (Int)
  , "InterlaceMode" :: Maybe (H264InterlaceMode)
  , "MaxBitrate" :: Maybe (Int)
  , "MinIInterval" :: Maybe (Int)
  , "NumberBFramesBetweenReferenceFrames" :: Maybe (Int)
  , "NumberReferenceFrames" :: Maybe (Int)
  , "ParControl" :: Maybe (H264ParControl)
  , "ParDenominator" :: Maybe (Int)
  , "ParNumerator" :: Maybe (Int)
  , "QualityTuningLevel" :: Maybe (H264QualityTuningLevel)
  , "RateControlMode" :: Maybe (H264RateControlMode)
  , "RepeatPps" :: Maybe (H264RepeatPps)
  , "SceneChangeDetect" :: Maybe (H264SceneChangeDetect)
  , "Slices" :: Maybe (Int)
  , "SlowPal" :: Maybe (H264SlowPal)
  , "Softness" :: Maybe (Int)
  , "SpatialAdaptiveQuantization" :: Maybe (H264SpatialAdaptiveQuantization)
  , "Syntax" :: Maybe (H264Syntax)
  , "Telecine" :: Maybe (H264Telecine)
  , "TemporalAdaptiveQuantization" :: Maybe (H264TemporalAdaptiveQuantization)
  , "UnregisteredSeiTimecode" :: Maybe (H264UnregisteredSeiTimecode)
  }
derive instance newtypeH264Settings :: Newtype H264Settings _
derive instance repGenericH264Settings :: Generic H264Settings _
instance showH264Settings :: Show H264Settings where show = genericShow
instance decodeH264Settings :: Decode H264Settings where decode = genericDecode options
instance encodeH264Settings :: Encode H264Settings where encode = genericEncode options

-- | Constructs H264Settings from required parameters
newH264Settings :: H264Settings
newH264Settings  = H264Settings { "AdaptiveQuantization": Nothing, "Bitrate": Nothing, "CodecLevel": Nothing, "CodecProfile": Nothing, "EntropyEncoding": Nothing, "FieldEncoding": Nothing, "FlickerAdaptiveQuantization": Nothing, "FramerateControl": Nothing, "FramerateConversionAlgorithm": Nothing, "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "GopBReference": Nothing, "GopClosedCadence": Nothing, "GopSize": Nothing, "GopSizeUnits": Nothing, "HrdBufferInitialFillPercentage": Nothing, "HrdBufferSize": Nothing, "InterlaceMode": Nothing, "MaxBitrate": Nothing, "MinIInterval": Nothing, "NumberBFramesBetweenReferenceFrames": Nothing, "NumberReferenceFrames": Nothing, "ParControl": Nothing, "ParDenominator": Nothing, "ParNumerator": Nothing, "QualityTuningLevel": Nothing, "RateControlMode": Nothing, "RepeatPps": Nothing, "SceneChangeDetect": Nothing, "Slices": Nothing, "SlowPal": Nothing, "Softness": Nothing, "SpatialAdaptiveQuantization": Nothing, "Syntax": Nothing, "Telecine": Nothing, "TemporalAdaptiveQuantization": Nothing, "UnregisteredSeiTimecode": Nothing }

-- | Constructs H264Settings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newH264Settings' :: ( { "AdaptiveQuantization" :: Maybe (H264AdaptiveQuantization) , "Bitrate" :: Maybe (Int) , "CodecLevel" :: Maybe (H264CodecLevel) , "CodecProfile" :: Maybe (H264CodecProfile) , "EntropyEncoding" :: Maybe (H264EntropyEncoding) , "FieldEncoding" :: Maybe (H264FieldEncoding) , "FlickerAdaptiveQuantization" :: Maybe (H264FlickerAdaptiveQuantization) , "FramerateControl" :: Maybe (H264FramerateControl) , "FramerateConversionAlgorithm" :: Maybe (H264FramerateConversionAlgorithm) , "FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "GopBReference" :: Maybe (H264GopBReference) , "GopClosedCadence" :: Maybe (Int) , "GopSize" :: Maybe (Number) , "GopSizeUnits" :: Maybe (H264GopSizeUnits) , "HrdBufferInitialFillPercentage" :: Maybe (Int) , "HrdBufferSize" :: Maybe (Int) , "InterlaceMode" :: Maybe (H264InterlaceMode) , "MaxBitrate" :: Maybe (Int) , "MinIInterval" :: Maybe (Int) , "NumberBFramesBetweenReferenceFrames" :: Maybe (Int) , "NumberReferenceFrames" :: Maybe (Int) , "ParControl" :: Maybe (H264ParControl) , "ParDenominator" :: Maybe (Int) , "ParNumerator" :: Maybe (Int) , "QualityTuningLevel" :: Maybe (H264QualityTuningLevel) , "RateControlMode" :: Maybe (H264RateControlMode) , "RepeatPps" :: Maybe (H264RepeatPps) , "SceneChangeDetect" :: Maybe (H264SceneChangeDetect) , "Slices" :: Maybe (Int) , "SlowPal" :: Maybe (H264SlowPal) , "Softness" :: Maybe (Int) , "SpatialAdaptiveQuantization" :: Maybe (H264SpatialAdaptiveQuantization) , "Syntax" :: Maybe (H264Syntax) , "Telecine" :: Maybe (H264Telecine) , "TemporalAdaptiveQuantization" :: Maybe (H264TemporalAdaptiveQuantization) , "UnregisteredSeiTimecode" :: Maybe (H264UnregisteredSeiTimecode) } -> {"AdaptiveQuantization" :: Maybe (H264AdaptiveQuantization) , "Bitrate" :: Maybe (Int) , "CodecLevel" :: Maybe (H264CodecLevel) , "CodecProfile" :: Maybe (H264CodecProfile) , "EntropyEncoding" :: Maybe (H264EntropyEncoding) , "FieldEncoding" :: Maybe (H264FieldEncoding) , "FlickerAdaptiveQuantization" :: Maybe (H264FlickerAdaptiveQuantization) , "FramerateControl" :: Maybe (H264FramerateControl) , "FramerateConversionAlgorithm" :: Maybe (H264FramerateConversionAlgorithm) , "FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "GopBReference" :: Maybe (H264GopBReference) , "GopClosedCadence" :: Maybe (Int) , "GopSize" :: Maybe (Number) , "GopSizeUnits" :: Maybe (H264GopSizeUnits) , "HrdBufferInitialFillPercentage" :: Maybe (Int) , "HrdBufferSize" :: Maybe (Int) , "InterlaceMode" :: Maybe (H264InterlaceMode) , "MaxBitrate" :: Maybe (Int) , "MinIInterval" :: Maybe (Int) , "NumberBFramesBetweenReferenceFrames" :: Maybe (Int) , "NumberReferenceFrames" :: Maybe (Int) , "ParControl" :: Maybe (H264ParControl) , "ParDenominator" :: Maybe (Int) , "ParNumerator" :: Maybe (Int) , "QualityTuningLevel" :: Maybe (H264QualityTuningLevel) , "RateControlMode" :: Maybe (H264RateControlMode) , "RepeatPps" :: Maybe (H264RepeatPps) , "SceneChangeDetect" :: Maybe (H264SceneChangeDetect) , "Slices" :: Maybe (Int) , "SlowPal" :: Maybe (H264SlowPal) , "Softness" :: Maybe (Int) , "SpatialAdaptiveQuantization" :: Maybe (H264SpatialAdaptiveQuantization) , "Syntax" :: Maybe (H264Syntax) , "Telecine" :: Maybe (H264Telecine) , "TemporalAdaptiveQuantization" :: Maybe (H264TemporalAdaptiveQuantization) , "UnregisteredSeiTimecode" :: Maybe (H264UnregisteredSeiTimecode) } ) -> H264Settings
newH264Settings'  customize = (H264Settings <<< customize) { "AdaptiveQuantization": Nothing, "Bitrate": Nothing, "CodecLevel": Nothing, "CodecProfile": Nothing, "EntropyEncoding": Nothing, "FieldEncoding": Nothing, "FlickerAdaptiveQuantization": Nothing, "FramerateControl": Nothing, "FramerateConversionAlgorithm": Nothing, "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "GopBReference": Nothing, "GopClosedCadence": Nothing, "GopSize": Nothing, "GopSizeUnits": Nothing, "HrdBufferInitialFillPercentage": Nothing, "HrdBufferSize": Nothing, "InterlaceMode": Nothing, "MaxBitrate": Nothing, "MinIInterval": Nothing, "NumberBFramesBetweenReferenceFrames": Nothing, "NumberReferenceFrames": Nothing, "ParControl": Nothing, "ParDenominator": Nothing, "ParNumerator": Nothing, "QualityTuningLevel": Nothing, "RateControlMode": Nothing, "RepeatPps": Nothing, "SceneChangeDetect": Nothing, "Slices": Nothing, "SlowPal": Nothing, "Softness": Nothing, "SpatialAdaptiveQuantization": Nothing, "Syntax": Nothing, "Telecine": Nothing, "TemporalAdaptiveQuantization": Nothing, "UnregisteredSeiTimecode": Nothing }



-- | Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
newtype H264SlowPal = H264SlowPal String
derive instance newtypeH264SlowPal :: Newtype H264SlowPal _
derive instance repGenericH264SlowPal :: Generic H264SlowPal _
instance showH264SlowPal :: Show H264SlowPal where show = genericShow
instance decodeH264SlowPal :: Decode H264SlowPal where decode = genericDecode options
instance encodeH264SlowPal :: Encode H264SlowPal where encode = genericEncode options



-- | Adjust quantization within each frame based on spatial variation of content complexity.
newtype H264SpatialAdaptiveQuantization = H264SpatialAdaptiveQuantization String
derive instance newtypeH264SpatialAdaptiveQuantization :: Newtype H264SpatialAdaptiveQuantization _
derive instance repGenericH264SpatialAdaptiveQuantization :: Generic H264SpatialAdaptiveQuantization _
instance showH264SpatialAdaptiveQuantization :: Show H264SpatialAdaptiveQuantization where show = genericShow
instance decodeH264SpatialAdaptiveQuantization :: Decode H264SpatialAdaptiveQuantization where decode = genericDecode options
instance encodeH264SpatialAdaptiveQuantization :: Encode H264SpatialAdaptiveQuantization where encode = genericEncode options



-- | Produces a bitstream compliant with SMPTE RP-2027.
newtype H264Syntax = H264Syntax String
derive instance newtypeH264Syntax :: Newtype H264Syntax _
derive instance repGenericH264Syntax :: Generic H264Syntax _
instance showH264Syntax :: Show H264Syntax where show = genericShow
instance decodeH264Syntax :: Decode H264Syntax where decode = genericDecode options
instance encodeH264Syntax :: Encode H264Syntax where encode = genericEncode options



-- | This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
newtype H264Telecine = H264Telecine String
derive instance newtypeH264Telecine :: Newtype H264Telecine _
derive instance repGenericH264Telecine :: Generic H264Telecine _
instance showH264Telecine :: Show H264Telecine where show = genericShow
instance decodeH264Telecine :: Decode H264Telecine where decode = genericDecode options
instance encodeH264Telecine :: Encode H264Telecine where encode = genericEncode options



-- | Adjust quantization within each frame based on temporal variation of content complexity.
newtype H264TemporalAdaptiveQuantization = H264TemporalAdaptiveQuantization String
derive instance newtypeH264TemporalAdaptiveQuantization :: Newtype H264TemporalAdaptiveQuantization _
derive instance repGenericH264TemporalAdaptiveQuantization :: Generic H264TemporalAdaptiveQuantization _
instance showH264TemporalAdaptiveQuantization :: Show H264TemporalAdaptiveQuantization where show = genericShow
instance decodeH264TemporalAdaptiveQuantization :: Decode H264TemporalAdaptiveQuantization where decode = genericDecode options
instance encodeH264TemporalAdaptiveQuantization :: Encode H264TemporalAdaptiveQuantization where encode = genericEncode options



-- | Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
newtype H264UnregisteredSeiTimecode = H264UnregisteredSeiTimecode String
derive instance newtypeH264UnregisteredSeiTimecode :: Newtype H264UnregisteredSeiTimecode _
derive instance repGenericH264UnregisteredSeiTimecode :: Generic H264UnregisteredSeiTimecode _
instance showH264UnregisteredSeiTimecode :: Show H264UnregisteredSeiTimecode where show = genericShow
instance decodeH264UnregisteredSeiTimecode :: Decode H264UnregisteredSeiTimecode where decode = genericDecode options
instance encodeH264UnregisteredSeiTimecode :: Encode H264UnregisteredSeiTimecode where encode = genericEncode options



-- | Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
newtype H265AdaptiveQuantization = H265AdaptiveQuantization String
derive instance newtypeH265AdaptiveQuantization :: Newtype H265AdaptiveQuantization _
derive instance repGenericH265AdaptiveQuantization :: Generic H265AdaptiveQuantization _
instance showH265AdaptiveQuantization :: Show H265AdaptiveQuantization where show = genericShow
instance decodeH265AdaptiveQuantization :: Decode H265AdaptiveQuantization where decode = genericDecode options
instance encodeH265AdaptiveQuantization :: Encode H265AdaptiveQuantization where encode = genericEncode options



-- | Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
newtype H265AlternateTransferFunctionSei = H265AlternateTransferFunctionSei String
derive instance newtypeH265AlternateTransferFunctionSei :: Newtype H265AlternateTransferFunctionSei _
derive instance repGenericH265AlternateTransferFunctionSei :: Generic H265AlternateTransferFunctionSei _
instance showH265AlternateTransferFunctionSei :: Show H265AlternateTransferFunctionSei where show = genericShow
instance decodeH265AlternateTransferFunctionSei :: Decode H265AlternateTransferFunctionSei where decode = genericDecode options
instance encodeH265AlternateTransferFunctionSei :: Encode H265AlternateTransferFunctionSei where encode = genericEncode options



-- | H.265 Level.
newtype H265CodecLevel = H265CodecLevel String
derive instance newtypeH265CodecLevel :: Newtype H265CodecLevel _
derive instance repGenericH265CodecLevel :: Generic H265CodecLevel _
instance showH265CodecLevel :: Show H265CodecLevel where show = genericShow
instance decodeH265CodecLevel :: Decode H265CodecLevel where decode = genericDecode options
instance encodeH265CodecLevel :: Encode H265CodecLevel where encode = genericEncode options



-- | Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so "Main/High" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License.
newtype H265CodecProfile = H265CodecProfile String
derive instance newtypeH265CodecProfile :: Newtype H265CodecProfile _
derive instance repGenericH265CodecProfile :: Generic H265CodecProfile _
instance showH265CodecProfile :: Show H265CodecProfile where show = genericShow
instance decodeH265CodecProfile :: Decode H265CodecProfile where decode = genericDecode options
instance encodeH265CodecProfile :: Encode H265CodecProfile where encode = genericEncode options



-- | Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
newtype H265FlickerAdaptiveQuantization = H265FlickerAdaptiveQuantization String
derive instance newtypeH265FlickerAdaptiveQuantization :: Newtype H265FlickerAdaptiveQuantization _
derive instance repGenericH265FlickerAdaptiveQuantization :: Generic H265FlickerAdaptiveQuantization _
instance showH265FlickerAdaptiveQuantization :: Show H265FlickerAdaptiveQuantization where show = genericShow
instance decodeH265FlickerAdaptiveQuantization :: Decode H265FlickerAdaptiveQuantization where decode = genericDecode options
instance encodeH265FlickerAdaptiveQuantization :: Encode H265FlickerAdaptiveQuantization where encode = genericEncode options



-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
newtype H265FramerateControl = H265FramerateControl String
derive instance newtypeH265FramerateControl :: Newtype H265FramerateControl _
derive instance repGenericH265FramerateControl :: Generic H265FramerateControl _
instance showH265FramerateControl :: Show H265FramerateControl where show = genericShow
instance decodeH265FramerateControl :: Decode H265FramerateControl where decode = genericDecode options
instance encodeH265FramerateControl :: Encode H265FramerateControl where encode = genericEncode options



-- | When set to INTERPOLATE, produces smoother motion during framerate conversion.
newtype H265FramerateConversionAlgorithm = H265FramerateConversionAlgorithm String
derive instance newtypeH265FramerateConversionAlgorithm :: Newtype H265FramerateConversionAlgorithm _
derive instance repGenericH265FramerateConversionAlgorithm :: Generic H265FramerateConversionAlgorithm _
instance showH265FramerateConversionAlgorithm :: Show H265FramerateConversionAlgorithm where show = genericShow
instance decodeH265FramerateConversionAlgorithm :: Decode H265FramerateConversionAlgorithm where decode = genericDecode options
instance encodeH265FramerateConversionAlgorithm :: Encode H265FramerateConversionAlgorithm where encode = genericEncode options



-- | If enable, use reference B frames for GOP structures that have B frames > 1.
newtype H265GopBReference = H265GopBReference String
derive instance newtypeH265GopBReference :: Newtype H265GopBReference _
derive instance repGenericH265GopBReference :: Generic H265GopBReference _
instance showH265GopBReference :: Show H265GopBReference where show = genericShow
instance decodeH265GopBReference :: Decode H265GopBReference where decode = genericDecode options
instance encodeH265GopBReference :: Encode H265GopBReference where encode = genericEncode options



-- | Indicates if the GOP Size in H265 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
newtype H265GopSizeUnits = H265GopSizeUnits String
derive instance newtypeH265GopSizeUnits :: Newtype H265GopSizeUnits _
derive instance repGenericH265GopSizeUnits :: Generic H265GopSizeUnits _
instance showH265GopSizeUnits :: Show H265GopSizeUnits where show = genericShow
instance decodeH265GopSizeUnits :: Decode H265GopSizeUnits where decode = genericDecode options
instance encodeH265GopSizeUnits :: Encode H265GopSizeUnits where encode = genericEncode options



-- | Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
newtype H265InterlaceMode = H265InterlaceMode String
derive instance newtypeH265InterlaceMode :: Newtype H265InterlaceMode _
derive instance repGenericH265InterlaceMode :: Generic H265InterlaceMode _
instance showH265InterlaceMode :: Show H265InterlaceMode where show = genericShow
instance decodeH265InterlaceMode :: Decode H265InterlaceMode where decode = genericDecode options
instance encodeH265InterlaceMode :: Encode H265InterlaceMode where encode = genericEncode options



-- | Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
newtype H265ParControl = H265ParControl String
derive instance newtypeH265ParControl :: Newtype H265ParControl _
derive instance repGenericH265ParControl :: Generic H265ParControl _
instance showH265ParControl :: Show H265ParControl where show = genericShow
instance decodeH265ParControl :: Decode H265ParControl where decode = genericDecode options
instance encodeH265ParControl :: Encode H265ParControl where encode = genericEncode options



-- | Use Quality tuning level (H265QualityTuningLevel) to specifiy whether to use fast single-pass, high-quality singlepass, or high-quality multipass video encoding.
newtype H265QualityTuningLevel = H265QualityTuningLevel String
derive instance newtypeH265QualityTuningLevel :: Newtype H265QualityTuningLevel _
derive instance repGenericH265QualityTuningLevel :: Generic H265QualityTuningLevel _
instance showH265QualityTuningLevel :: Show H265QualityTuningLevel where show = genericShow
instance decodeH265QualityTuningLevel :: Decode H265QualityTuningLevel where decode = genericDecode options
instance encodeH265QualityTuningLevel :: Encode H265QualityTuningLevel where encode = genericEncode options



-- | Rate control mode. CQ uses constant quantizer (qp), ABR (average bitrate) does not write HRD parameters.
newtype H265RateControlMode = H265RateControlMode String
derive instance newtypeH265RateControlMode :: Newtype H265RateControlMode _
derive instance repGenericH265RateControlMode :: Generic H265RateControlMode _
instance showH265RateControlMode :: Show H265RateControlMode where show = genericShow
instance decodeH265RateControlMode :: Decode H265RateControlMode where decode = genericDecode options
instance encodeH265RateControlMode :: Encode H265RateControlMode where encode = genericEncode options



-- | Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content
newtype H265SampleAdaptiveOffsetFilterMode = H265SampleAdaptiveOffsetFilterMode String
derive instance newtypeH265SampleAdaptiveOffsetFilterMode :: Newtype H265SampleAdaptiveOffsetFilterMode _
derive instance repGenericH265SampleAdaptiveOffsetFilterMode :: Generic H265SampleAdaptiveOffsetFilterMode _
instance showH265SampleAdaptiveOffsetFilterMode :: Show H265SampleAdaptiveOffsetFilterMode where show = genericShow
instance decodeH265SampleAdaptiveOffsetFilterMode :: Decode H265SampleAdaptiveOffsetFilterMode where decode = genericDecode options
instance encodeH265SampleAdaptiveOffsetFilterMode :: Encode H265SampleAdaptiveOffsetFilterMode where encode = genericEncode options



-- | Scene change detection (inserts I-frames on scene changes).
newtype H265SceneChangeDetect = H265SceneChangeDetect String
derive instance newtypeH265SceneChangeDetect :: Newtype H265SceneChangeDetect _
derive instance repGenericH265SceneChangeDetect :: Generic H265SceneChangeDetect _
instance showH265SceneChangeDetect :: Show H265SceneChangeDetect where show = genericShow
instance decodeH265SceneChangeDetect :: Decode H265SceneChangeDetect where decode = genericDecode options
instance encodeH265SceneChangeDetect :: Encode H265SceneChangeDetect where encode = genericEncode options



-- | Settings for H265 codec
newtype H265Settings = H265Settings 
  { "AdaptiveQuantization" :: Maybe (H265AdaptiveQuantization)
  , "AlternateTransferFunctionSei" :: Maybe (H265AlternateTransferFunctionSei)
  , "Bitrate" :: Maybe (Int)
  , "CodecLevel" :: Maybe (H265CodecLevel)
  , "CodecProfile" :: Maybe (H265CodecProfile)
  , "FlickerAdaptiveQuantization" :: Maybe (H265FlickerAdaptiveQuantization)
  , "FramerateControl" :: Maybe (H265FramerateControl)
  , "FramerateConversionAlgorithm" :: Maybe (H265FramerateConversionAlgorithm)
  , "FramerateDenominator" :: Maybe (Int)
  , "FramerateNumerator" :: Maybe (Int)
  , "GopBReference" :: Maybe (H265GopBReference)
  , "GopClosedCadence" :: Maybe (Int)
  , "GopSize" :: Maybe (Number)
  , "GopSizeUnits" :: Maybe (H265GopSizeUnits)
  , "HrdBufferInitialFillPercentage" :: Maybe (Int)
  , "HrdBufferSize" :: Maybe (Int)
  , "InterlaceMode" :: Maybe (H265InterlaceMode)
  , "MaxBitrate" :: Maybe (Int)
  , "MinIInterval" :: Maybe (Int)
  , "NumberBFramesBetweenReferenceFrames" :: Maybe (Int)
  , "NumberReferenceFrames" :: Maybe (Int)
  , "ParControl" :: Maybe (H265ParControl)
  , "ParDenominator" :: Maybe (Int)
  , "ParNumerator" :: Maybe (Int)
  , "QualityTuningLevel" :: Maybe (H265QualityTuningLevel)
  , "RateControlMode" :: Maybe (H265RateControlMode)
  , "SampleAdaptiveOffsetFilterMode" :: Maybe (H265SampleAdaptiveOffsetFilterMode)
  , "SceneChangeDetect" :: Maybe (H265SceneChangeDetect)
  , "Slices" :: Maybe (Int)
  , "SlowPal" :: Maybe (H265SlowPal)
  , "SpatialAdaptiveQuantization" :: Maybe (H265SpatialAdaptiveQuantization)
  , "Telecine" :: Maybe (H265Telecine)
  , "TemporalAdaptiveQuantization" :: Maybe (H265TemporalAdaptiveQuantization)
  , "TemporalIds" :: Maybe (H265TemporalIds)
  , "Tiles" :: Maybe (H265Tiles)
  , "UnregisteredSeiTimecode" :: Maybe (H265UnregisteredSeiTimecode)
  }
derive instance newtypeH265Settings :: Newtype H265Settings _
derive instance repGenericH265Settings :: Generic H265Settings _
instance showH265Settings :: Show H265Settings where show = genericShow
instance decodeH265Settings :: Decode H265Settings where decode = genericDecode options
instance encodeH265Settings :: Encode H265Settings where encode = genericEncode options

-- | Constructs H265Settings from required parameters
newH265Settings :: H265Settings
newH265Settings  = H265Settings { "AdaptiveQuantization": Nothing, "AlternateTransferFunctionSei": Nothing, "Bitrate": Nothing, "CodecLevel": Nothing, "CodecProfile": Nothing, "FlickerAdaptiveQuantization": Nothing, "FramerateControl": Nothing, "FramerateConversionAlgorithm": Nothing, "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "GopBReference": Nothing, "GopClosedCadence": Nothing, "GopSize": Nothing, "GopSizeUnits": Nothing, "HrdBufferInitialFillPercentage": Nothing, "HrdBufferSize": Nothing, "InterlaceMode": Nothing, "MaxBitrate": Nothing, "MinIInterval": Nothing, "NumberBFramesBetweenReferenceFrames": Nothing, "NumberReferenceFrames": Nothing, "ParControl": Nothing, "ParDenominator": Nothing, "ParNumerator": Nothing, "QualityTuningLevel": Nothing, "RateControlMode": Nothing, "SampleAdaptiveOffsetFilterMode": Nothing, "SceneChangeDetect": Nothing, "Slices": Nothing, "SlowPal": Nothing, "SpatialAdaptiveQuantization": Nothing, "Telecine": Nothing, "TemporalAdaptiveQuantization": Nothing, "TemporalIds": Nothing, "Tiles": Nothing, "UnregisteredSeiTimecode": Nothing }

-- | Constructs H265Settings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newH265Settings' :: ( { "AdaptiveQuantization" :: Maybe (H265AdaptiveQuantization) , "AlternateTransferFunctionSei" :: Maybe (H265AlternateTransferFunctionSei) , "Bitrate" :: Maybe (Int) , "CodecLevel" :: Maybe (H265CodecLevel) , "CodecProfile" :: Maybe (H265CodecProfile) , "FlickerAdaptiveQuantization" :: Maybe (H265FlickerAdaptiveQuantization) , "FramerateControl" :: Maybe (H265FramerateControl) , "FramerateConversionAlgorithm" :: Maybe (H265FramerateConversionAlgorithm) , "FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "GopBReference" :: Maybe (H265GopBReference) , "GopClosedCadence" :: Maybe (Int) , "GopSize" :: Maybe (Number) , "GopSizeUnits" :: Maybe (H265GopSizeUnits) , "HrdBufferInitialFillPercentage" :: Maybe (Int) , "HrdBufferSize" :: Maybe (Int) , "InterlaceMode" :: Maybe (H265InterlaceMode) , "MaxBitrate" :: Maybe (Int) , "MinIInterval" :: Maybe (Int) , "NumberBFramesBetweenReferenceFrames" :: Maybe (Int) , "NumberReferenceFrames" :: Maybe (Int) , "ParControl" :: Maybe (H265ParControl) , "ParDenominator" :: Maybe (Int) , "ParNumerator" :: Maybe (Int) , "QualityTuningLevel" :: Maybe (H265QualityTuningLevel) , "RateControlMode" :: Maybe (H265RateControlMode) , "SampleAdaptiveOffsetFilterMode" :: Maybe (H265SampleAdaptiveOffsetFilterMode) , "SceneChangeDetect" :: Maybe (H265SceneChangeDetect) , "Slices" :: Maybe (Int) , "SlowPal" :: Maybe (H265SlowPal) , "SpatialAdaptiveQuantization" :: Maybe (H265SpatialAdaptiveQuantization) , "Telecine" :: Maybe (H265Telecine) , "TemporalAdaptiveQuantization" :: Maybe (H265TemporalAdaptiveQuantization) , "TemporalIds" :: Maybe (H265TemporalIds) , "Tiles" :: Maybe (H265Tiles) , "UnregisteredSeiTimecode" :: Maybe (H265UnregisteredSeiTimecode) } -> {"AdaptiveQuantization" :: Maybe (H265AdaptiveQuantization) , "AlternateTransferFunctionSei" :: Maybe (H265AlternateTransferFunctionSei) , "Bitrate" :: Maybe (Int) , "CodecLevel" :: Maybe (H265CodecLevel) , "CodecProfile" :: Maybe (H265CodecProfile) , "FlickerAdaptiveQuantization" :: Maybe (H265FlickerAdaptiveQuantization) , "FramerateControl" :: Maybe (H265FramerateControl) , "FramerateConversionAlgorithm" :: Maybe (H265FramerateConversionAlgorithm) , "FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "GopBReference" :: Maybe (H265GopBReference) , "GopClosedCadence" :: Maybe (Int) , "GopSize" :: Maybe (Number) , "GopSizeUnits" :: Maybe (H265GopSizeUnits) , "HrdBufferInitialFillPercentage" :: Maybe (Int) , "HrdBufferSize" :: Maybe (Int) , "InterlaceMode" :: Maybe (H265InterlaceMode) , "MaxBitrate" :: Maybe (Int) , "MinIInterval" :: Maybe (Int) , "NumberBFramesBetweenReferenceFrames" :: Maybe (Int) , "NumberReferenceFrames" :: Maybe (Int) , "ParControl" :: Maybe (H265ParControl) , "ParDenominator" :: Maybe (Int) , "ParNumerator" :: Maybe (Int) , "QualityTuningLevel" :: Maybe (H265QualityTuningLevel) , "RateControlMode" :: Maybe (H265RateControlMode) , "SampleAdaptiveOffsetFilterMode" :: Maybe (H265SampleAdaptiveOffsetFilterMode) , "SceneChangeDetect" :: Maybe (H265SceneChangeDetect) , "Slices" :: Maybe (Int) , "SlowPal" :: Maybe (H265SlowPal) , "SpatialAdaptiveQuantization" :: Maybe (H265SpatialAdaptiveQuantization) , "Telecine" :: Maybe (H265Telecine) , "TemporalAdaptiveQuantization" :: Maybe (H265TemporalAdaptiveQuantization) , "TemporalIds" :: Maybe (H265TemporalIds) , "Tiles" :: Maybe (H265Tiles) , "UnregisteredSeiTimecode" :: Maybe (H265UnregisteredSeiTimecode) } ) -> H265Settings
newH265Settings'  customize = (H265Settings <<< customize) { "AdaptiveQuantization": Nothing, "AlternateTransferFunctionSei": Nothing, "Bitrate": Nothing, "CodecLevel": Nothing, "CodecProfile": Nothing, "FlickerAdaptiveQuantization": Nothing, "FramerateControl": Nothing, "FramerateConversionAlgorithm": Nothing, "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "GopBReference": Nothing, "GopClosedCadence": Nothing, "GopSize": Nothing, "GopSizeUnits": Nothing, "HrdBufferInitialFillPercentage": Nothing, "HrdBufferSize": Nothing, "InterlaceMode": Nothing, "MaxBitrate": Nothing, "MinIInterval": Nothing, "NumberBFramesBetweenReferenceFrames": Nothing, "NumberReferenceFrames": Nothing, "ParControl": Nothing, "ParDenominator": Nothing, "ParNumerator": Nothing, "QualityTuningLevel": Nothing, "RateControlMode": Nothing, "SampleAdaptiveOffsetFilterMode": Nothing, "SceneChangeDetect": Nothing, "Slices": Nothing, "SlowPal": Nothing, "SpatialAdaptiveQuantization": Nothing, "Telecine": Nothing, "TemporalAdaptiveQuantization": Nothing, "TemporalIds": Nothing, "Tiles": Nothing, "UnregisteredSeiTimecode": Nothing }



-- | Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
newtype H265SlowPal = H265SlowPal String
derive instance newtypeH265SlowPal :: Newtype H265SlowPal _
derive instance repGenericH265SlowPal :: Generic H265SlowPal _
instance showH265SlowPal :: Show H265SlowPal where show = genericShow
instance decodeH265SlowPal :: Decode H265SlowPal where decode = genericDecode options
instance encodeH265SlowPal :: Encode H265SlowPal where encode = genericEncode options



-- | Adjust quantization within each frame based on spatial variation of content complexity.
newtype H265SpatialAdaptiveQuantization = H265SpatialAdaptiveQuantization String
derive instance newtypeH265SpatialAdaptiveQuantization :: Newtype H265SpatialAdaptiveQuantization _
derive instance repGenericH265SpatialAdaptiveQuantization :: Generic H265SpatialAdaptiveQuantization _
instance showH265SpatialAdaptiveQuantization :: Show H265SpatialAdaptiveQuantization where show = genericShow
instance decodeH265SpatialAdaptiveQuantization :: Decode H265SpatialAdaptiveQuantization where decode = genericDecode options
instance encodeH265SpatialAdaptiveQuantization :: Encode H265SpatialAdaptiveQuantization where encode = genericEncode options



-- | This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
newtype H265Telecine = H265Telecine String
derive instance newtypeH265Telecine :: Newtype H265Telecine _
derive instance repGenericH265Telecine :: Generic H265Telecine _
instance showH265Telecine :: Show H265Telecine where show = genericShow
instance decodeH265Telecine :: Decode H265Telecine where decode = genericDecode options
instance encodeH265Telecine :: Encode H265Telecine where encode = genericEncode options



-- | Adjust quantization within each frame based on temporal variation of content complexity.
newtype H265TemporalAdaptiveQuantization = H265TemporalAdaptiveQuantization String
derive instance newtypeH265TemporalAdaptiveQuantization :: Newtype H265TemporalAdaptiveQuantization _
derive instance repGenericH265TemporalAdaptiveQuantization :: Generic H265TemporalAdaptiveQuantization _
instance showH265TemporalAdaptiveQuantization :: Show H265TemporalAdaptiveQuantization where show = genericShow
instance decodeH265TemporalAdaptiveQuantization :: Decode H265TemporalAdaptiveQuantization where decode = genericDecode options
instance encodeH265TemporalAdaptiveQuantization :: Encode H265TemporalAdaptiveQuantization where encode = genericEncode options



-- | Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output.
newtype H265TemporalIds = H265TemporalIds String
derive instance newtypeH265TemporalIds :: Newtype H265TemporalIds _
derive instance repGenericH265TemporalIds :: Generic H265TemporalIds _
instance showH265TemporalIds :: Show H265TemporalIds where show = genericShow
instance decodeH265TemporalIds :: Decode H265TemporalIds where decode = genericDecode options
instance encodeH265TemporalIds :: Encode H265TemporalIds where encode = genericEncode options



-- | Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.
newtype H265Tiles = H265Tiles String
derive instance newtypeH265Tiles :: Newtype H265Tiles _
derive instance repGenericH265Tiles :: Generic H265Tiles _
instance showH265Tiles :: Show H265Tiles where show = genericShow
instance decodeH265Tiles :: Decode H265Tiles where decode = genericDecode options
instance encodeH265Tiles :: Encode H265Tiles where encode = genericEncode options



-- | Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
newtype H265UnregisteredSeiTimecode = H265UnregisteredSeiTimecode String
derive instance newtypeH265UnregisteredSeiTimecode :: Newtype H265UnregisteredSeiTimecode _
derive instance repGenericH265UnregisteredSeiTimecode :: Generic H265UnregisteredSeiTimecode _
instance showH265UnregisteredSeiTimecode :: Show H265UnregisteredSeiTimecode where show = genericShow
instance decodeH265UnregisteredSeiTimecode :: Decode H265UnregisteredSeiTimecode where decode = genericDecode options
instance encodeH265UnregisteredSeiTimecode :: Encode H265UnregisteredSeiTimecode where encode = genericEncode options



-- | Use the HDR master display (Hdr10Metadata) settings to provide values for HDR color. These values vary depending on the input video and must be provided by a color grader. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
newtype Hdr10Metadata = Hdr10Metadata 
  { "BluePrimaryX" :: Maybe (Int)
  , "BluePrimaryY" :: Maybe (Int)
  , "GreenPrimaryX" :: Maybe (Int)
  , "GreenPrimaryY" :: Maybe (Int)
  , "MaxContentLightLevel" :: Maybe (Int)
  , "MaxFrameAverageLightLevel" :: Maybe (Int)
  , "MaxLuminance" :: Maybe (Int)
  , "MinLuminance" :: Maybe (Int)
  , "RedPrimaryX" :: Maybe (Int)
  , "RedPrimaryY" :: Maybe (Int)
  , "WhitePointX" :: Maybe (Int)
  , "WhitePointY" :: Maybe (Int)
  }
derive instance newtypeHdr10Metadata :: Newtype Hdr10Metadata _
derive instance repGenericHdr10Metadata :: Generic Hdr10Metadata _
instance showHdr10Metadata :: Show Hdr10Metadata where show = genericShow
instance decodeHdr10Metadata :: Decode Hdr10Metadata where decode = genericDecode options
instance encodeHdr10Metadata :: Encode Hdr10Metadata where encode = genericEncode options

-- | Constructs Hdr10Metadata from required parameters
newHdr10Metadata :: Hdr10Metadata
newHdr10Metadata  = Hdr10Metadata { "BluePrimaryX": Nothing, "BluePrimaryY": Nothing, "GreenPrimaryX": Nothing, "GreenPrimaryY": Nothing, "MaxContentLightLevel": Nothing, "MaxFrameAverageLightLevel": Nothing, "MaxLuminance": Nothing, "MinLuminance": Nothing, "RedPrimaryX": Nothing, "RedPrimaryY": Nothing, "WhitePointX": Nothing, "WhitePointY": Nothing }

-- | Constructs Hdr10Metadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHdr10Metadata' :: ( { "BluePrimaryX" :: Maybe (Int) , "BluePrimaryY" :: Maybe (Int) , "GreenPrimaryX" :: Maybe (Int) , "GreenPrimaryY" :: Maybe (Int) , "MaxContentLightLevel" :: Maybe (Int) , "MaxFrameAverageLightLevel" :: Maybe (Int) , "MaxLuminance" :: Maybe (Int) , "MinLuminance" :: Maybe (Int) , "RedPrimaryX" :: Maybe (Int) , "RedPrimaryY" :: Maybe (Int) , "WhitePointX" :: Maybe (Int) , "WhitePointY" :: Maybe (Int) } -> {"BluePrimaryX" :: Maybe (Int) , "BluePrimaryY" :: Maybe (Int) , "GreenPrimaryX" :: Maybe (Int) , "GreenPrimaryY" :: Maybe (Int) , "MaxContentLightLevel" :: Maybe (Int) , "MaxFrameAverageLightLevel" :: Maybe (Int) , "MaxLuminance" :: Maybe (Int) , "MinLuminance" :: Maybe (Int) , "RedPrimaryX" :: Maybe (Int) , "RedPrimaryY" :: Maybe (Int) , "WhitePointX" :: Maybe (Int) , "WhitePointY" :: Maybe (Int) } ) -> Hdr10Metadata
newHdr10Metadata'  customize = (Hdr10Metadata <<< customize) { "BluePrimaryX": Nothing, "BluePrimaryY": Nothing, "GreenPrimaryX": Nothing, "GreenPrimaryY": Nothing, "MaxContentLightLevel": Nothing, "MaxFrameAverageLightLevel": Nothing, "MaxLuminance": Nothing, "MinLuminance": Nothing, "RedPrimaryX": Nothing, "RedPrimaryY": Nothing, "WhitePointX": Nothing, "WhitePointY": Nothing }



newtype HlsAdMarkers = HlsAdMarkers String
derive instance newtypeHlsAdMarkers :: Newtype HlsAdMarkers _
derive instance repGenericHlsAdMarkers :: Generic HlsAdMarkers _
instance showHlsAdMarkers :: Show HlsAdMarkers where show = genericShow
instance decodeHlsAdMarkers :: Decode HlsAdMarkers where decode = genericDecode options
instance encodeHlsAdMarkers :: Encode HlsAdMarkers where encode = genericEncode options



-- | Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
newtype HlsAudioTrackType = HlsAudioTrackType String
derive instance newtypeHlsAudioTrackType :: Newtype HlsAudioTrackType _
derive instance repGenericHlsAudioTrackType :: Generic HlsAudioTrackType _
instance showHlsAudioTrackType :: Show HlsAudioTrackType where show = genericShow
instance decodeHlsAudioTrackType :: Decode HlsAudioTrackType where decode = genericDecode options
instance encodeHlsAudioTrackType :: Encode HlsAudioTrackType where encode = genericEncode options



-- | Caption Language Mapping
newtype HlsCaptionLanguageMapping = HlsCaptionLanguageMapping 
  { "CaptionChannel" :: Maybe (Int)
  , "LanguageCode" :: Maybe (LanguageCode)
  , "LanguageDescription" :: Maybe (String)
  }
derive instance newtypeHlsCaptionLanguageMapping :: Newtype HlsCaptionLanguageMapping _
derive instance repGenericHlsCaptionLanguageMapping :: Generic HlsCaptionLanguageMapping _
instance showHlsCaptionLanguageMapping :: Show HlsCaptionLanguageMapping where show = genericShow
instance decodeHlsCaptionLanguageMapping :: Decode HlsCaptionLanguageMapping where decode = genericDecode options
instance encodeHlsCaptionLanguageMapping :: Encode HlsCaptionLanguageMapping where encode = genericEncode options

-- | Constructs HlsCaptionLanguageMapping from required parameters
newHlsCaptionLanguageMapping :: HlsCaptionLanguageMapping
newHlsCaptionLanguageMapping  = HlsCaptionLanguageMapping { "CaptionChannel": Nothing, "LanguageCode": Nothing, "LanguageDescription": Nothing }

-- | Constructs HlsCaptionLanguageMapping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHlsCaptionLanguageMapping' :: ( { "CaptionChannel" :: Maybe (Int) , "LanguageCode" :: Maybe (LanguageCode) , "LanguageDescription" :: Maybe (String) } -> {"CaptionChannel" :: Maybe (Int) , "LanguageCode" :: Maybe (LanguageCode) , "LanguageDescription" :: Maybe (String) } ) -> HlsCaptionLanguageMapping
newHlsCaptionLanguageMapping'  customize = (HlsCaptionLanguageMapping <<< customize) { "CaptionChannel": Nothing, "LanguageCode": Nothing, "LanguageDescription": Nothing }



-- | Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest.
newtype HlsCaptionLanguageSetting = HlsCaptionLanguageSetting String
derive instance newtypeHlsCaptionLanguageSetting :: Newtype HlsCaptionLanguageSetting _
derive instance repGenericHlsCaptionLanguageSetting :: Generic HlsCaptionLanguageSetting _
instance showHlsCaptionLanguageSetting :: Show HlsCaptionLanguageSetting where show = genericShow
instance decodeHlsCaptionLanguageSetting :: Decode HlsCaptionLanguageSetting where decode = genericDecode options
instance encodeHlsCaptionLanguageSetting :: Encode HlsCaptionLanguageSetting where encode = genericEncode options



-- | When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents client from saving media segments for later replay.
newtype HlsClientCache = HlsClientCache String
derive instance newtypeHlsClientCache :: Newtype HlsClientCache _
derive instance repGenericHlsClientCache :: Generic HlsClientCache _
instance showHlsClientCache :: Show HlsClientCache where show = genericShow
instance decodeHlsClientCache :: Decode HlsClientCache where decode = genericDecode options
instance encodeHlsClientCache :: Encode HlsClientCache where encode = genericEncode options



-- | Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
newtype HlsCodecSpecification = HlsCodecSpecification String
derive instance newtypeHlsCodecSpecification :: Newtype HlsCodecSpecification _
derive instance repGenericHlsCodecSpecification :: Generic HlsCodecSpecification _
instance showHlsCodecSpecification :: Show HlsCodecSpecification where show = genericShow
instance decodeHlsCodecSpecification :: Decode HlsCodecSpecification where decode = genericDecode options
instance encodeHlsCodecSpecification :: Encode HlsCodecSpecification where encode = genericEncode options



-- | Indicates whether segments should be placed in subdirectories.
newtype HlsDirectoryStructure = HlsDirectoryStructure String
derive instance newtypeHlsDirectoryStructure :: Newtype HlsDirectoryStructure _
derive instance repGenericHlsDirectoryStructure :: Generic HlsDirectoryStructure _
instance showHlsDirectoryStructure :: Show HlsDirectoryStructure where show = genericShow
instance decodeHlsDirectoryStructure :: Decode HlsDirectoryStructure where decode = genericDecode options
instance encodeHlsDirectoryStructure :: Encode HlsDirectoryStructure where encode = genericEncode options



-- | Settings for HLS encryption
newtype HlsEncryptionSettings = HlsEncryptionSettings 
  { "ConstantInitializationVector" :: Maybe (String)
  , "EncryptionMethod" :: Maybe (HlsEncryptionType)
  , "InitializationVectorInManifest" :: Maybe (HlsInitializationVectorInManifest)
  , "SpekeKeyProvider" :: Maybe (SpekeKeyProvider)
  , "StaticKeyProvider" :: Maybe (StaticKeyProvider)
  , "Type" :: Maybe (HlsKeyProviderType)
  }
derive instance newtypeHlsEncryptionSettings :: Newtype HlsEncryptionSettings _
derive instance repGenericHlsEncryptionSettings :: Generic HlsEncryptionSettings _
instance showHlsEncryptionSettings :: Show HlsEncryptionSettings where show = genericShow
instance decodeHlsEncryptionSettings :: Decode HlsEncryptionSettings where decode = genericDecode options
instance encodeHlsEncryptionSettings :: Encode HlsEncryptionSettings where encode = genericEncode options

-- | Constructs HlsEncryptionSettings from required parameters
newHlsEncryptionSettings :: HlsEncryptionSettings
newHlsEncryptionSettings  = HlsEncryptionSettings { "ConstantInitializationVector": Nothing, "EncryptionMethod": Nothing, "InitializationVectorInManifest": Nothing, "SpekeKeyProvider": Nothing, "StaticKeyProvider": Nothing, "Type": Nothing }

-- | Constructs HlsEncryptionSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHlsEncryptionSettings' :: ( { "ConstantInitializationVector" :: Maybe (String) , "EncryptionMethod" :: Maybe (HlsEncryptionType) , "InitializationVectorInManifest" :: Maybe (HlsInitializationVectorInManifest) , "SpekeKeyProvider" :: Maybe (SpekeKeyProvider) , "StaticKeyProvider" :: Maybe (StaticKeyProvider) , "Type" :: Maybe (HlsKeyProviderType) } -> {"ConstantInitializationVector" :: Maybe (String) , "EncryptionMethod" :: Maybe (HlsEncryptionType) , "InitializationVectorInManifest" :: Maybe (HlsInitializationVectorInManifest) , "SpekeKeyProvider" :: Maybe (SpekeKeyProvider) , "StaticKeyProvider" :: Maybe (StaticKeyProvider) , "Type" :: Maybe (HlsKeyProviderType) } ) -> HlsEncryptionSettings
newHlsEncryptionSettings'  customize = (HlsEncryptionSettings <<< customize) { "ConstantInitializationVector": Nothing, "EncryptionMethod": Nothing, "InitializationVectorInManifest": Nothing, "SpekeKeyProvider": Nothing, "StaticKeyProvider": Nothing, "Type": Nothing }



-- | Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption.
newtype HlsEncryptionType = HlsEncryptionType String
derive instance newtypeHlsEncryptionType :: Newtype HlsEncryptionType _
derive instance repGenericHlsEncryptionType :: Generic HlsEncryptionType _
instance showHlsEncryptionType :: Show HlsEncryptionType where show = genericShow
instance decodeHlsEncryptionType :: Decode HlsEncryptionType where decode = genericDecode options
instance encodeHlsEncryptionType :: Encode HlsEncryptionType where encode = genericEncode options



-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to HLS_GROUP_SETTINGS.
newtype HlsGroupSettings = HlsGroupSettings 
  { "AdMarkers" :: Maybe (ListOfHlsAdMarkers)
  , "BaseUrl" :: Maybe (String)
  , "CaptionLanguageMappings" :: Maybe (ListOfHlsCaptionLanguageMapping)
  , "CaptionLanguageSetting" :: Maybe (HlsCaptionLanguageSetting)
  , "ClientCache" :: Maybe (HlsClientCache)
  , "CodecSpecification" :: Maybe (HlsCodecSpecification)
  , "Destination" :: Maybe (String)
  , "DirectoryStructure" :: Maybe (HlsDirectoryStructure)
  , "Encryption" :: Maybe (HlsEncryptionSettings)
  , "ManifestCompression" :: Maybe (HlsManifestCompression)
  , "ManifestDurationFormat" :: Maybe (HlsManifestDurationFormat)
  , "MinSegmentLength" :: Maybe (Int)
  , "OutputSelection" :: Maybe (HlsOutputSelection)
  , "ProgramDateTime" :: Maybe (HlsProgramDateTime)
  , "ProgramDateTimePeriod" :: Maybe (Int)
  , "SegmentControl" :: Maybe (HlsSegmentControl)
  , "SegmentLength" :: Maybe (Int)
  , "SegmentsPerSubdirectory" :: Maybe (Int)
  , "StreamInfResolution" :: Maybe (HlsStreamInfResolution)
  , "TimedMetadataId3Frame" :: Maybe (HlsTimedMetadataId3Frame)
  , "TimedMetadataId3Period" :: Maybe (Int)
  , "TimestampDeltaMilliseconds" :: Maybe (Int)
  }
derive instance newtypeHlsGroupSettings :: Newtype HlsGroupSettings _
derive instance repGenericHlsGroupSettings :: Generic HlsGroupSettings _
instance showHlsGroupSettings :: Show HlsGroupSettings where show = genericShow
instance decodeHlsGroupSettings :: Decode HlsGroupSettings where decode = genericDecode options
instance encodeHlsGroupSettings :: Encode HlsGroupSettings where encode = genericEncode options

-- | Constructs HlsGroupSettings from required parameters
newHlsGroupSettings :: HlsGroupSettings
newHlsGroupSettings  = HlsGroupSettings { "AdMarkers": Nothing, "BaseUrl": Nothing, "CaptionLanguageMappings": Nothing, "CaptionLanguageSetting": Nothing, "ClientCache": Nothing, "CodecSpecification": Nothing, "Destination": Nothing, "DirectoryStructure": Nothing, "Encryption": Nothing, "ManifestCompression": Nothing, "ManifestDurationFormat": Nothing, "MinSegmentLength": Nothing, "OutputSelection": Nothing, "ProgramDateTime": Nothing, "ProgramDateTimePeriod": Nothing, "SegmentControl": Nothing, "SegmentLength": Nothing, "SegmentsPerSubdirectory": Nothing, "StreamInfResolution": Nothing, "TimedMetadataId3Frame": Nothing, "TimedMetadataId3Period": Nothing, "TimestampDeltaMilliseconds": Nothing }

-- | Constructs HlsGroupSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHlsGroupSettings' :: ( { "AdMarkers" :: Maybe (ListOfHlsAdMarkers) , "BaseUrl" :: Maybe (String) , "CaptionLanguageMappings" :: Maybe (ListOfHlsCaptionLanguageMapping) , "CaptionLanguageSetting" :: Maybe (HlsCaptionLanguageSetting) , "ClientCache" :: Maybe (HlsClientCache) , "CodecSpecification" :: Maybe (HlsCodecSpecification) , "Destination" :: Maybe (String) , "DirectoryStructure" :: Maybe (HlsDirectoryStructure) , "Encryption" :: Maybe (HlsEncryptionSettings) , "ManifestCompression" :: Maybe (HlsManifestCompression) , "ManifestDurationFormat" :: Maybe (HlsManifestDurationFormat) , "MinSegmentLength" :: Maybe (Int) , "OutputSelection" :: Maybe (HlsOutputSelection) , "ProgramDateTime" :: Maybe (HlsProgramDateTime) , "ProgramDateTimePeriod" :: Maybe (Int) , "SegmentControl" :: Maybe (HlsSegmentControl) , "SegmentLength" :: Maybe (Int) , "SegmentsPerSubdirectory" :: Maybe (Int) , "StreamInfResolution" :: Maybe (HlsStreamInfResolution) , "TimedMetadataId3Frame" :: Maybe (HlsTimedMetadataId3Frame) , "TimedMetadataId3Period" :: Maybe (Int) , "TimestampDeltaMilliseconds" :: Maybe (Int) } -> {"AdMarkers" :: Maybe (ListOfHlsAdMarkers) , "BaseUrl" :: Maybe (String) , "CaptionLanguageMappings" :: Maybe (ListOfHlsCaptionLanguageMapping) , "CaptionLanguageSetting" :: Maybe (HlsCaptionLanguageSetting) , "ClientCache" :: Maybe (HlsClientCache) , "CodecSpecification" :: Maybe (HlsCodecSpecification) , "Destination" :: Maybe (String) , "DirectoryStructure" :: Maybe (HlsDirectoryStructure) , "Encryption" :: Maybe (HlsEncryptionSettings) , "ManifestCompression" :: Maybe (HlsManifestCompression) , "ManifestDurationFormat" :: Maybe (HlsManifestDurationFormat) , "MinSegmentLength" :: Maybe (Int) , "OutputSelection" :: Maybe (HlsOutputSelection) , "ProgramDateTime" :: Maybe (HlsProgramDateTime) , "ProgramDateTimePeriod" :: Maybe (Int) , "SegmentControl" :: Maybe (HlsSegmentControl) , "SegmentLength" :: Maybe (Int) , "SegmentsPerSubdirectory" :: Maybe (Int) , "StreamInfResolution" :: Maybe (HlsStreamInfResolution) , "TimedMetadataId3Frame" :: Maybe (HlsTimedMetadataId3Frame) , "TimedMetadataId3Period" :: Maybe (Int) , "TimestampDeltaMilliseconds" :: Maybe (Int) } ) -> HlsGroupSettings
newHlsGroupSettings'  customize = (HlsGroupSettings <<< customize) { "AdMarkers": Nothing, "BaseUrl": Nothing, "CaptionLanguageMappings": Nothing, "CaptionLanguageSetting": Nothing, "ClientCache": Nothing, "CodecSpecification": Nothing, "Destination": Nothing, "DirectoryStructure": Nothing, "Encryption": Nothing, "ManifestCompression": Nothing, "ManifestDurationFormat": Nothing, "MinSegmentLength": Nothing, "OutputSelection": Nothing, "ProgramDateTime": Nothing, "ProgramDateTimePeriod": Nothing, "SegmentControl": Nothing, "SegmentLength": Nothing, "SegmentsPerSubdirectory": Nothing, "StreamInfResolution": Nothing, "TimedMetadataId3Frame": Nothing, "TimedMetadataId3Period": Nothing, "TimestampDeltaMilliseconds": Nothing }



-- | When set to INCLUDE, writes I-Frame Only Manifest in addition to the HLS manifest
newtype HlsIFrameOnlyManifest = HlsIFrameOnlyManifest String
derive instance newtypeHlsIFrameOnlyManifest :: Newtype HlsIFrameOnlyManifest _
derive instance repGenericHlsIFrameOnlyManifest :: Generic HlsIFrameOnlyManifest _
instance showHlsIFrameOnlyManifest :: Show HlsIFrameOnlyManifest where show = genericShow
instance decodeHlsIFrameOnlyManifest :: Decode HlsIFrameOnlyManifest where decode = genericDecode options
instance encodeHlsIFrameOnlyManifest :: Encode HlsIFrameOnlyManifest where encode = genericEncode options



-- | The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest.
newtype HlsInitializationVectorInManifest = HlsInitializationVectorInManifest String
derive instance newtypeHlsInitializationVectorInManifest :: Newtype HlsInitializationVectorInManifest _
derive instance repGenericHlsInitializationVectorInManifest :: Generic HlsInitializationVectorInManifest _
instance showHlsInitializationVectorInManifest :: Show HlsInitializationVectorInManifest where show = genericShow
instance decodeHlsInitializationVectorInManifest :: Decode HlsInitializationVectorInManifest where decode = genericDecode options
instance encodeHlsInitializationVectorInManifest :: Encode HlsInitializationVectorInManifest where encode = genericEncode options



-- | Indicates which type of key provider is used for encryption.
newtype HlsKeyProviderType = HlsKeyProviderType String
derive instance newtypeHlsKeyProviderType :: Newtype HlsKeyProviderType _
derive instance repGenericHlsKeyProviderType :: Generic HlsKeyProviderType _
instance showHlsKeyProviderType :: Show HlsKeyProviderType where show = genericShow
instance decodeHlsKeyProviderType :: Decode HlsKeyProviderType where decode = genericDecode options
instance encodeHlsKeyProviderType :: Encode HlsKeyProviderType where encode = genericEncode options



-- | When set to GZIP, compresses HLS playlist.
newtype HlsManifestCompression = HlsManifestCompression String
derive instance newtypeHlsManifestCompression :: Newtype HlsManifestCompression _
derive instance repGenericHlsManifestCompression :: Generic HlsManifestCompression _
instance showHlsManifestCompression :: Show HlsManifestCompression where show = genericShow
instance decodeHlsManifestCompression :: Decode HlsManifestCompression where decode = genericDecode options
instance encodeHlsManifestCompression :: Encode HlsManifestCompression where encode = genericEncode options



-- | Indicates whether the output manifest should use floating point values for segment duration.
newtype HlsManifestDurationFormat = HlsManifestDurationFormat String
derive instance newtypeHlsManifestDurationFormat :: Newtype HlsManifestDurationFormat _
derive instance repGenericHlsManifestDurationFormat :: Generic HlsManifestDurationFormat _
instance showHlsManifestDurationFormat :: Show HlsManifestDurationFormat where show = genericShow
instance decodeHlsManifestDurationFormat :: Decode HlsManifestDurationFormat where decode = genericDecode options
instance encodeHlsManifestDurationFormat :: Encode HlsManifestDurationFormat where encode = genericEncode options



-- | Indicates whether the .m3u8 manifest file should be generated for this HLS output group.
newtype HlsOutputSelection = HlsOutputSelection String
derive instance newtypeHlsOutputSelection :: Newtype HlsOutputSelection _
derive instance repGenericHlsOutputSelection :: Generic HlsOutputSelection _
instance showHlsOutputSelection :: Show HlsOutputSelection where show = genericShow
instance decodeHlsOutputSelection :: Decode HlsOutputSelection where decode = genericDecode options
instance encodeHlsOutputSelection :: Encode HlsOutputSelection where encode = genericEncode options



-- | Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset.
newtype HlsProgramDateTime = HlsProgramDateTime String
derive instance newtypeHlsProgramDateTime :: Newtype HlsProgramDateTime _
derive instance repGenericHlsProgramDateTime :: Generic HlsProgramDateTime _
instance showHlsProgramDateTime :: Show HlsProgramDateTime where show = genericShow
instance decodeHlsProgramDateTime :: Decode HlsProgramDateTime where decode = genericDecode options
instance encodeHlsProgramDateTime :: Encode HlsProgramDateTime where encode = genericEncode options



-- | When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback.
newtype HlsSegmentControl = HlsSegmentControl String
derive instance newtypeHlsSegmentControl :: Newtype HlsSegmentControl _
derive instance repGenericHlsSegmentControl :: Generic HlsSegmentControl _
instance showHlsSegmentControl :: Show HlsSegmentControl where show = genericShow
instance decodeHlsSegmentControl :: Decode HlsSegmentControl where decode = genericDecode options
instance encodeHlsSegmentControl :: Encode HlsSegmentControl where encode = genericEncode options



-- | Settings for HLS output groups
newtype HlsSettings = HlsSettings 
  { "AudioGroupId" :: Maybe (String)
  , "AudioRenditionSets" :: Maybe (String)
  , "AudioTrackType" :: Maybe (HlsAudioTrackType)
  , "IFrameOnlyManifest" :: Maybe (HlsIFrameOnlyManifest)
  , "SegmentModifier" :: Maybe (String)
  }
derive instance newtypeHlsSettings :: Newtype HlsSettings _
derive instance repGenericHlsSettings :: Generic HlsSettings _
instance showHlsSettings :: Show HlsSettings where show = genericShow
instance decodeHlsSettings :: Decode HlsSettings where decode = genericDecode options
instance encodeHlsSettings :: Encode HlsSettings where encode = genericEncode options

-- | Constructs HlsSettings from required parameters
newHlsSettings :: HlsSettings
newHlsSettings  = HlsSettings { "AudioGroupId": Nothing, "AudioRenditionSets": Nothing, "AudioTrackType": Nothing, "IFrameOnlyManifest": Nothing, "SegmentModifier": Nothing }

-- | Constructs HlsSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHlsSettings' :: ( { "AudioGroupId" :: Maybe (String) , "AudioRenditionSets" :: Maybe (String) , "AudioTrackType" :: Maybe (HlsAudioTrackType) , "IFrameOnlyManifest" :: Maybe (HlsIFrameOnlyManifest) , "SegmentModifier" :: Maybe (String) } -> {"AudioGroupId" :: Maybe (String) , "AudioRenditionSets" :: Maybe (String) , "AudioTrackType" :: Maybe (HlsAudioTrackType) , "IFrameOnlyManifest" :: Maybe (HlsIFrameOnlyManifest) , "SegmentModifier" :: Maybe (String) } ) -> HlsSettings
newHlsSettings'  customize = (HlsSettings <<< customize) { "AudioGroupId": Nothing, "AudioRenditionSets": Nothing, "AudioTrackType": Nothing, "IFrameOnlyManifest": Nothing, "SegmentModifier": Nothing }



-- | Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
newtype HlsStreamInfResolution = HlsStreamInfResolution String
derive instance newtypeHlsStreamInfResolution :: Newtype HlsStreamInfResolution _
derive instance repGenericHlsStreamInfResolution :: Generic HlsStreamInfResolution _
instance showHlsStreamInfResolution :: Show HlsStreamInfResolution where show = genericShow
instance decodeHlsStreamInfResolution :: Decode HlsStreamInfResolution where decode = genericDecode options
instance encodeHlsStreamInfResolution :: Encode HlsStreamInfResolution where encode = genericEncode options



-- | Indicates ID3 frame that has the timecode.
newtype HlsTimedMetadataId3Frame = HlsTimedMetadataId3Frame String
derive instance newtypeHlsTimedMetadataId3Frame :: Newtype HlsTimedMetadataId3Frame _
derive instance repGenericHlsTimedMetadataId3Frame :: Generic HlsTimedMetadataId3Frame _
instance showHlsTimedMetadataId3Frame :: Show HlsTimedMetadataId3Frame where show = genericShow
instance decodeHlsTimedMetadataId3Frame :: Decode HlsTimedMetadataId3Frame where decode = genericDecode options
instance encodeHlsTimedMetadataId3Frame :: Encode HlsTimedMetadataId3Frame where encode = genericEncode options



-- | To insert ID3 tags in your output, specify two values. Use ID3 tag (Id3) to specify the base 64 encoded string and use Timecode (TimeCode) to specify the time when the tag should be inserted. To insert multiple ID3 tags in your output, create mulitple instances of ID3 insertion (Id3Insertion).
newtype Id3Insertion = Id3Insertion 
  { "Id3" :: Maybe (String)
  , "Timecode" :: Maybe (String)
  }
derive instance newtypeId3Insertion :: Newtype Id3Insertion _
derive instance repGenericId3Insertion :: Generic Id3Insertion _
instance showId3Insertion :: Show Id3Insertion where show = genericShow
instance decodeId3Insertion :: Decode Id3Insertion where decode = genericDecode options
instance encodeId3Insertion :: Encode Id3Insertion where encode = genericEncode options

-- | Constructs Id3Insertion from required parameters
newId3Insertion :: Id3Insertion
newId3Insertion  = Id3Insertion { "Id3": Nothing, "Timecode": Nothing }

-- | Constructs Id3Insertion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newId3Insertion' :: ( { "Id3" :: Maybe (String) , "Timecode" :: Maybe (String) } -> {"Id3" :: Maybe (String) , "Timecode" :: Maybe (String) } ) -> Id3Insertion
newId3Insertion'  customize = (Id3Insertion <<< customize) { "Id3": Nothing, "Timecode": Nothing }



-- | Enable the Image inserter (ImageInserter) feature to include a graphic overlay on your video. Enable or disable this feature for each output individually. This setting is disabled by default.
newtype ImageInserter = ImageInserter 
  { "InsertableImages" :: Maybe (ListOfInsertableImage)
  }
derive instance newtypeImageInserter :: Newtype ImageInserter _
derive instance repGenericImageInserter :: Generic ImageInserter _
instance showImageInserter :: Show ImageInserter where show = genericShow
instance decodeImageInserter :: Decode ImageInserter where decode = genericDecode options
instance encodeImageInserter :: Encode ImageInserter where encode = genericEncode options

-- | Constructs ImageInserter from required parameters
newImageInserter :: ImageInserter
newImageInserter  = ImageInserter { "InsertableImages": Nothing }

-- | Constructs ImageInserter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageInserter' :: ( { "InsertableImages" :: Maybe (ListOfInsertableImage) } -> {"InsertableImages" :: Maybe (ListOfInsertableImage) } ) -> ImageInserter
newImageInserter'  customize = (ImageInserter <<< customize) { "InsertableImages": Nothing }



-- | Specifies media input
newtype Input = Input 
  { "AudioSelectorGroups" :: Maybe (MapOfAudioSelectorGroup)
  , "AudioSelectors" :: Maybe (MapOfAudioSelector)
  , "CaptionSelectors" :: Maybe (MapOfCaptionSelector)
  , "DeblockFilter" :: Maybe (InputDeblockFilter)
  , "DenoiseFilter" :: Maybe (InputDenoiseFilter)
  , "FileInput" :: Maybe (String)
  , "FilterEnable" :: Maybe (InputFilterEnable)
  , "FilterStrength" :: Maybe (Int)
  , "InputClippings" :: Maybe (ListOfInputClipping)
  , "ProgramNumber" :: Maybe (Int)
  , "PsiControl" :: Maybe (InputPsiControl)
  , "TimecodeSource" :: Maybe (InputTimecodeSource)
  , "VideoSelector" :: Maybe (VideoSelector)
  }
derive instance newtypeInput :: Newtype Input _
derive instance repGenericInput :: Generic Input _
instance showInput :: Show Input where show = genericShow
instance decodeInput :: Decode Input where decode = genericDecode options
instance encodeInput :: Encode Input where encode = genericEncode options

-- | Constructs Input from required parameters
newInput :: Input
newInput  = Input { "AudioSelectorGroups": Nothing, "AudioSelectors": Nothing, "CaptionSelectors": Nothing, "DeblockFilter": Nothing, "DenoiseFilter": Nothing, "FileInput": Nothing, "FilterEnable": Nothing, "FilterStrength": Nothing, "InputClippings": Nothing, "ProgramNumber": Nothing, "PsiControl": Nothing, "TimecodeSource": Nothing, "VideoSelector": Nothing }

-- | Constructs Input's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInput' :: ( { "AudioSelectorGroups" :: Maybe (MapOfAudioSelectorGroup) , "AudioSelectors" :: Maybe (MapOfAudioSelector) , "CaptionSelectors" :: Maybe (MapOfCaptionSelector) , "DeblockFilter" :: Maybe (InputDeblockFilter) , "DenoiseFilter" :: Maybe (InputDenoiseFilter) , "FileInput" :: Maybe (String) , "FilterEnable" :: Maybe (InputFilterEnable) , "FilterStrength" :: Maybe (Int) , "InputClippings" :: Maybe (ListOfInputClipping) , "ProgramNumber" :: Maybe (Int) , "PsiControl" :: Maybe (InputPsiControl) , "TimecodeSource" :: Maybe (InputTimecodeSource) , "VideoSelector" :: Maybe (VideoSelector) } -> {"AudioSelectorGroups" :: Maybe (MapOfAudioSelectorGroup) , "AudioSelectors" :: Maybe (MapOfAudioSelector) , "CaptionSelectors" :: Maybe (MapOfCaptionSelector) , "DeblockFilter" :: Maybe (InputDeblockFilter) , "DenoiseFilter" :: Maybe (InputDenoiseFilter) , "FileInput" :: Maybe (String) , "FilterEnable" :: Maybe (InputFilterEnable) , "FilterStrength" :: Maybe (Int) , "InputClippings" :: Maybe (ListOfInputClipping) , "ProgramNumber" :: Maybe (Int) , "PsiControl" :: Maybe (InputPsiControl) , "TimecodeSource" :: Maybe (InputTimecodeSource) , "VideoSelector" :: Maybe (VideoSelector) } ) -> Input
newInput'  customize = (Input <<< customize) { "AudioSelectorGroups": Nothing, "AudioSelectors": Nothing, "CaptionSelectors": Nothing, "DeblockFilter": Nothing, "DenoiseFilter": Nothing, "FileInput": Nothing, "FilterEnable": Nothing, "FilterStrength": Nothing, "InputClippings": Nothing, "ProgramNumber": Nothing, "PsiControl": Nothing, "TimecodeSource": Nothing, "VideoSelector": Nothing }



-- | Include one instance of (InputClipping) for each input clip.
newtype InputClipping = InputClipping 
  { "EndTimecode" :: Maybe (String)
  , "StartTimecode" :: Maybe (String)
  }
derive instance newtypeInputClipping :: Newtype InputClipping _
derive instance repGenericInputClipping :: Generic InputClipping _
instance showInputClipping :: Show InputClipping where show = genericShow
instance decodeInputClipping :: Decode InputClipping where decode = genericDecode options
instance encodeInputClipping :: Encode InputClipping where encode = genericEncode options

-- | Constructs InputClipping from required parameters
newInputClipping :: InputClipping
newInputClipping  = InputClipping { "EndTimecode": Nothing, "StartTimecode": Nothing }

-- | Constructs InputClipping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInputClipping' :: ( { "EndTimecode" :: Maybe (String) , "StartTimecode" :: Maybe (String) } -> {"EndTimecode" :: Maybe (String) , "StartTimecode" :: Maybe (String) } ) -> InputClipping
newInputClipping'  customize = (InputClipping <<< customize) { "EndTimecode": Nothing, "StartTimecode": Nothing }



-- | Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manaully controllable for MPEG2 and uncompressed video inputs.
newtype InputDeblockFilter = InputDeblockFilter String
derive instance newtypeInputDeblockFilter :: Newtype InputDeblockFilter _
derive instance repGenericInputDeblockFilter :: Generic InputDeblockFilter _
instance showInputDeblockFilter :: Show InputDeblockFilter where show = genericShow
instance decodeInputDeblockFilter :: Decode InputDeblockFilter where decode = genericDecode options
instance encodeInputDeblockFilter :: Encode InputDeblockFilter where encode = genericEncode options



-- | Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.
newtype InputDenoiseFilter = InputDenoiseFilter String
derive instance newtypeInputDenoiseFilter :: Newtype InputDenoiseFilter _
derive instance repGenericInputDenoiseFilter :: Generic InputDenoiseFilter _
instance showInputDenoiseFilter :: Show InputDenoiseFilter where show = genericShow
instance decodeInputDenoiseFilter :: Decode InputDenoiseFilter where decode = genericDecode options
instance encodeInputDenoiseFilter :: Encode InputDenoiseFilter where encode = genericEncode options



-- | Use Filter enable (InputFilterEnable) to specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The in put is filtered regardless of input type.
newtype InputFilterEnable = InputFilterEnable String
derive instance newtypeInputFilterEnable :: Newtype InputFilterEnable _
derive instance repGenericInputFilterEnable :: Generic InputFilterEnable _
instance showInputFilterEnable :: Show InputFilterEnable where show = genericShow
instance decodeInputFilterEnable :: Decode InputFilterEnable where decode = genericDecode options
instance encodeInputFilterEnable :: Encode InputFilterEnable where encode = genericEncode options



-- | Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data.
newtype InputPsiControl = InputPsiControl String
derive instance newtypeInputPsiControl :: Newtype InputPsiControl _
derive instance repGenericInputPsiControl :: Generic InputPsiControl _
instance showInputPsiControl :: Show InputPsiControl where show = genericShow
instance decodeInputPsiControl :: Decode InputPsiControl where decode = genericDecode options
instance encodeInputPsiControl :: Encode InputPsiControl where encode = genericEncode options



-- | Specified video input in a template.
newtype InputTemplate = InputTemplate 
  { "AudioSelectorGroups" :: Maybe (MapOfAudioSelectorGroup)
  , "AudioSelectors" :: Maybe (MapOfAudioSelector)
  , "CaptionSelectors" :: Maybe (MapOfCaptionSelector)
  , "DeblockFilter" :: Maybe (InputDeblockFilter)
  , "DenoiseFilter" :: Maybe (InputDenoiseFilter)
  , "FilterEnable" :: Maybe (InputFilterEnable)
  , "FilterStrength" :: Maybe (Int)
  , "InputClippings" :: Maybe (ListOfInputClipping)
  , "ProgramNumber" :: Maybe (Int)
  , "PsiControl" :: Maybe (InputPsiControl)
  , "TimecodeSource" :: Maybe (InputTimecodeSource)
  , "VideoSelector" :: Maybe (VideoSelector)
  }
derive instance newtypeInputTemplate :: Newtype InputTemplate _
derive instance repGenericInputTemplate :: Generic InputTemplate _
instance showInputTemplate :: Show InputTemplate where show = genericShow
instance decodeInputTemplate :: Decode InputTemplate where decode = genericDecode options
instance encodeInputTemplate :: Encode InputTemplate where encode = genericEncode options

-- | Constructs InputTemplate from required parameters
newInputTemplate :: InputTemplate
newInputTemplate  = InputTemplate { "AudioSelectorGroups": Nothing, "AudioSelectors": Nothing, "CaptionSelectors": Nothing, "DeblockFilter": Nothing, "DenoiseFilter": Nothing, "FilterEnable": Nothing, "FilterStrength": Nothing, "InputClippings": Nothing, "ProgramNumber": Nothing, "PsiControl": Nothing, "TimecodeSource": Nothing, "VideoSelector": Nothing }

-- | Constructs InputTemplate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInputTemplate' :: ( { "AudioSelectorGroups" :: Maybe (MapOfAudioSelectorGroup) , "AudioSelectors" :: Maybe (MapOfAudioSelector) , "CaptionSelectors" :: Maybe (MapOfCaptionSelector) , "DeblockFilter" :: Maybe (InputDeblockFilter) , "DenoiseFilter" :: Maybe (InputDenoiseFilter) , "FilterEnable" :: Maybe (InputFilterEnable) , "FilterStrength" :: Maybe (Int) , "InputClippings" :: Maybe (ListOfInputClipping) , "ProgramNumber" :: Maybe (Int) , "PsiControl" :: Maybe (InputPsiControl) , "TimecodeSource" :: Maybe (InputTimecodeSource) , "VideoSelector" :: Maybe (VideoSelector) } -> {"AudioSelectorGroups" :: Maybe (MapOfAudioSelectorGroup) , "AudioSelectors" :: Maybe (MapOfAudioSelector) , "CaptionSelectors" :: Maybe (MapOfCaptionSelector) , "DeblockFilter" :: Maybe (InputDeblockFilter) , "DenoiseFilter" :: Maybe (InputDenoiseFilter) , "FilterEnable" :: Maybe (InputFilterEnable) , "FilterStrength" :: Maybe (Int) , "InputClippings" :: Maybe (ListOfInputClipping) , "ProgramNumber" :: Maybe (Int) , "PsiControl" :: Maybe (InputPsiControl) , "TimecodeSource" :: Maybe (InputTimecodeSource) , "VideoSelector" :: Maybe (VideoSelector) } ) -> InputTemplate
newInputTemplate'  customize = (InputTemplate <<< customize) { "AudioSelectorGroups": Nothing, "AudioSelectors": Nothing, "CaptionSelectors": Nothing, "DeblockFilter": Nothing, "DenoiseFilter": Nothing, "FilterEnable": Nothing, "FilterStrength": Nothing, "InputClippings": Nothing, "ProgramNumber": Nothing, "PsiControl": Nothing, "TimecodeSource": Nothing, "VideoSelector": Nothing }



-- | Use Timecode source (InputTimecodeSource) to specify how timecode information from your input is adjusted and encoded in all outputs for the job. Default is embedded. Set to Embedded (EMBEDDED) to use the timecode that is in the input video. If no embedded timecode is in the source, will set the timecode for the first frame to 00:00:00:00. Set to Start at 0 (ZEROBASED) to set the timecode of the initial frame to 00:00:00:00. Set to Specified start (SPECIFIEDSTART) to provide the initial timecode yourself the setting (Start).
newtype InputTimecodeSource = InputTimecodeSource String
derive instance newtypeInputTimecodeSource :: Newtype InputTimecodeSource _
derive instance repGenericInputTimecodeSource :: Generic InputTimecodeSource _
instance showInputTimecodeSource :: Show InputTimecodeSource where show = genericShow
instance decodeInputTimecodeSource :: Decode InputTimecodeSource where decode = genericDecode options
instance encodeInputTimecodeSource :: Encode InputTimecodeSource where encode = genericEncode options



-- | Settings for Insertable Image
newtype InsertableImage = InsertableImage 
  { "Duration" :: Maybe (Int)
  , "FadeIn" :: Maybe (Int)
  , "FadeOut" :: Maybe (Int)
  , "Height" :: Maybe (Int)
  , "ImageInserterInput" :: Maybe (String)
  , "ImageX" :: Maybe (Int)
  , "ImageY" :: Maybe (Int)
  , "Layer" :: Maybe (Int)
  , "Opacity" :: Maybe (Int)
  , "StartTime" :: Maybe (String)
  , "Width" :: Maybe (Int)
  }
derive instance newtypeInsertableImage :: Newtype InsertableImage _
derive instance repGenericInsertableImage :: Generic InsertableImage _
instance showInsertableImage :: Show InsertableImage where show = genericShow
instance decodeInsertableImage :: Decode InsertableImage where decode = genericDecode options
instance encodeInsertableImage :: Encode InsertableImage where encode = genericEncode options

-- | Constructs InsertableImage from required parameters
newInsertableImage :: InsertableImage
newInsertableImage  = InsertableImage { "Duration": Nothing, "FadeIn": Nothing, "FadeOut": Nothing, "Height": Nothing, "ImageInserterInput": Nothing, "ImageX": Nothing, "ImageY": Nothing, "Layer": Nothing, "Opacity": Nothing, "StartTime": Nothing, "Width": Nothing }

-- | Constructs InsertableImage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInsertableImage' :: ( { "Duration" :: Maybe (Int) , "FadeIn" :: Maybe (Int) , "FadeOut" :: Maybe (Int) , "Height" :: Maybe (Int) , "ImageInserterInput" :: Maybe (String) , "ImageX" :: Maybe (Int) , "ImageY" :: Maybe (Int) , "Layer" :: Maybe (Int) , "Opacity" :: Maybe (Int) , "StartTime" :: Maybe (String) , "Width" :: Maybe (Int) } -> {"Duration" :: Maybe (Int) , "FadeIn" :: Maybe (Int) , "FadeOut" :: Maybe (Int) , "Height" :: Maybe (Int) , "ImageInserterInput" :: Maybe (String) , "ImageX" :: Maybe (Int) , "ImageY" :: Maybe (Int) , "Layer" :: Maybe (Int) , "Opacity" :: Maybe (Int) , "StartTime" :: Maybe (String) , "Width" :: Maybe (Int) } ) -> InsertableImage
newInsertableImage'  customize = (InsertableImage <<< customize) { "Duration": Nothing, "FadeIn": Nothing, "FadeOut": Nothing, "Height": Nothing, "ImageInserterInput": Nothing, "ImageX": Nothing, "ImageY": Nothing, "Layer": Nothing, "Opacity": Nothing, "StartTime": Nothing, "Width": Nothing }



-- | The service encountered an unexpected condition and cannot fulfill your request.
newtype InternalServerErrorException = InternalServerErrorException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where decode = genericDecode options
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where encode = genericEncode options

-- | Constructs InternalServerErrorException from required parameters
newInternalServerErrorException :: InternalServerErrorException
newInternalServerErrorException  = InternalServerErrorException { "Message": Nothing }

-- | Constructs InternalServerErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerErrorException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InternalServerErrorException
newInternalServerErrorException'  customize = (InternalServerErrorException <<< customize) { "Message": Nothing }



-- | Each job converts an input file into an output file or files. For more information, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
newtype Job = Job 
  { "Arn" :: Maybe (String)
  , "CreatedAt" :: Maybe (Types.Timestamp)
  , "ErrorCode" :: Maybe (Int)
  , "ErrorMessage" :: Maybe (String)
  , "Id" :: Maybe (String)
  , "JobTemplate" :: Maybe (String)
  , "OutputGroupDetails" :: Maybe (ListOfOutputGroupDetail)
  , "Queue" :: Maybe (String)
  , "Role" :: Maybe (String)
  , "Settings" :: Maybe (JobSettings)
  , "Status" :: Maybe (JobStatus)
  , "Timing" :: Maybe (Timing)
  , "UserMetadata" :: Maybe (MapOf__string)
  }
derive instance newtypeJob :: Newtype Job _
derive instance repGenericJob :: Generic Job _
instance showJob :: Show Job where show = genericShow
instance decodeJob :: Decode Job where decode = genericDecode options
instance encodeJob :: Encode Job where encode = genericEncode options

-- | Constructs Job from required parameters
newJob :: Job
newJob  = Job { "Arn": Nothing, "CreatedAt": Nothing, "ErrorCode": Nothing, "ErrorMessage": Nothing, "Id": Nothing, "JobTemplate": Nothing, "OutputGroupDetails": Nothing, "Queue": Nothing, "Role": Nothing, "Settings": Nothing, "Status": Nothing, "Timing": Nothing, "UserMetadata": Nothing }

-- | Constructs Job's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJob' :: ( { "Arn" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "ErrorCode" :: Maybe (Int) , "ErrorMessage" :: Maybe (String) , "Id" :: Maybe (String) , "JobTemplate" :: Maybe (String) , "OutputGroupDetails" :: Maybe (ListOfOutputGroupDetail) , "Queue" :: Maybe (String) , "Role" :: Maybe (String) , "Settings" :: Maybe (JobSettings) , "Status" :: Maybe (JobStatus) , "Timing" :: Maybe (Timing) , "UserMetadata" :: Maybe (MapOf__string) } -> {"Arn" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "ErrorCode" :: Maybe (Int) , "ErrorMessage" :: Maybe (String) , "Id" :: Maybe (String) , "JobTemplate" :: Maybe (String) , "OutputGroupDetails" :: Maybe (ListOfOutputGroupDetail) , "Queue" :: Maybe (String) , "Role" :: Maybe (String) , "Settings" :: Maybe (JobSettings) , "Status" :: Maybe (JobStatus) , "Timing" :: Maybe (Timing) , "UserMetadata" :: Maybe (MapOf__string) } ) -> Job
newJob'  customize = (Job <<< customize) { "Arn": Nothing, "CreatedAt": Nothing, "ErrorCode": Nothing, "ErrorMessage": Nothing, "Id": Nothing, "JobTemplate": Nothing, "OutputGroupDetails": Nothing, "Queue": Nothing, "Role": Nothing, "Settings": Nothing, "Status": Nothing, "Timing": Nothing, "UserMetadata": Nothing }



-- | JobSettings contains all the transcode settings for a job.
newtype JobSettings = JobSettings 
  { "AdAvailOffset" :: Maybe (Int)
  , "AvailBlanking" :: Maybe (AvailBlanking)
  , "Inputs" :: Maybe (ListOfInput)
  , "NielsenConfiguration" :: Maybe (NielsenConfiguration)
  , "OutputGroups" :: Maybe (ListOfOutputGroup)
  , "TimecodeConfig" :: Maybe (TimecodeConfig)
  , "TimedMetadataInsertion" :: Maybe (TimedMetadataInsertion)
  }
derive instance newtypeJobSettings :: Newtype JobSettings _
derive instance repGenericJobSettings :: Generic JobSettings _
instance showJobSettings :: Show JobSettings where show = genericShow
instance decodeJobSettings :: Decode JobSettings where decode = genericDecode options
instance encodeJobSettings :: Encode JobSettings where encode = genericEncode options

-- | Constructs JobSettings from required parameters
newJobSettings :: JobSettings
newJobSettings  = JobSettings { "AdAvailOffset": Nothing, "AvailBlanking": Nothing, "Inputs": Nothing, "NielsenConfiguration": Nothing, "OutputGroups": Nothing, "TimecodeConfig": Nothing, "TimedMetadataInsertion": Nothing }

-- | Constructs JobSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobSettings' :: ( { "AdAvailOffset" :: Maybe (Int) , "AvailBlanking" :: Maybe (AvailBlanking) , "Inputs" :: Maybe (ListOfInput) , "NielsenConfiguration" :: Maybe (NielsenConfiguration) , "OutputGroups" :: Maybe (ListOfOutputGroup) , "TimecodeConfig" :: Maybe (TimecodeConfig) , "TimedMetadataInsertion" :: Maybe (TimedMetadataInsertion) } -> {"AdAvailOffset" :: Maybe (Int) , "AvailBlanking" :: Maybe (AvailBlanking) , "Inputs" :: Maybe (ListOfInput) , "NielsenConfiguration" :: Maybe (NielsenConfiguration) , "OutputGroups" :: Maybe (ListOfOutputGroup) , "TimecodeConfig" :: Maybe (TimecodeConfig) , "TimedMetadataInsertion" :: Maybe (TimedMetadataInsertion) } ) -> JobSettings
newJobSettings'  customize = (JobSettings <<< customize) { "AdAvailOffset": Nothing, "AvailBlanking": Nothing, "Inputs": Nothing, "NielsenConfiguration": Nothing, "OutputGroups": Nothing, "TimecodeConfig": Nothing, "TimedMetadataInsertion": Nothing }



-- | A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
newtype JobStatus = JobStatus String
derive instance newtypeJobStatus :: Newtype JobStatus _
derive instance repGenericJobStatus :: Generic JobStatus _
instance showJobStatus :: Show JobStatus where show = genericShow
instance decodeJobStatus :: Decode JobStatus where decode = genericDecode options
instance encodeJobStatus :: Encode JobStatus where encode = genericEncode options



-- | A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
newtype JobTemplate = JobTemplate 
  { "Arn" :: Maybe (String)
  , "Category" :: Maybe (String)
  , "CreatedAt" :: Maybe (Types.Timestamp)
  , "Description" :: Maybe (String)
  , "LastUpdated" :: Maybe (Types.Timestamp)
  , "Name" :: Maybe (String)
  , "Queue" :: Maybe (String)
  , "Settings" :: Maybe (JobTemplateSettings)
  , "Type" :: Maybe (Type)
  }
derive instance newtypeJobTemplate :: Newtype JobTemplate _
derive instance repGenericJobTemplate :: Generic JobTemplate _
instance showJobTemplate :: Show JobTemplate where show = genericShow
instance decodeJobTemplate :: Decode JobTemplate where decode = genericDecode options
instance encodeJobTemplate :: Encode JobTemplate where encode = genericEncode options

-- | Constructs JobTemplate from required parameters
newJobTemplate :: JobTemplate
newJobTemplate  = JobTemplate { "Arn": Nothing, "Category": Nothing, "CreatedAt": Nothing, "Description": Nothing, "LastUpdated": Nothing, "Name": Nothing, "Queue": Nothing, "Settings": Nothing, "Type": Nothing }

-- | Constructs JobTemplate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobTemplate' :: ( { "Arn" :: Maybe (String) , "Category" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "Description" :: Maybe (String) , "LastUpdated" :: Maybe (Types.Timestamp) , "Name" :: Maybe (String) , "Queue" :: Maybe (String) , "Settings" :: Maybe (JobTemplateSettings) , "Type" :: Maybe (Type) } -> {"Arn" :: Maybe (String) , "Category" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "Description" :: Maybe (String) , "LastUpdated" :: Maybe (Types.Timestamp) , "Name" :: Maybe (String) , "Queue" :: Maybe (String) , "Settings" :: Maybe (JobTemplateSettings) , "Type" :: Maybe (Type) } ) -> JobTemplate
newJobTemplate'  customize = (JobTemplate <<< customize) { "Arn": Nothing, "Category": Nothing, "CreatedAt": Nothing, "Description": Nothing, "LastUpdated": Nothing, "Name": Nothing, "Queue": Nothing, "Settings": Nothing, "Type": Nothing }



-- | Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
newtype JobTemplateListBy = JobTemplateListBy String
derive instance newtypeJobTemplateListBy :: Newtype JobTemplateListBy _
derive instance repGenericJobTemplateListBy :: Generic JobTemplateListBy _
instance showJobTemplateListBy :: Show JobTemplateListBy where show = genericShow
instance decodeJobTemplateListBy :: Decode JobTemplateListBy where decode = genericDecode options
instance encodeJobTemplateListBy :: Encode JobTemplateListBy where encode = genericEncode options



-- | JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
newtype JobTemplateSettings = JobTemplateSettings 
  { "AdAvailOffset" :: Maybe (Int)
  , "AvailBlanking" :: Maybe (AvailBlanking)
  , "Inputs" :: Maybe (ListOfInputTemplate)
  , "NielsenConfiguration" :: Maybe (NielsenConfiguration)
  , "OutputGroups" :: Maybe (ListOfOutputGroup)
  , "TimecodeConfig" :: Maybe (TimecodeConfig)
  , "TimedMetadataInsertion" :: Maybe (TimedMetadataInsertion)
  }
derive instance newtypeJobTemplateSettings :: Newtype JobTemplateSettings _
derive instance repGenericJobTemplateSettings :: Generic JobTemplateSettings _
instance showJobTemplateSettings :: Show JobTemplateSettings where show = genericShow
instance decodeJobTemplateSettings :: Decode JobTemplateSettings where decode = genericDecode options
instance encodeJobTemplateSettings :: Encode JobTemplateSettings where encode = genericEncode options

-- | Constructs JobTemplateSettings from required parameters
newJobTemplateSettings :: JobTemplateSettings
newJobTemplateSettings  = JobTemplateSettings { "AdAvailOffset": Nothing, "AvailBlanking": Nothing, "Inputs": Nothing, "NielsenConfiguration": Nothing, "OutputGroups": Nothing, "TimecodeConfig": Nothing, "TimedMetadataInsertion": Nothing }

-- | Constructs JobTemplateSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobTemplateSettings' :: ( { "AdAvailOffset" :: Maybe (Int) , "AvailBlanking" :: Maybe (AvailBlanking) , "Inputs" :: Maybe (ListOfInputTemplate) , "NielsenConfiguration" :: Maybe (NielsenConfiguration) , "OutputGroups" :: Maybe (ListOfOutputGroup) , "TimecodeConfig" :: Maybe (TimecodeConfig) , "TimedMetadataInsertion" :: Maybe (TimedMetadataInsertion) } -> {"AdAvailOffset" :: Maybe (Int) , "AvailBlanking" :: Maybe (AvailBlanking) , "Inputs" :: Maybe (ListOfInputTemplate) , "NielsenConfiguration" :: Maybe (NielsenConfiguration) , "OutputGroups" :: Maybe (ListOfOutputGroup) , "TimecodeConfig" :: Maybe (TimecodeConfig) , "TimedMetadataInsertion" :: Maybe (TimedMetadataInsertion) } ) -> JobTemplateSettings
newJobTemplateSettings'  customize = (JobTemplateSettings <<< customize) { "AdAvailOffset": Nothing, "AvailBlanking": Nothing, "Inputs": Nothing, "NielsenConfiguration": Nothing, "OutputGroups": Nothing, "TimecodeConfig": Nothing, "TimedMetadataInsertion": Nothing }



-- | Code to specify the language, following the specification "ISO 639-2 three-digit code":http://www.loc.gov/standards/iso639-2/
newtype LanguageCode = LanguageCode String
derive instance newtypeLanguageCode :: Newtype LanguageCode _
derive instance repGenericLanguageCode :: Generic LanguageCode _
instance showLanguageCode :: Show LanguageCode where show = genericShow
instance decodeLanguageCode :: Decode LanguageCode where decode = genericDecode options
instance encodeLanguageCode :: Encode LanguageCode where encode = genericEncode options



newtype ListJobTemplatesRequest = ListJobTemplatesRequest 
  { "Category" :: Maybe (String)
  , "ListBy" :: Maybe (JobTemplateListBy)
  , "MaxResults" :: Maybe (Int)
  , "NextToken" :: Maybe (String)
  , "Order" :: Maybe (Order)
  }
derive instance newtypeListJobTemplatesRequest :: Newtype ListJobTemplatesRequest _
derive instance repGenericListJobTemplatesRequest :: Generic ListJobTemplatesRequest _
instance showListJobTemplatesRequest :: Show ListJobTemplatesRequest where show = genericShow
instance decodeListJobTemplatesRequest :: Decode ListJobTemplatesRequest where decode = genericDecode options
instance encodeListJobTemplatesRequest :: Encode ListJobTemplatesRequest where encode = genericEncode options

-- | Constructs ListJobTemplatesRequest from required parameters
newListJobTemplatesRequest :: ListJobTemplatesRequest
newListJobTemplatesRequest  = ListJobTemplatesRequest { "Category": Nothing, "ListBy": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "Order": Nothing }

-- | Constructs ListJobTemplatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobTemplatesRequest' :: ( { "Category" :: Maybe (String) , "ListBy" :: Maybe (JobTemplateListBy) , "MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) , "Order" :: Maybe (Order) } -> {"Category" :: Maybe (String) , "ListBy" :: Maybe (JobTemplateListBy) , "MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) , "Order" :: Maybe (Order) } ) -> ListJobTemplatesRequest
newListJobTemplatesRequest'  customize = (ListJobTemplatesRequest <<< customize) { "Category": Nothing, "ListBy": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "Order": Nothing }



newtype ListJobTemplatesResponse = ListJobTemplatesResponse 
  { "JobTemplates" :: Maybe (ListOfJobTemplate)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListJobTemplatesResponse :: Newtype ListJobTemplatesResponse _
derive instance repGenericListJobTemplatesResponse :: Generic ListJobTemplatesResponse _
instance showListJobTemplatesResponse :: Show ListJobTemplatesResponse where show = genericShow
instance decodeListJobTemplatesResponse :: Decode ListJobTemplatesResponse where decode = genericDecode options
instance encodeListJobTemplatesResponse :: Encode ListJobTemplatesResponse where encode = genericEncode options

-- | Constructs ListJobTemplatesResponse from required parameters
newListJobTemplatesResponse :: ListJobTemplatesResponse
newListJobTemplatesResponse  = ListJobTemplatesResponse { "JobTemplates": Nothing, "NextToken": Nothing }

-- | Constructs ListJobTemplatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobTemplatesResponse' :: ( { "JobTemplates" :: Maybe (ListOfJobTemplate) , "NextToken" :: Maybe (String) } -> {"JobTemplates" :: Maybe (ListOfJobTemplate) , "NextToken" :: Maybe (String) } ) -> ListJobTemplatesResponse
newListJobTemplatesResponse'  customize = (ListJobTemplatesResponse <<< customize) { "JobTemplates": Nothing, "NextToken": Nothing }



newtype ListJobsRequest = ListJobsRequest 
  { "MaxResults" :: Maybe (Int)
  , "NextToken" :: Maybe (String)
  , "Order" :: Maybe (Order)
  , "Queue" :: Maybe (String)
  , "Status" :: Maybe (JobStatus)
  }
derive instance newtypeListJobsRequest :: Newtype ListJobsRequest _
derive instance repGenericListJobsRequest :: Generic ListJobsRequest _
instance showListJobsRequest :: Show ListJobsRequest where show = genericShow
instance decodeListJobsRequest :: Decode ListJobsRequest where decode = genericDecode options
instance encodeListJobsRequest :: Encode ListJobsRequest where encode = genericEncode options

-- | Constructs ListJobsRequest from required parameters
newListJobsRequest :: ListJobsRequest
newListJobsRequest  = ListJobsRequest { "MaxResults": Nothing, "NextToken": Nothing, "Order": Nothing, "Queue": Nothing, "Status": Nothing }

-- | Constructs ListJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsRequest' :: ( { "MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) , "Order" :: Maybe (Order) , "Queue" :: Maybe (String) , "Status" :: Maybe (JobStatus) } -> {"MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) , "Order" :: Maybe (Order) , "Queue" :: Maybe (String) , "Status" :: Maybe (JobStatus) } ) -> ListJobsRequest
newListJobsRequest'  customize = (ListJobsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing, "Order": Nothing, "Queue": Nothing, "Status": Nothing }



newtype ListJobsResponse = ListJobsResponse 
  { "Jobs" :: Maybe (ListOfJob)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListJobsResponse :: Newtype ListJobsResponse _
derive instance repGenericListJobsResponse :: Generic ListJobsResponse _
instance showListJobsResponse :: Show ListJobsResponse where show = genericShow
instance decodeListJobsResponse :: Decode ListJobsResponse where decode = genericDecode options
instance encodeListJobsResponse :: Encode ListJobsResponse where encode = genericEncode options

-- | Constructs ListJobsResponse from required parameters
newListJobsResponse :: ListJobsResponse
newListJobsResponse  = ListJobsResponse { "Jobs": Nothing, "NextToken": Nothing }

-- | Constructs ListJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsResponse' :: ( { "Jobs" :: Maybe (ListOfJob) , "NextToken" :: Maybe (String) } -> {"Jobs" :: Maybe (ListOfJob) , "NextToken" :: Maybe (String) } ) -> ListJobsResponse
newListJobsResponse'  customize = (ListJobsResponse <<< customize) { "Jobs": Nothing, "NextToken": Nothing }



newtype ListOfAudioDescription = ListOfAudioDescription (Array AudioDescription)
derive instance newtypeListOfAudioDescription :: Newtype ListOfAudioDescription _
derive instance repGenericListOfAudioDescription :: Generic ListOfAudioDescription _
instance showListOfAudioDescription :: Show ListOfAudioDescription where show = genericShow
instance decodeListOfAudioDescription :: Decode ListOfAudioDescription where decode = genericDecode options
instance encodeListOfAudioDescription :: Encode ListOfAudioDescription where encode = genericEncode options



newtype ListOfCaptionDescription = ListOfCaptionDescription (Array CaptionDescription)
derive instance newtypeListOfCaptionDescription :: Newtype ListOfCaptionDescription _
derive instance repGenericListOfCaptionDescription :: Generic ListOfCaptionDescription _
instance showListOfCaptionDescription :: Show ListOfCaptionDescription where show = genericShow
instance decodeListOfCaptionDescription :: Decode ListOfCaptionDescription where decode = genericDecode options
instance encodeListOfCaptionDescription :: Encode ListOfCaptionDescription where encode = genericEncode options



newtype ListOfCaptionDescriptionPreset = ListOfCaptionDescriptionPreset (Array CaptionDescriptionPreset)
derive instance newtypeListOfCaptionDescriptionPreset :: Newtype ListOfCaptionDescriptionPreset _
derive instance repGenericListOfCaptionDescriptionPreset :: Generic ListOfCaptionDescriptionPreset _
instance showListOfCaptionDescriptionPreset :: Show ListOfCaptionDescriptionPreset where show = genericShow
instance decodeListOfCaptionDescriptionPreset :: Decode ListOfCaptionDescriptionPreset where decode = genericDecode options
instance encodeListOfCaptionDescriptionPreset :: Encode ListOfCaptionDescriptionPreset where encode = genericEncode options



newtype ListOfEndpoint = ListOfEndpoint (Array Endpoint)
derive instance newtypeListOfEndpoint :: Newtype ListOfEndpoint _
derive instance repGenericListOfEndpoint :: Generic ListOfEndpoint _
instance showListOfEndpoint :: Show ListOfEndpoint where show = genericShow
instance decodeListOfEndpoint :: Decode ListOfEndpoint where decode = genericDecode options
instance encodeListOfEndpoint :: Encode ListOfEndpoint where encode = genericEncode options



newtype ListOfHlsAdMarkers = ListOfHlsAdMarkers (Array HlsAdMarkers)
derive instance newtypeListOfHlsAdMarkers :: Newtype ListOfHlsAdMarkers _
derive instance repGenericListOfHlsAdMarkers :: Generic ListOfHlsAdMarkers _
instance showListOfHlsAdMarkers :: Show ListOfHlsAdMarkers where show = genericShow
instance decodeListOfHlsAdMarkers :: Decode ListOfHlsAdMarkers where decode = genericDecode options
instance encodeListOfHlsAdMarkers :: Encode ListOfHlsAdMarkers where encode = genericEncode options



newtype ListOfHlsCaptionLanguageMapping = ListOfHlsCaptionLanguageMapping (Array HlsCaptionLanguageMapping)
derive instance newtypeListOfHlsCaptionLanguageMapping :: Newtype ListOfHlsCaptionLanguageMapping _
derive instance repGenericListOfHlsCaptionLanguageMapping :: Generic ListOfHlsCaptionLanguageMapping _
instance showListOfHlsCaptionLanguageMapping :: Show ListOfHlsCaptionLanguageMapping where show = genericShow
instance decodeListOfHlsCaptionLanguageMapping :: Decode ListOfHlsCaptionLanguageMapping where decode = genericDecode options
instance encodeListOfHlsCaptionLanguageMapping :: Encode ListOfHlsCaptionLanguageMapping where encode = genericEncode options



newtype ListOfId3Insertion = ListOfId3Insertion (Array Id3Insertion)
derive instance newtypeListOfId3Insertion :: Newtype ListOfId3Insertion _
derive instance repGenericListOfId3Insertion :: Generic ListOfId3Insertion _
instance showListOfId3Insertion :: Show ListOfId3Insertion where show = genericShow
instance decodeListOfId3Insertion :: Decode ListOfId3Insertion where decode = genericDecode options
instance encodeListOfId3Insertion :: Encode ListOfId3Insertion where encode = genericEncode options



newtype ListOfInput = ListOfInput (Array Input)
derive instance newtypeListOfInput :: Newtype ListOfInput _
derive instance repGenericListOfInput :: Generic ListOfInput _
instance showListOfInput :: Show ListOfInput where show = genericShow
instance decodeListOfInput :: Decode ListOfInput where decode = genericDecode options
instance encodeListOfInput :: Encode ListOfInput where encode = genericEncode options



newtype ListOfInputClipping = ListOfInputClipping (Array InputClipping)
derive instance newtypeListOfInputClipping :: Newtype ListOfInputClipping _
derive instance repGenericListOfInputClipping :: Generic ListOfInputClipping _
instance showListOfInputClipping :: Show ListOfInputClipping where show = genericShow
instance decodeListOfInputClipping :: Decode ListOfInputClipping where decode = genericDecode options
instance encodeListOfInputClipping :: Encode ListOfInputClipping where encode = genericEncode options



newtype ListOfInputTemplate = ListOfInputTemplate (Array InputTemplate)
derive instance newtypeListOfInputTemplate :: Newtype ListOfInputTemplate _
derive instance repGenericListOfInputTemplate :: Generic ListOfInputTemplate _
instance showListOfInputTemplate :: Show ListOfInputTemplate where show = genericShow
instance decodeListOfInputTemplate :: Decode ListOfInputTemplate where decode = genericDecode options
instance encodeListOfInputTemplate :: Encode ListOfInputTemplate where encode = genericEncode options



newtype ListOfInsertableImage = ListOfInsertableImage (Array InsertableImage)
derive instance newtypeListOfInsertableImage :: Newtype ListOfInsertableImage _
derive instance repGenericListOfInsertableImage :: Generic ListOfInsertableImage _
instance showListOfInsertableImage :: Show ListOfInsertableImage where show = genericShow
instance decodeListOfInsertableImage :: Decode ListOfInsertableImage where decode = genericDecode options
instance encodeListOfInsertableImage :: Encode ListOfInsertableImage where encode = genericEncode options



newtype ListOfJob = ListOfJob (Array Job)
derive instance newtypeListOfJob :: Newtype ListOfJob _
derive instance repGenericListOfJob :: Generic ListOfJob _
instance showListOfJob :: Show ListOfJob where show = genericShow
instance decodeListOfJob :: Decode ListOfJob where decode = genericDecode options
instance encodeListOfJob :: Encode ListOfJob where encode = genericEncode options



newtype ListOfJobTemplate = ListOfJobTemplate (Array JobTemplate)
derive instance newtypeListOfJobTemplate :: Newtype ListOfJobTemplate _
derive instance repGenericListOfJobTemplate :: Generic ListOfJobTemplate _
instance showListOfJobTemplate :: Show ListOfJobTemplate where show = genericShow
instance decodeListOfJobTemplate :: Decode ListOfJobTemplate where decode = genericDecode options
instance encodeListOfJobTemplate :: Encode ListOfJobTemplate where encode = genericEncode options



newtype ListOfOutput = ListOfOutput (Array Output)
derive instance newtypeListOfOutput :: Newtype ListOfOutput _
derive instance repGenericListOfOutput :: Generic ListOfOutput _
instance showListOfOutput :: Show ListOfOutput where show = genericShow
instance decodeListOfOutput :: Decode ListOfOutput where decode = genericDecode options
instance encodeListOfOutput :: Encode ListOfOutput where encode = genericEncode options



newtype ListOfOutputChannelMapping = ListOfOutputChannelMapping (Array OutputChannelMapping)
derive instance newtypeListOfOutputChannelMapping :: Newtype ListOfOutputChannelMapping _
derive instance repGenericListOfOutputChannelMapping :: Generic ListOfOutputChannelMapping _
instance showListOfOutputChannelMapping :: Show ListOfOutputChannelMapping where show = genericShow
instance decodeListOfOutputChannelMapping :: Decode ListOfOutputChannelMapping where decode = genericDecode options
instance encodeListOfOutputChannelMapping :: Encode ListOfOutputChannelMapping where encode = genericEncode options



newtype ListOfOutputDetail = ListOfOutputDetail (Array OutputDetail)
derive instance newtypeListOfOutputDetail :: Newtype ListOfOutputDetail _
derive instance repGenericListOfOutputDetail :: Generic ListOfOutputDetail _
instance showListOfOutputDetail :: Show ListOfOutputDetail where show = genericShow
instance decodeListOfOutputDetail :: Decode ListOfOutputDetail where decode = genericDecode options
instance encodeListOfOutputDetail :: Encode ListOfOutputDetail where encode = genericEncode options



newtype ListOfOutputGroup = ListOfOutputGroup (Array OutputGroup)
derive instance newtypeListOfOutputGroup :: Newtype ListOfOutputGroup _
derive instance repGenericListOfOutputGroup :: Generic ListOfOutputGroup _
instance showListOfOutputGroup :: Show ListOfOutputGroup where show = genericShow
instance decodeListOfOutputGroup :: Decode ListOfOutputGroup where decode = genericDecode options
instance encodeListOfOutputGroup :: Encode ListOfOutputGroup where encode = genericEncode options



newtype ListOfOutputGroupDetail = ListOfOutputGroupDetail (Array OutputGroupDetail)
derive instance newtypeListOfOutputGroupDetail :: Newtype ListOfOutputGroupDetail _
derive instance repGenericListOfOutputGroupDetail :: Generic ListOfOutputGroupDetail _
instance showListOfOutputGroupDetail :: Show ListOfOutputGroupDetail where show = genericShow
instance decodeListOfOutputGroupDetail :: Decode ListOfOutputGroupDetail where decode = genericDecode options
instance encodeListOfOutputGroupDetail :: Encode ListOfOutputGroupDetail where encode = genericEncode options



newtype ListOfPreset = ListOfPreset (Array Preset)
derive instance newtypeListOfPreset :: Newtype ListOfPreset _
derive instance repGenericListOfPreset :: Generic ListOfPreset _
instance showListOfPreset :: Show ListOfPreset where show = genericShow
instance decodeListOfPreset :: Decode ListOfPreset where decode = genericDecode options
instance encodeListOfPreset :: Encode ListOfPreset where encode = genericEncode options



newtype ListOfQueue = ListOfQueue (Array Queue)
derive instance newtypeListOfQueue :: Newtype ListOfQueue _
derive instance repGenericListOfQueue :: Generic ListOfQueue _
instance showListOfQueue :: Show ListOfQueue where show = genericShow
instance decodeListOfQueue :: Decode ListOfQueue where decode = genericDecode options
instance encodeListOfQueue :: Encode ListOfQueue where encode = genericEncode options



newtype ListOf__integer = ListOf__integer (Array Int)
derive instance newtypeListOf__integer :: Newtype ListOf__integer _
derive instance repGenericListOf__integer :: Generic ListOf__integer _
instance showListOf__integer :: Show ListOf__integer where show = genericShow
instance decodeListOf__integer :: Decode ListOf__integer where decode = genericDecode options
instance encodeListOf__integer :: Encode ListOf__integer where encode = genericEncode options



newtype ListOf__string = ListOf__string (Array String)
derive instance newtypeListOf__string :: Newtype ListOf__string _
derive instance repGenericListOf__string :: Generic ListOf__string _
instance showListOf__string :: Show ListOf__string where show = genericShow
instance decodeListOf__string :: Decode ListOf__string where decode = genericDecode options
instance encodeListOf__string :: Encode ListOf__string where encode = genericEncode options



newtype ListPresetsRequest = ListPresetsRequest 
  { "Category" :: Maybe (String)
  , "ListBy" :: Maybe (PresetListBy)
  , "MaxResults" :: Maybe (Int)
  , "NextToken" :: Maybe (String)
  , "Order" :: Maybe (Order)
  }
derive instance newtypeListPresetsRequest :: Newtype ListPresetsRequest _
derive instance repGenericListPresetsRequest :: Generic ListPresetsRequest _
instance showListPresetsRequest :: Show ListPresetsRequest where show = genericShow
instance decodeListPresetsRequest :: Decode ListPresetsRequest where decode = genericDecode options
instance encodeListPresetsRequest :: Encode ListPresetsRequest where encode = genericEncode options

-- | Constructs ListPresetsRequest from required parameters
newListPresetsRequest :: ListPresetsRequest
newListPresetsRequest  = ListPresetsRequest { "Category": Nothing, "ListBy": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "Order": Nothing }

-- | Constructs ListPresetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPresetsRequest' :: ( { "Category" :: Maybe (String) , "ListBy" :: Maybe (PresetListBy) , "MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) , "Order" :: Maybe (Order) } -> {"Category" :: Maybe (String) , "ListBy" :: Maybe (PresetListBy) , "MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) , "Order" :: Maybe (Order) } ) -> ListPresetsRequest
newListPresetsRequest'  customize = (ListPresetsRequest <<< customize) { "Category": Nothing, "ListBy": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "Order": Nothing }



newtype ListPresetsResponse = ListPresetsResponse 
  { "NextToken" :: Maybe (String)
  , "Presets" :: Maybe (ListOfPreset)
  }
derive instance newtypeListPresetsResponse :: Newtype ListPresetsResponse _
derive instance repGenericListPresetsResponse :: Generic ListPresetsResponse _
instance showListPresetsResponse :: Show ListPresetsResponse where show = genericShow
instance decodeListPresetsResponse :: Decode ListPresetsResponse where decode = genericDecode options
instance encodeListPresetsResponse :: Encode ListPresetsResponse where encode = genericEncode options

-- | Constructs ListPresetsResponse from required parameters
newListPresetsResponse :: ListPresetsResponse
newListPresetsResponse  = ListPresetsResponse { "NextToken": Nothing, "Presets": Nothing }

-- | Constructs ListPresetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPresetsResponse' :: ( { "NextToken" :: Maybe (String) , "Presets" :: Maybe (ListOfPreset) } -> {"NextToken" :: Maybe (String) , "Presets" :: Maybe (ListOfPreset) } ) -> ListPresetsResponse
newListPresetsResponse'  customize = (ListPresetsResponse <<< customize) { "NextToken": Nothing, "Presets": Nothing }



newtype ListQueuesRequest = ListQueuesRequest 
  { "ListBy" :: Maybe (QueueListBy)
  , "MaxResults" :: Maybe (Int)
  , "NextToken" :: Maybe (String)
  , "Order" :: Maybe (Order)
  }
derive instance newtypeListQueuesRequest :: Newtype ListQueuesRequest _
derive instance repGenericListQueuesRequest :: Generic ListQueuesRequest _
instance showListQueuesRequest :: Show ListQueuesRequest where show = genericShow
instance decodeListQueuesRequest :: Decode ListQueuesRequest where decode = genericDecode options
instance encodeListQueuesRequest :: Encode ListQueuesRequest where encode = genericEncode options

-- | Constructs ListQueuesRequest from required parameters
newListQueuesRequest :: ListQueuesRequest
newListQueuesRequest  = ListQueuesRequest { "ListBy": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "Order": Nothing }

-- | Constructs ListQueuesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueuesRequest' :: ( { "ListBy" :: Maybe (QueueListBy) , "MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) , "Order" :: Maybe (Order) } -> {"ListBy" :: Maybe (QueueListBy) , "MaxResults" :: Maybe (Int) , "NextToken" :: Maybe (String) , "Order" :: Maybe (Order) } ) -> ListQueuesRequest
newListQueuesRequest'  customize = (ListQueuesRequest <<< customize) { "ListBy": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "Order": Nothing }



newtype ListQueuesResponse = ListQueuesResponse 
  { "NextToken" :: Maybe (String)
  , "Queues" :: Maybe (ListOfQueue)
  }
derive instance newtypeListQueuesResponse :: Newtype ListQueuesResponse _
derive instance repGenericListQueuesResponse :: Generic ListQueuesResponse _
instance showListQueuesResponse :: Show ListQueuesResponse where show = genericShow
instance decodeListQueuesResponse :: Decode ListQueuesResponse where decode = genericDecode options
instance encodeListQueuesResponse :: Encode ListQueuesResponse where encode = genericEncode options

-- | Constructs ListQueuesResponse from required parameters
newListQueuesResponse :: ListQueuesResponse
newListQueuesResponse  = ListQueuesResponse { "NextToken": Nothing, "Queues": Nothing }

-- | Constructs ListQueuesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueuesResponse' :: ( { "NextToken" :: Maybe (String) , "Queues" :: Maybe (ListOfQueue) } -> {"NextToken" :: Maybe (String) , "Queues" :: Maybe (ListOfQueue) } ) -> ListQueuesResponse
newListQueuesResponse'  customize = (ListQueuesResponse <<< customize) { "NextToken": Nothing, "Queues": Nothing }



-- | Selects between the DVB and ATSC buffer models for Dolby Digital audio.
newtype M2tsAudioBufferModel = M2tsAudioBufferModel String
derive instance newtypeM2tsAudioBufferModel :: Newtype M2tsAudioBufferModel _
derive instance repGenericM2tsAudioBufferModel :: Generic M2tsAudioBufferModel _
instance showM2tsAudioBufferModel :: Show M2tsAudioBufferModel where show = genericShow
instance decodeM2tsAudioBufferModel :: Decode M2tsAudioBufferModel where decode = genericDecode options
instance encodeM2tsAudioBufferModel :: Encode M2tsAudioBufferModel where encode = genericEncode options



-- | Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.
newtype M2tsBufferModel = M2tsBufferModel String
derive instance newtypeM2tsBufferModel :: Newtype M2tsBufferModel _
derive instance repGenericM2tsBufferModel :: Generic M2tsBufferModel _
instance showM2tsBufferModel :: Show M2tsBufferModel where show = genericShow
instance decodeM2tsBufferModel :: Decode M2tsBufferModel where decode = genericDecode options
instance encodeM2tsBufferModel :: Encode M2tsBufferModel where encode = genericEncode options



-- | When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
newtype M2tsEbpAudioInterval = M2tsEbpAudioInterval String
derive instance newtypeM2tsEbpAudioInterval :: Newtype M2tsEbpAudioInterval _
derive instance repGenericM2tsEbpAudioInterval :: Generic M2tsEbpAudioInterval _
instance showM2tsEbpAudioInterval :: Show M2tsEbpAudioInterval where show = genericShow
instance decodeM2tsEbpAudioInterval :: Decode M2tsEbpAudioInterval where decode = genericDecode options
instance encodeM2tsEbpAudioInterval :: Encode M2tsEbpAudioInterval where encode = genericEncode options



-- | Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
newtype M2tsEbpPlacement = M2tsEbpPlacement String
derive instance newtypeM2tsEbpPlacement :: Newtype M2tsEbpPlacement _
derive instance repGenericM2tsEbpPlacement :: Generic M2tsEbpPlacement _
instance showM2tsEbpPlacement :: Show M2tsEbpPlacement where show = genericShow
instance decodeM2tsEbpPlacement :: Decode M2tsEbpPlacement where decode = genericDecode options
instance encodeM2tsEbpPlacement :: Encode M2tsEbpPlacement where encode = genericEncode options



-- | Controls whether to include the ES Rate field in the PES header.
newtype M2tsEsRateInPes = M2tsEsRateInPes String
derive instance newtypeM2tsEsRateInPes :: Newtype M2tsEsRateInPes _
derive instance repGenericM2tsEsRateInPes :: Generic M2tsEsRateInPes _
instance showM2tsEsRateInPes :: Show M2tsEsRateInPes where show = genericShow
instance decodeM2tsEsRateInPes :: Decode M2tsEsRateInPes where decode = genericDecode options
instance encodeM2tsEsRateInPes :: Encode M2tsEsRateInPes where encode = genericEncode options



-- | If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
newtype M2tsNielsenId3 = M2tsNielsenId3 String
derive instance newtypeM2tsNielsenId3 :: Newtype M2tsNielsenId3 _
derive instance repGenericM2tsNielsenId3 :: Generic M2tsNielsenId3 _
instance showM2tsNielsenId3 :: Show M2tsNielsenId3 where show = genericShow
instance decodeM2tsNielsenId3 :: Decode M2tsNielsenId3 where decode = genericDecode options
instance encodeM2tsNielsenId3 :: Encode M2tsNielsenId3 where encode = genericEncode options



-- | When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream.
newtype M2tsPcrControl = M2tsPcrControl String
derive instance newtypeM2tsPcrControl :: Newtype M2tsPcrControl _
derive instance repGenericM2tsPcrControl :: Generic M2tsPcrControl _
instance showM2tsPcrControl :: Show M2tsPcrControl where show = genericShow
instance decodeM2tsPcrControl :: Decode M2tsPcrControl where decode = genericDecode options
instance encodeM2tsPcrControl :: Encode M2tsPcrControl where encode = genericEncode options



-- | When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.
newtype M2tsRateMode = M2tsRateMode String
derive instance newtypeM2tsRateMode :: Newtype M2tsRateMode _
derive instance repGenericM2tsRateMode :: Generic M2tsRateMode _
instance showM2tsRateMode :: Show M2tsRateMode where show = genericShow
instance decodeM2tsRateMode :: Decode M2tsRateMode where decode = genericDecode options
instance encodeM2tsRateMode :: Encode M2tsRateMode where encode = genericEncode options



-- | Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals from input to output.
newtype M2tsScte35Source = M2tsScte35Source String
derive instance newtypeM2tsScte35Source :: Newtype M2tsScte35Source _
derive instance repGenericM2tsScte35Source :: Generic M2tsScte35Source _
instance showM2tsScte35Source :: Show M2tsScte35Source where show = genericShow
instance decodeM2tsScte35Source :: Decode M2tsScte35Source where decode = genericDecode options
instance encodeM2tsScte35Source :: Encode M2tsScte35Source where encode = genericEncode options



-- | Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
newtype M2tsSegmentationMarkers = M2tsSegmentationMarkers String
derive instance newtypeM2tsSegmentationMarkers :: Newtype M2tsSegmentationMarkers _
derive instance repGenericM2tsSegmentationMarkers :: Generic M2tsSegmentationMarkers _
instance showM2tsSegmentationMarkers :: Show M2tsSegmentationMarkers where show = genericShow
instance decodeM2tsSegmentationMarkers :: Decode M2tsSegmentationMarkers where decode = genericDecode options
instance encodeM2tsSegmentationMarkers :: Encode M2tsSegmentationMarkers where encode = genericEncode options



-- | The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "reset_cadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of "maintain_cadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule.
newtype M2tsSegmentationStyle = M2tsSegmentationStyle String
derive instance newtypeM2tsSegmentationStyle :: Newtype M2tsSegmentationStyle _
derive instance repGenericM2tsSegmentationStyle :: Generic M2tsSegmentationStyle _
instance showM2tsSegmentationStyle :: Show M2tsSegmentationStyle where show = genericShow
instance decodeM2tsSegmentationStyle :: Decode M2tsSegmentationStyle where decode = genericDecode options
instance encodeM2tsSegmentationStyle :: Encode M2tsSegmentationStyle where encode = genericEncode options



-- | Settings for M2TS Container.
newtype M2tsSettings = M2tsSettings 
  { "AudioBufferModel" :: Maybe (M2tsAudioBufferModel)
  , "AudioFramesPerPes" :: Maybe (Int)
  , "AudioPids" :: Maybe (ListOf__integer)
  , "Bitrate" :: Maybe (Int)
  , "BufferModel" :: Maybe (M2tsBufferModel)
  , "DvbNitSettings" :: Maybe (DvbNitSettings)
  , "DvbSdtSettings" :: Maybe (DvbSdtSettings)
  , "DvbSubPids" :: Maybe (ListOf__integer)
  , "DvbTdtSettings" :: Maybe (DvbTdtSettings)
  , "DvbTeletextPid" :: Maybe (Int)
  , "EbpAudioInterval" :: Maybe (M2tsEbpAudioInterval)
  , "EbpPlacement" :: Maybe (M2tsEbpPlacement)
  , "EsRateInPes" :: Maybe (M2tsEsRateInPes)
  , "FragmentTime" :: Maybe (Number)
  , "MaxPcrInterval" :: Maybe (Int)
  , "MinEbpInterval" :: Maybe (Int)
  , "NielsenId3" :: Maybe (M2tsNielsenId3)
  , "NullPacketBitrate" :: Maybe (Number)
  , "PatInterval" :: Maybe (Int)
  , "PcrControl" :: Maybe (M2tsPcrControl)
  , "PcrPid" :: Maybe (Int)
  , "PmtInterval" :: Maybe (Int)
  , "PmtPid" :: Maybe (Int)
  , "PrivateMetadataPid" :: Maybe (Int)
  , "ProgramNumber" :: Maybe (Int)
  , "RateMode" :: Maybe (M2tsRateMode)
  , "Scte35Pid" :: Maybe (Int)
  , "Scte35Source" :: Maybe (M2tsScte35Source)
  , "SegmentationMarkers" :: Maybe (M2tsSegmentationMarkers)
  , "SegmentationStyle" :: Maybe (M2tsSegmentationStyle)
  , "SegmentationTime" :: Maybe (Number)
  , "TimedMetadataPid" :: Maybe (Int)
  , "TransportStreamId" :: Maybe (Int)
  , "VideoPid" :: Maybe (Int)
  }
derive instance newtypeM2tsSettings :: Newtype M2tsSettings _
derive instance repGenericM2tsSettings :: Generic M2tsSettings _
instance showM2tsSettings :: Show M2tsSettings where show = genericShow
instance decodeM2tsSettings :: Decode M2tsSettings where decode = genericDecode options
instance encodeM2tsSettings :: Encode M2tsSettings where encode = genericEncode options

-- | Constructs M2tsSettings from required parameters
newM2tsSettings :: M2tsSettings
newM2tsSettings  = M2tsSettings { "AudioBufferModel": Nothing, "AudioFramesPerPes": Nothing, "AudioPids": Nothing, "Bitrate": Nothing, "BufferModel": Nothing, "DvbNitSettings": Nothing, "DvbSdtSettings": Nothing, "DvbSubPids": Nothing, "DvbTdtSettings": Nothing, "DvbTeletextPid": Nothing, "EbpAudioInterval": Nothing, "EbpPlacement": Nothing, "EsRateInPes": Nothing, "FragmentTime": Nothing, "MaxPcrInterval": Nothing, "MinEbpInterval": Nothing, "NielsenId3": Nothing, "NullPacketBitrate": Nothing, "PatInterval": Nothing, "PcrControl": Nothing, "PcrPid": Nothing, "PmtInterval": Nothing, "PmtPid": Nothing, "PrivateMetadataPid": Nothing, "ProgramNumber": Nothing, "RateMode": Nothing, "Scte35Pid": Nothing, "Scte35Source": Nothing, "SegmentationMarkers": Nothing, "SegmentationStyle": Nothing, "SegmentationTime": Nothing, "TimedMetadataPid": Nothing, "TransportStreamId": Nothing, "VideoPid": Nothing }

-- | Constructs M2tsSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newM2tsSettings' :: ( { "AudioBufferModel" :: Maybe (M2tsAudioBufferModel) , "AudioFramesPerPes" :: Maybe (Int) , "AudioPids" :: Maybe (ListOf__integer) , "Bitrate" :: Maybe (Int) , "BufferModel" :: Maybe (M2tsBufferModel) , "DvbNitSettings" :: Maybe (DvbNitSettings) , "DvbSdtSettings" :: Maybe (DvbSdtSettings) , "DvbSubPids" :: Maybe (ListOf__integer) , "DvbTdtSettings" :: Maybe (DvbTdtSettings) , "DvbTeletextPid" :: Maybe (Int) , "EbpAudioInterval" :: Maybe (M2tsEbpAudioInterval) , "EbpPlacement" :: Maybe (M2tsEbpPlacement) , "EsRateInPes" :: Maybe (M2tsEsRateInPes) , "FragmentTime" :: Maybe (Number) , "MaxPcrInterval" :: Maybe (Int) , "MinEbpInterval" :: Maybe (Int) , "NielsenId3" :: Maybe (M2tsNielsenId3) , "NullPacketBitrate" :: Maybe (Number) , "PatInterval" :: Maybe (Int) , "PcrControl" :: Maybe (M2tsPcrControl) , "PcrPid" :: Maybe (Int) , "PmtInterval" :: Maybe (Int) , "PmtPid" :: Maybe (Int) , "PrivateMetadataPid" :: Maybe (Int) , "ProgramNumber" :: Maybe (Int) , "RateMode" :: Maybe (M2tsRateMode) , "Scte35Pid" :: Maybe (Int) , "Scte35Source" :: Maybe (M2tsScte35Source) , "SegmentationMarkers" :: Maybe (M2tsSegmentationMarkers) , "SegmentationStyle" :: Maybe (M2tsSegmentationStyle) , "SegmentationTime" :: Maybe (Number) , "TimedMetadataPid" :: Maybe (Int) , "TransportStreamId" :: Maybe (Int) , "VideoPid" :: Maybe (Int) } -> {"AudioBufferModel" :: Maybe (M2tsAudioBufferModel) , "AudioFramesPerPes" :: Maybe (Int) , "AudioPids" :: Maybe (ListOf__integer) , "Bitrate" :: Maybe (Int) , "BufferModel" :: Maybe (M2tsBufferModel) , "DvbNitSettings" :: Maybe (DvbNitSettings) , "DvbSdtSettings" :: Maybe (DvbSdtSettings) , "DvbSubPids" :: Maybe (ListOf__integer) , "DvbTdtSettings" :: Maybe (DvbTdtSettings) , "DvbTeletextPid" :: Maybe (Int) , "EbpAudioInterval" :: Maybe (M2tsEbpAudioInterval) , "EbpPlacement" :: Maybe (M2tsEbpPlacement) , "EsRateInPes" :: Maybe (M2tsEsRateInPes) , "FragmentTime" :: Maybe (Number) , "MaxPcrInterval" :: Maybe (Int) , "MinEbpInterval" :: Maybe (Int) , "NielsenId3" :: Maybe (M2tsNielsenId3) , "NullPacketBitrate" :: Maybe (Number) , "PatInterval" :: Maybe (Int) , "PcrControl" :: Maybe (M2tsPcrControl) , "PcrPid" :: Maybe (Int) , "PmtInterval" :: Maybe (Int) , "PmtPid" :: Maybe (Int) , "PrivateMetadataPid" :: Maybe (Int) , "ProgramNumber" :: Maybe (Int) , "RateMode" :: Maybe (M2tsRateMode) , "Scte35Pid" :: Maybe (Int) , "Scte35Source" :: Maybe (M2tsScte35Source) , "SegmentationMarkers" :: Maybe (M2tsSegmentationMarkers) , "SegmentationStyle" :: Maybe (M2tsSegmentationStyle) , "SegmentationTime" :: Maybe (Number) , "TimedMetadataPid" :: Maybe (Int) , "TransportStreamId" :: Maybe (Int) , "VideoPid" :: Maybe (Int) } ) -> M2tsSettings
newM2tsSettings'  customize = (M2tsSettings <<< customize) { "AudioBufferModel": Nothing, "AudioFramesPerPes": Nothing, "AudioPids": Nothing, "Bitrate": Nothing, "BufferModel": Nothing, "DvbNitSettings": Nothing, "DvbSdtSettings": Nothing, "DvbSubPids": Nothing, "DvbTdtSettings": Nothing, "DvbTeletextPid": Nothing, "EbpAudioInterval": Nothing, "EbpPlacement": Nothing, "EsRateInPes": Nothing, "FragmentTime": Nothing, "MaxPcrInterval": Nothing, "MinEbpInterval": Nothing, "NielsenId3": Nothing, "NullPacketBitrate": Nothing, "PatInterval": Nothing, "PcrControl": Nothing, "PcrPid": Nothing, "PmtInterval": Nothing, "PmtPid": Nothing, "PrivateMetadataPid": Nothing, "ProgramNumber": Nothing, "RateMode": Nothing, "Scte35Pid": Nothing, "Scte35Source": Nothing, "SegmentationMarkers": Nothing, "SegmentationStyle": Nothing, "SegmentationTime": Nothing, "TimedMetadataPid": Nothing, "TransportStreamId": Nothing, "VideoPid": Nothing }



-- | If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
newtype M3u8NielsenId3 = M3u8NielsenId3 String
derive instance newtypeM3u8NielsenId3 :: Newtype M3u8NielsenId3 _
derive instance repGenericM3u8NielsenId3 :: Generic M3u8NielsenId3 _
instance showM3u8NielsenId3 :: Show M3u8NielsenId3 where show = genericShow
instance decodeM3u8NielsenId3 :: Decode M3u8NielsenId3 where decode = genericDecode options
instance encodeM3u8NielsenId3 :: Encode M3u8NielsenId3 where encode = genericEncode options



-- | When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
newtype M3u8PcrControl = M3u8PcrControl String
derive instance newtypeM3u8PcrControl :: Newtype M3u8PcrControl _
derive instance repGenericM3u8PcrControl :: Generic M3u8PcrControl _
instance showM3u8PcrControl :: Show M3u8PcrControl where show = genericShow
instance decodeM3u8PcrControl :: Decode M3u8PcrControl where decode = genericDecode options
instance encodeM3u8PcrControl :: Encode M3u8PcrControl where encode = genericEncode options



-- | Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals from input to output.
newtype M3u8Scte35Source = M3u8Scte35Source String
derive instance newtypeM3u8Scte35Source :: Newtype M3u8Scte35Source _
derive instance repGenericM3u8Scte35Source :: Generic M3u8Scte35Source _
instance showM3u8Scte35Source :: Show M3u8Scte35Source where show = genericShow
instance decodeM3u8Scte35Source :: Decode M3u8Scte35Source where decode = genericDecode options
instance encodeM3u8Scte35Source :: Encode M3u8Scte35Source where encode = genericEncode options



-- | Settings for TS segments in HLS
newtype M3u8Settings = M3u8Settings 
  { "AudioFramesPerPes" :: Maybe (Int)
  , "AudioPids" :: Maybe (ListOf__integer)
  , "NielsenId3" :: Maybe (M3u8NielsenId3)
  , "PatInterval" :: Maybe (Int)
  , "PcrControl" :: Maybe (M3u8PcrControl)
  , "PcrPid" :: Maybe (Int)
  , "PmtInterval" :: Maybe (Int)
  , "PmtPid" :: Maybe (Int)
  , "PrivateMetadataPid" :: Maybe (Int)
  , "ProgramNumber" :: Maybe (Int)
  , "Scte35Pid" :: Maybe (Int)
  , "Scte35Source" :: Maybe (M3u8Scte35Source)
  , "TimedMetadata" :: Maybe (TimedMetadata)
  , "TimedMetadataPid" :: Maybe (Int)
  , "TransportStreamId" :: Maybe (Int)
  , "VideoPid" :: Maybe (Int)
  }
derive instance newtypeM3u8Settings :: Newtype M3u8Settings _
derive instance repGenericM3u8Settings :: Generic M3u8Settings _
instance showM3u8Settings :: Show M3u8Settings where show = genericShow
instance decodeM3u8Settings :: Decode M3u8Settings where decode = genericDecode options
instance encodeM3u8Settings :: Encode M3u8Settings where encode = genericEncode options

-- | Constructs M3u8Settings from required parameters
newM3u8Settings :: M3u8Settings
newM3u8Settings  = M3u8Settings { "AudioFramesPerPes": Nothing, "AudioPids": Nothing, "NielsenId3": Nothing, "PatInterval": Nothing, "PcrControl": Nothing, "PcrPid": Nothing, "PmtInterval": Nothing, "PmtPid": Nothing, "PrivateMetadataPid": Nothing, "ProgramNumber": Nothing, "Scte35Pid": Nothing, "Scte35Source": Nothing, "TimedMetadata": Nothing, "TimedMetadataPid": Nothing, "TransportStreamId": Nothing, "VideoPid": Nothing }

-- | Constructs M3u8Settings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newM3u8Settings' :: ( { "AudioFramesPerPes" :: Maybe (Int) , "AudioPids" :: Maybe (ListOf__integer) , "NielsenId3" :: Maybe (M3u8NielsenId3) , "PatInterval" :: Maybe (Int) , "PcrControl" :: Maybe (M3u8PcrControl) , "PcrPid" :: Maybe (Int) , "PmtInterval" :: Maybe (Int) , "PmtPid" :: Maybe (Int) , "PrivateMetadataPid" :: Maybe (Int) , "ProgramNumber" :: Maybe (Int) , "Scte35Pid" :: Maybe (Int) , "Scte35Source" :: Maybe (M3u8Scte35Source) , "TimedMetadata" :: Maybe (TimedMetadata) , "TimedMetadataPid" :: Maybe (Int) , "TransportStreamId" :: Maybe (Int) , "VideoPid" :: Maybe (Int) } -> {"AudioFramesPerPes" :: Maybe (Int) , "AudioPids" :: Maybe (ListOf__integer) , "NielsenId3" :: Maybe (M3u8NielsenId3) , "PatInterval" :: Maybe (Int) , "PcrControl" :: Maybe (M3u8PcrControl) , "PcrPid" :: Maybe (Int) , "PmtInterval" :: Maybe (Int) , "PmtPid" :: Maybe (Int) , "PrivateMetadataPid" :: Maybe (Int) , "ProgramNumber" :: Maybe (Int) , "Scte35Pid" :: Maybe (Int) , "Scte35Source" :: Maybe (M3u8Scte35Source) , "TimedMetadata" :: Maybe (TimedMetadata) , "TimedMetadataPid" :: Maybe (Int) , "TransportStreamId" :: Maybe (Int) , "VideoPid" :: Maybe (Int) } ) -> M3u8Settings
newM3u8Settings'  customize = (M3u8Settings <<< customize) { "AudioFramesPerPes": Nothing, "AudioPids": Nothing, "NielsenId3": Nothing, "PatInterval": Nothing, "PcrControl": Nothing, "PcrPid": Nothing, "PmtInterval": Nothing, "PmtPid": Nothing, "PrivateMetadataPid": Nothing, "ProgramNumber": Nothing, "Scte35Pid": Nothing, "Scte35Source": Nothing, "TimedMetadata": Nothing, "TimedMetadataPid": Nothing, "TransportStreamId": Nothing, "VideoPid": Nothing }



newtype MapOfAudioSelector = MapOfAudioSelector (StrMap.StrMap AudioSelector)
derive instance newtypeMapOfAudioSelector :: Newtype MapOfAudioSelector _
derive instance repGenericMapOfAudioSelector :: Generic MapOfAudioSelector _
instance showMapOfAudioSelector :: Show MapOfAudioSelector where show = genericShow
instance decodeMapOfAudioSelector :: Decode MapOfAudioSelector where decode = genericDecode options
instance encodeMapOfAudioSelector :: Encode MapOfAudioSelector where encode = genericEncode options



newtype MapOfAudioSelectorGroup = MapOfAudioSelectorGroup (StrMap.StrMap AudioSelectorGroup)
derive instance newtypeMapOfAudioSelectorGroup :: Newtype MapOfAudioSelectorGroup _
derive instance repGenericMapOfAudioSelectorGroup :: Generic MapOfAudioSelectorGroup _
instance showMapOfAudioSelectorGroup :: Show MapOfAudioSelectorGroup where show = genericShow
instance decodeMapOfAudioSelectorGroup :: Decode MapOfAudioSelectorGroup where decode = genericDecode options
instance encodeMapOfAudioSelectorGroup :: Encode MapOfAudioSelectorGroup where encode = genericEncode options



newtype MapOfCaptionSelector = MapOfCaptionSelector (StrMap.StrMap CaptionSelector)
derive instance newtypeMapOfCaptionSelector :: Newtype MapOfCaptionSelector _
derive instance repGenericMapOfCaptionSelector :: Generic MapOfCaptionSelector _
instance showMapOfCaptionSelector :: Show MapOfCaptionSelector where show = genericShow
instance decodeMapOfCaptionSelector :: Decode MapOfCaptionSelector where decode = genericDecode options
instance encodeMapOfCaptionSelector :: Encode MapOfCaptionSelector where encode = genericEncode options



newtype MapOf__string = MapOf__string (StrMap.StrMap String)
derive instance newtypeMapOf__string :: Newtype MapOf__string _
derive instance repGenericMapOf__string :: Generic MapOf__string _
instance showMapOf__string :: Show MapOf__string where show = genericShow
instance decodeMapOf__string :: Decode MapOf__string where decode = genericDecode options
instance encodeMapOf__string :: Encode MapOf__string where encode = genericEncode options



-- | When enabled, include 'clap' atom if appropriate for the video output settings.
newtype MovClapAtom = MovClapAtom String
derive instance newtypeMovClapAtom :: Newtype MovClapAtom _
derive instance repGenericMovClapAtom :: Generic MovClapAtom _
instance showMovClapAtom :: Show MovClapAtom where show = genericShow
instance decodeMovClapAtom :: Decode MovClapAtom where decode = genericDecode options
instance encodeMovClapAtom :: Encode MovClapAtom where encode = genericEncode options



-- | When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
newtype MovCslgAtom = MovCslgAtom String
derive instance newtypeMovCslgAtom :: Newtype MovCslgAtom _
derive instance repGenericMovCslgAtom :: Generic MovCslgAtom _
instance showMovCslgAtom :: Show MovCslgAtom where show = genericShow
instance decodeMovCslgAtom :: Decode MovCslgAtom where decode = genericDecode options
instance encodeMovCslgAtom :: Encode MovCslgAtom where encode = genericEncode options



-- | When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.
newtype MovMpeg2FourCCControl = MovMpeg2FourCCControl String
derive instance newtypeMovMpeg2FourCCControl :: Newtype MovMpeg2FourCCControl _
derive instance repGenericMovMpeg2FourCCControl :: Generic MovMpeg2FourCCControl _
instance showMovMpeg2FourCCControl :: Show MovMpeg2FourCCControl where show = genericShow
instance decodeMovMpeg2FourCCControl :: Decode MovMpeg2FourCCControl where decode = genericDecode options
instance encodeMovMpeg2FourCCControl :: Encode MovMpeg2FourCCControl where encode = genericEncode options



-- | If set to OMNEON, inserts Omneon-compatible padding
newtype MovPaddingControl = MovPaddingControl String
derive instance newtypeMovPaddingControl :: Newtype MovPaddingControl _
derive instance repGenericMovPaddingControl :: Generic MovPaddingControl _
instance showMovPaddingControl :: Show MovPaddingControl where show = genericShow
instance decodeMovPaddingControl :: Decode MovPaddingControl where decode = genericDecode options
instance encodeMovPaddingControl :: Encode MovPaddingControl where encode = genericEncode options



-- | A value of 'external' creates separate media files and the wrapper file (.mov) contains references to these media files. A value of 'self_contained' creates only a wrapper (.mov) file and this file contains all of the media.
newtype MovReference = MovReference String
derive instance newtypeMovReference :: Newtype MovReference _
derive instance repGenericMovReference :: Generic MovReference _
instance showMovReference :: Show MovReference where show = genericShow
instance decodeMovReference :: Decode MovReference where decode = genericDecode options
instance encodeMovReference :: Encode MovReference where encode = genericEncode options



-- | Settings for MOV Container.
newtype MovSettings = MovSettings 
  { "ClapAtom" :: Maybe (MovClapAtom)
  , "CslgAtom" :: Maybe (MovCslgAtom)
  , "Mpeg2FourCCControl" :: Maybe (MovMpeg2FourCCControl)
  , "PaddingControl" :: Maybe (MovPaddingControl)
  , "Reference" :: Maybe (MovReference)
  }
derive instance newtypeMovSettings :: Newtype MovSettings _
derive instance repGenericMovSettings :: Generic MovSettings _
instance showMovSettings :: Show MovSettings where show = genericShow
instance decodeMovSettings :: Decode MovSettings where decode = genericDecode options
instance encodeMovSettings :: Encode MovSettings where encode = genericEncode options

-- | Constructs MovSettings from required parameters
newMovSettings :: MovSettings
newMovSettings  = MovSettings { "ClapAtom": Nothing, "CslgAtom": Nothing, "Mpeg2FourCCControl": Nothing, "PaddingControl": Nothing, "Reference": Nothing }

-- | Constructs MovSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMovSettings' :: ( { "ClapAtom" :: Maybe (MovClapAtom) , "CslgAtom" :: Maybe (MovCslgAtom) , "Mpeg2FourCCControl" :: Maybe (MovMpeg2FourCCControl) , "PaddingControl" :: Maybe (MovPaddingControl) , "Reference" :: Maybe (MovReference) } -> {"ClapAtom" :: Maybe (MovClapAtom) , "CslgAtom" :: Maybe (MovCslgAtom) , "Mpeg2FourCCControl" :: Maybe (MovMpeg2FourCCControl) , "PaddingControl" :: Maybe (MovPaddingControl) , "Reference" :: Maybe (MovReference) } ) -> MovSettings
newMovSettings'  customize = (MovSettings <<< customize) { "ClapAtom": Nothing, "CslgAtom": Nothing, "Mpeg2FourCCControl": Nothing, "PaddingControl": Nothing, "Reference": Nothing }



-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2.
newtype Mp2Settings = Mp2Settings 
  { "Bitrate" :: Maybe (Int)
  , "Channels" :: Maybe (Int)
  , "SampleRate" :: Maybe (Int)
  }
derive instance newtypeMp2Settings :: Newtype Mp2Settings _
derive instance repGenericMp2Settings :: Generic Mp2Settings _
instance showMp2Settings :: Show Mp2Settings where show = genericShow
instance decodeMp2Settings :: Decode Mp2Settings where decode = genericDecode options
instance encodeMp2Settings :: Encode Mp2Settings where encode = genericEncode options

-- | Constructs Mp2Settings from required parameters
newMp2Settings :: Mp2Settings
newMp2Settings  = Mp2Settings { "Bitrate": Nothing, "Channels": Nothing, "SampleRate": Nothing }

-- | Constructs Mp2Settings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMp2Settings' :: ( { "Bitrate" :: Maybe (Int) , "Channels" :: Maybe (Int) , "SampleRate" :: Maybe (Int) } -> {"Bitrate" :: Maybe (Int) , "Channels" :: Maybe (Int) , "SampleRate" :: Maybe (Int) } ) -> Mp2Settings
newMp2Settings'  customize = (Mp2Settings <<< customize) { "Bitrate": Nothing, "Channels": Nothing, "SampleRate": Nothing }



-- | When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
newtype Mp4CslgAtom = Mp4CslgAtom String
derive instance newtypeMp4CslgAtom :: Newtype Mp4CslgAtom _
derive instance repGenericMp4CslgAtom :: Generic Mp4CslgAtom _
instance showMp4CslgAtom :: Show Mp4CslgAtom where show = genericShow
instance decodeMp4CslgAtom :: Decode Mp4CslgAtom where decode = genericDecode options
instance encodeMp4CslgAtom :: Encode Mp4CslgAtom where encode = genericEncode options



-- | Inserts a free-space box immediately after the moov box.
newtype Mp4FreeSpaceBox = Mp4FreeSpaceBox String
derive instance newtypeMp4FreeSpaceBox :: Newtype Mp4FreeSpaceBox _
derive instance repGenericMp4FreeSpaceBox :: Generic Mp4FreeSpaceBox _
instance showMp4FreeSpaceBox :: Show Mp4FreeSpaceBox where show = genericShow
instance decodeMp4FreeSpaceBox :: Decode Mp4FreeSpaceBox where decode = genericDecode options
instance encodeMp4FreeSpaceBox :: Encode Mp4FreeSpaceBox where encode = genericEncode options



-- | If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.
newtype Mp4MoovPlacement = Mp4MoovPlacement String
derive instance newtypeMp4MoovPlacement :: Newtype Mp4MoovPlacement _
derive instance repGenericMp4MoovPlacement :: Generic Mp4MoovPlacement _
instance showMp4MoovPlacement :: Show Mp4MoovPlacement where show = genericShow
instance decodeMp4MoovPlacement :: Decode Mp4MoovPlacement where decode = genericDecode options
instance encodeMp4MoovPlacement :: Encode Mp4MoovPlacement where encode = genericEncode options



-- | Settings for MP4 Container
newtype Mp4Settings = Mp4Settings 
  { "CslgAtom" :: Maybe (Mp4CslgAtom)
  , "FreeSpaceBox" :: Maybe (Mp4FreeSpaceBox)
  , "MoovPlacement" :: Maybe (Mp4MoovPlacement)
  , "Mp4MajorBrand" :: Maybe (String)
  }
derive instance newtypeMp4Settings :: Newtype Mp4Settings _
derive instance repGenericMp4Settings :: Generic Mp4Settings _
instance showMp4Settings :: Show Mp4Settings where show = genericShow
instance decodeMp4Settings :: Decode Mp4Settings where decode = genericDecode options
instance encodeMp4Settings :: Encode Mp4Settings where encode = genericEncode options

-- | Constructs Mp4Settings from required parameters
newMp4Settings :: Mp4Settings
newMp4Settings  = Mp4Settings { "CslgAtom": Nothing, "FreeSpaceBox": Nothing, "MoovPlacement": Nothing, "Mp4MajorBrand": Nothing }

-- | Constructs Mp4Settings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMp4Settings' :: ( { "CslgAtom" :: Maybe (Mp4CslgAtom) , "FreeSpaceBox" :: Maybe (Mp4FreeSpaceBox) , "MoovPlacement" :: Maybe (Mp4MoovPlacement) , "Mp4MajorBrand" :: Maybe (String) } -> {"CslgAtom" :: Maybe (Mp4CslgAtom) , "FreeSpaceBox" :: Maybe (Mp4FreeSpaceBox) , "MoovPlacement" :: Maybe (Mp4MoovPlacement) , "Mp4MajorBrand" :: Maybe (String) } ) -> Mp4Settings
newMp4Settings'  customize = (Mp4Settings <<< customize) { "CslgAtom": Nothing, "FreeSpaceBox": Nothing, "MoovPlacement": Nothing, "Mp4MajorBrand": Nothing }



-- | Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
newtype Mpeg2AdaptiveQuantization = Mpeg2AdaptiveQuantization String
derive instance newtypeMpeg2AdaptiveQuantization :: Newtype Mpeg2AdaptiveQuantization _
derive instance repGenericMpeg2AdaptiveQuantization :: Generic Mpeg2AdaptiveQuantization _
instance showMpeg2AdaptiveQuantization :: Show Mpeg2AdaptiveQuantization where show = genericShow
instance decodeMpeg2AdaptiveQuantization :: Decode Mpeg2AdaptiveQuantization where decode = genericDecode options
instance encodeMpeg2AdaptiveQuantization :: Encode Mpeg2AdaptiveQuantization where encode = genericEncode options



-- | Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.
newtype Mpeg2CodecLevel = Mpeg2CodecLevel String
derive instance newtypeMpeg2CodecLevel :: Newtype Mpeg2CodecLevel _
derive instance repGenericMpeg2CodecLevel :: Generic Mpeg2CodecLevel _
instance showMpeg2CodecLevel :: Show Mpeg2CodecLevel where show = genericShow
instance decodeMpeg2CodecLevel :: Decode Mpeg2CodecLevel where decode = genericDecode options
instance encodeMpeg2CodecLevel :: Encode Mpeg2CodecLevel where encode = genericEncode options



-- | Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.
newtype Mpeg2CodecProfile = Mpeg2CodecProfile String
derive instance newtypeMpeg2CodecProfile :: Newtype Mpeg2CodecProfile _
derive instance repGenericMpeg2CodecProfile :: Generic Mpeg2CodecProfile _
instance showMpeg2CodecProfile :: Show Mpeg2CodecProfile where show = genericShow
instance decodeMpeg2CodecProfile :: Decode Mpeg2CodecProfile where decode = genericDecode options
instance encodeMpeg2CodecProfile :: Encode Mpeg2CodecProfile where encode = genericEncode options



-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
newtype Mpeg2FramerateControl = Mpeg2FramerateControl String
derive instance newtypeMpeg2FramerateControl :: Newtype Mpeg2FramerateControl _
derive instance repGenericMpeg2FramerateControl :: Generic Mpeg2FramerateControl _
instance showMpeg2FramerateControl :: Show Mpeg2FramerateControl where show = genericShow
instance decodeMpeg2FramerateControl :: Decode Mpeg2FramerateControl where decode = genericDecode options
instance encodeMpeg2FramerateControl :: Encode Mpeg2FramerateControl where encode = genericEncode options



-- | When set to INTERPOLATE, produces smoother motion during framerate conversion.
newtype Mpeg2FramerateConversionAlgorithm = Mpeg2FramerateConversionAlgorithm String
derive instance newtypeMpeg2FramerateConversionAlgorithm :: Newtype Mpeg2FramerateConversionAlgorithm _
derive instance repGenericMpeg2FramerateConversionAlgorithm :: Generic Mpeg2FramerateConversionAlgorithm _
instance showMpeg2FramerateConversionAlgorithm :: Show Mpeg2FramerateConversionAlgorithm where show = genericShow
instance decodeMpeg2FramerateConversionAlgorithm :: Decode Mpeg2FramerateConversionAlgorithm where decode = genericDecode options
instance encodeMpeg2FramerateConversionAlgorithm :: Encode Mpeg2FramerateConversionAlgorithm where encode = genericEncode options



-- | Indicates if the GOP Size in MPEG2 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
newtype Mpeg2GopSizeUnits = Mpeg2GopSizeUnits String
derive instance newtypeMpeg2GopSizeUnits :: Newtype Mpeg2GopSizeUnits _
derive instance repGenericMpeg2GopSizeUnits :: Generic Mpeg2GopSizeUnits _
instance showMpeg2GopSizeUnits :: Show Mpeg2GopSizeUnits where show = genericShow
instance decodeMpeg2GopSizeUnits :: Decode Mpeg2GopSizeUnits where decode = genericDecode options
instance encodeMpeg2GopSizeUnits :: Encode Mpeg2GopSizeUnits where encode = genericEncode options



-- | Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
newtype Mpeg2InterlaceMode = Mpeg2InterlaceMode String
derive instance newtypeMpeg2InterlaceMode :: Newtype Mpeg2InterlaceMode _
derive instance repGenericMpeg2InterlaceMode :: Generic Mpeg2InterlaceMode _
instance showMpeg2InterlaceMode :: Show Mpeg2InterlaceMode where show = genericShow
instance decodeMpeg2InterlaceMode :: Decode Mpeg2InterlaceMode where decode = genericDecode options
instance encodeMpeg2InterlaceMode :: Encode Mpeg2InterlaceMode where encode = genericEncode options



-- | Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.
newtype Mpeg2IntraDcPrecision = Mpeg2IntraDcPrecision String
derive instance newtypeMpeg2IntraDcPrecision :: Newtype Mpeg2IntraDcPrecision _
derive instance repGenericMpeg2IntraDcPrecision :: Generic Mpeg2IntraDcPrecision _
instance showMpeg2IntraDcPrecision :: Show Mpeg2IntraDcPrecision where show = genericShow
instance decodeMpeg2IntraDcPrecision :: Decode Mpeg2IntraDcPrecision where decode = genericDecode options
instance encodeMpeg2IntraDcPrecision :: Encode Mpeg2IntraDcPrecision where encode = genericEncode options



-- | Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
newtype Mpeg2ParControl = Mpeg2ParControl String
derive instance newtypeMpeg2ParControl :: Newtype Mpeg2ParControl _
derive instance repGenericMpeg2ParControl :: Generic Mpeg2ParControl _
instance showMpeg2ParControl :: Show Mpeg2ParControl where show = genericShow
instance decodeMpeg2ParControl :: Decode Mpeg2ParControl where decode = genericDecode options
instance encodeMpeg2ParControl :: Encode Mpeg2ParControl where encode = genericEncode options



-- | Use Quality tuning level (Mpeg2QualityTuningLevel) to specifiy whether to use single-pass or multipass video encoding.
newtype Mpeg2QualityTuningLevel = Mpeg2QualityTuningLevel String
derive instance newtypeMpeg2QualityTuningLevel :: Newtype Mpeg2QualityTuningLevel _
derive instance repGenericMpeg2QualityTuningLevel :: Generic Mpeg2QualityTuningLevel _
instance showMpeg2QualityTuningLevel :: Show Mpeg2QualityTuningLevel where show = genericShow
instance decodeMpeg2QualityTuningLevel :: Decode Mpeg2QualityTuningLevel where decode = genericDecode options
instance encodeMpeg2QualityTuningLevel :: Encode Mpeg2QualityTuningLevel where encode = genericEncode options



-- | Use Rate control mode (Mpeg2RateControlMode) to specifiy whether the bitrate is variable (vbr) or constant (cbr).
newtype Mpeg2RateControlMode = Mpeg2RateControlMode String
derive instance newtypeMpeg2RateControlMode :: Newtype Mpeg2RateControlMode _
derive instance repGenericMpeg2RateControlMode :: Generic Mpeg2RateControlMode _
instance showMpeg2RateControlMode :: Show Mpeg2RateControlMode where show = genericShow
instance decodeMpeg2RateControlMode :: Decode Mpeg2RateControlMode where decode = genericDecode options
instance encodeMpeg2RateControlMode :: Encode Mpeg2RateControlMode where encode = genericEncode options



-- | Scene change detection (inserts I-frames on scene changes).
newtype Mpeg2SceneChangeDetect = Mpeg2SceneChangeDetect String
derive instance newtypeMpeg2SceneChangeDetect :: Newtype Mpeg2SceneChangeDetect _
derive instance repGenericMpeg2SceneChangeDetect :: Generic Mpeg2SceneChangeDetect _
instance showMpeg2SceneChangeDetect :: Show Mpeg2SceneChangeDetect where show = genericShow
instance decodeMpeg2SceneChangeDetect :: Decode Mpeg2SceneChangeDetect where decode = genericDecode options
instance encodeMpeg2SceneChangeDetect :: Encode Mpeg2SceneChangeDetect where encode = genericEncode options



-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2.
newtype Mpeg2Settings = Mpeg2Settings 
  { "AdaptiveQuantization" :: Maybe (Mpeg2AdaptiveQuantization)
  , "Bitrate" :: Maybe (Int)
  , "CodecLevel" :: Maybe (Mpeg2CodecLevel)
  , "CodecProfile" :: Maybe (Mpeg2CodecProfile)
  , "FramerateControl" :: Maybe (Mpeg2FramerateControl)
  , "FramerateConversionAlgorithm" :: Maybe (Mpeg2FramerateConversionAlgorithm)
  , "FramerateDenominator" :: Maybe (Int)
  , "FramerateNumerator" :: Maybe (Int)
  , "GopClosedCadence" :: Maybe (Int)
  , "GopSize" :: Maybe (Number)
  , "GopSizeUnits" :: Maybe (Mpeg2GopSizeUnits)
  , "HrdBufferInitialFillPercentage" :: Maybe (Int)
  , "HrdBufferSize" :: Maybe (Int)
  , "InterlaceMode" :: Maybe (Mpeg2InterlaceMode)
  , "IntraDcPrecision" :: Maybe (Mpeg2IntraDcPrecision)
  , "MaxBitrate" :: Maybe (Int)
  , "MinIInterval" :: Maybe (Int)
  , "NumberBFramesBetweenReferenceFrames" :: Maybe (Int)
  , "ParControl" :: Maybe (Mpeg2ParControl)
  , "ParDenominator" :: Maybe (Int)
  , "ParNumerator" :: Maybe (Int)
  , "QualityTuningLevel" :: Maybe (Mpeg2QualityTuningLevel)
  , "RateControlMode" :: Maybe (Mpeg2RateControlMode)
  , "SceneChangeDetect" :: Maybe (Mpeg2SceneChangeDetect)
  , "SlowPal" :: Maybe (Mpeg2SlowPal)
  , "Softness" :: Maybe (Int)
  , "SpatialAdaptiveQuantization" :: Maybe (Mpeg2SpatialAdaptiveQuantization)
  , "Syntax" :: Maybe (Mpeg2Syntax)
  , "Telecine" :: Maybe (Mpeg2Telecine)
  , "TemporalAdaptiveQuantization" :: Maybe (Mpeg2TemporalAdaptiveQuantization)
  }
derive instance newtypeMpeg2Settings :: Newtype Mpeg2Settings _
derive instance repGenericMpeg2Settings :: Generic Mpeg2Settings _
instance showMpeg2Settings :: Show Mpeg2Settings where show = genericShow
instance decodeMpeg2Settings :: Decode Mpeg2Settings where decode = genericDecode options
instance encodeMpeg2Settings :: Encode Mpeg2Settings where encode = genericEncode options

-- | Constructs Mpeg2Settings from required parameters
newMpeg2Settings :: Mpeg2Settings
newMpeg2Settings  = Mpeg2Settings { "AdaptiveQuantization": Nothing, "Bitrate": Nothing, "CodecLevel": Nothing, "CodecProfile": Nothing, "FramerateControl": Nothing, "FramerateConversionAlgorithm": Nothing, "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "GopClosedCadence": Nothing, "GopSize": Nothing, "GopSizeUnits": Nothing, "HrdBufferInitialFillPercentage": Nothing, "HrdBufferSize": Nothing, "InterlaceMode": Nothing, "IntraDcPrecision": Nothing, "MaxBitrate": Nothing, "MinIInterval": Nothing, "NumberBFramesBetweenReferenceFrames": Nothing, "ParControl": Nothing, "ParDenominator": Nothing, "ParNumerator": Nothing, "QualityTuningLevel": Nothing, "RateControlMode": Nothing, "SceneChangeDetect": Nothing, "SlowPal": Nothing, "Softness": Nothing, "SpatialAdaptiveQuantization": Nothing, "Syntax": Nothing, "Telecine": Nothing, "TemporalAdaptiveQuantization": Nothing }

-- | Constructs Mpeg2Settings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMpeg2Settings' :: ( { "AdaptiveQuantization" :: Maybe (Mpeg2AdaptiveQuantization) , "Bitrate" :: Maybe (Int) , "CodecLevel" :: Maybe (Mpeg2CodecLevel) , "CodecProfile" :: Maybe (Mpeg2CodecProfile) , "FramerateControl" :: Maybe (Mpeg2FramerateControl) , "FramerateConversionAlgorithm" :: Maybe (Mpeg2FramerateConversionAlgorithm) , "FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "GopClosedCadence" :: Maybe (Int) , "GopSize" :: Maybe (Number) , "GopSizeUnits" :: Maybe (Mpeg2GopSizeUnits) , "HrdBufferInitialFillPercentage" :: Maybe (Int) , "HrdBufferSize" :: Maybe (Int) , "InterlaceMode" :: Maybe (Mpeg2InterlaceMode) , "IntraDcPrecision" :: Maybe (Mpeg2IntraDcPrecision) , "MaxBitrate" :: Maybe (Int) , "MinIInterval" :: Maybe (Int) , "NumberBFramesBetweenReferenceFrames" :: Maybe (Int) , "ParControl" :: Maybe (Mpeg2ParControl) , "ParDenominator" :: Maybe (Int) , "ParNumerator" :: Maybe (Int) , "QualityTuningLevel" :: Maybe (Mpeg2QualityTuningLevel) , "RateControlMode" :: Maybe (Mpeg2RateControlMode) , "SceneChangeDetect" :: Maybe (Mpeg2SceneChangeDetect) , "SlowPal" :: Maybe (Mpeg2SlowPal) , "Softness" :: Maybe (Int) , "SpatialAdaptiveQuantization" :: Maybe (Mpeg2SpatialAdaptiveQuantization) , "Syntax" :: Maybe (Mpeg2Syntax) , "Telecine" :: Maybe (Mpeg2Telecine) , "TemporalAdaptiveQuantization" :: Maybe (Mpeg2TemporalAdaptiveQuantization) } -> {"AdaptiveQuantization" :: Maybe (Mpeg2AdaptiveQuantization) , "Bitrate" :: Maybe (Int) , "CodecLevel" :: Maybe (Mpeg2CodecLevel) , "CodecProfile" :: Maybe (Mpeg2CodecProfile) , "FramerateControl" :: Maybe (Mpeg2FramerateControl) , "FramerateConversionAlgorithm" :: Maybe (Mpeg2FramerateConversionAlgorithm) , "FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "GopClosedCadence" :: Maybe (Int) , "GopSize" :: Maybe (Number) , "GopSizeUnits" :: Maybe (Mpeg2GopSizeUnits) , "HrdBufferInitialFillPercentage" :: Maybe (Int) , "HrdBufferSize" :: Maybe (Int) , "InterlaceMode" :: Maybe (Mpeg2InterlaceMode) , "IntraDcPrecision" :: Maybe (Mpeg2IntraDcPrecision) , "MaxBitrate" :: Maybe (Int) , "MinIInterval" :: Maybe (Int) , "NumberBFramesBetweenReferenceFrames" :: Maybe (Int) , "ParControl" :: Maybe (Mpeg2ParControl) , "ParDenominator" :: Maybe (Int) , "ParNumerator" :: Maybe (Int) , "QualityTuningLevel" :: Maybe (Mpeg2QualityTuningLevel) , "RateControlMode" :: Maybe (Mpeg2RateControlMode) , "SceneChangeDetect" :: Maybe (Mpeg2SceneChangeDetect) , "SlowPal" :: Maybe (Mpeg2SlowPal) , "Softness" :: Maybe (Int) , "SpatialAdaptiveQuantization" :: Maybe (Mpeg2SpatialAdaptiveQuantization) , "Syntax" :: Maybe (Mpeg2Syntax) , "Telecine" :: Maybe (Mpeg2Telecine) , "TemporalAdaptiveQuantization" :: Maybe (Mpeg2TemporalAdaptiveQuantization) } ) -> Mpeg2Settings
newMpeg2Settings'  customize = (Mpeg2Settings <<< customize) { "AdaptiveQuantization": Nothing, "Bitrate": Nothing, "CodecLevel": Nothing, "CodecProfile": Nothing, "FramerateControl": Nothing, "FramerateConversionAlgorithm": Nothing, "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "GopClosedCadence": Nothing, "GopSize": Nothing, "GopSizeUnits": Nothing, "HrdBufferInitialFillPercentage": Nothing, "HrdBufferSize": Nothing, "InterlaceMode": Nothing, "IntraDcPrecision": Nothing, "MaxBitrate": Nothing, "MinIInterval": Nothing, "NumberBFramesBetweenReferenceFrames": Nothing, "ParControl": Nothing, "ParDenominator": Nothing, "ParNumerator": Nothing, "QualityTuningLevel": Nothing, "RateControlMode": Nothing, "SceneChangeDetect": Nothing, "SlowPal": Nothing, "Softness": Nothing, "SpatialAdaptiveQuantization": Nothing, "Syntax": Nothing, "Telecine": Nothing, "TemporalAdaptiveQuantization": Nothing }



-- | Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
newtype Mpeg2SlowPal = Mpeg2SlowPal String
derive instance newtypeMpeg2SlowPal :: Newtype Mpeg2SlowPal _
derive instance repGenericMpeg2SlowPal :: Generic Mpeg2SlowPal _
instance showMpeg2SlowPal :: Show Mpeg2SlowPal where show = genericShow
instance decodeMpeg2SlowPal :: Decode Mpeg2SlowPal where decode = genericDecode options
instance encodeMpeg2SlowPal :: Encode Mpeg2SlowPal where encode = genericEncode options



-- | Adjust quantization within each frame based on spatial variation of content complexity.
newtype Mpeg2SpatialAdaptiveQuantization = Mpeg2SpatialAdaptiveQuantization String
derive instance newtypeMpeg2SpatialAdaptiveQuantization :: Newtype Mpeg2SpatialAdaptiveQuantization _
derive instance repGenericMpeg2SpatialAdaptiveQuantization :: Generic Mpeg2SpatialAdaptiveQuantization _
instance showMpeg2SpatialAdaptiveQuantization :: Show Mpeg2SpatialAdaptiveQuantization where show = genericShow
instance decodeMpeg2SpatialAdaptiveQuantization :: Decode Mpeg2SpatialAdaptiveQuantization where decode = genericDecode options
instance encodeMpeg2SpatialAdaptiveQuantization :: Encode Mpeg2SpatialAdaptiveQuantization where encode = genericEncode options



-- | Produces a Type D-10 compatible bitstream (SMPTE 356M-2001).
newtype Mpeg2Syntax = Mpeg2Syntax String
derive instance newtypeMpeg2Syntax :: Newtype Mpeg2Syntax _
derive instance repGenericMpeg2Syntax :: Generic Mpeg2Syntax _
instance showMpeg2Syntax :: Show Mpeg2Syntax where show = genericShow
instance decodeMpeg2Syntax :: Decode Mpeg2Syntax where decode = genericDecode options
instance encodeMpeg2Syntax :: Encode Mpeg2Syntax where encode = genericEncode options



-- | Only use Telecine (Mpeg2Telecine) when you set Framerate (Framerate) to 29.970. Set Telecine (Mpeg2Telecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player.
newtype Mpeg2Telecine = Mpeg2Telecine String
derive instance newtypeMpeg2Telecine :: Newtype Mpeg2Telecine _
derive instance repGenericMpeg2Telecine :: Generic Mpeg2Telecine _
instance showMpeg2Telecine :: Show Mpeg2Telecine where show = genericShow
instance decodeMpeg2Telecine :: Decode Mpeg2Telecine where decode = genericDecode options
instance encodeMpeg2Telecine :: Encode Mpeg2Telecine where encode = genericEncode options



-- | Adjust quantization within each frame based on temporal variation of content complexity.
newtype Mpeg2TemporalAdaptiveQuantization = Mpeg2TemporalAdaptiveQuantization String
derive instance newtypeMpeg2TemporalAdaptiveQuantization :: Newtype Mpeg2TemporalAdaptiveQuantization _
derive instance repGenericMpeg2TemporalAdaptiveQuantization :: Generic Mpeg2TemporalAdaptiveQuantization _
instance showMpeg2TemporalAdaptiveQuantization :: Show Mpeg2TemporalAdaptiveQuantization where show = genericShow
instance decodeMpeg2TemporalAdaptiveQuantization :: Decode Mpeg2TemporalAdaptiveQuantization where decode = genericDecode options
instance encodeMpeg2TemporalAdaptiveQuantization :: Encode Mpeg2TemporalAdaptiveQuantization where encode = genericEncode options



-- | COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.
newtype MsSmoothAudioDeduplication = MsSmoothAudioDeduplication String
derive instance newtypeMsSmoothAudioDeduplication :: Newtype MsSmoothAudioDeduplication _
derive instance repGenericMsSmoothAudioDeduplication :: Generic MsSmoothAudioDeduplication _
instance showMsSmoothAudioDeduplication :: Show MsSmoothAudioDeduplication where show = genericShow
instance decodeMsSmoothAudioDeduplication :: Decode MsSmoothAudioDeduplication where decode = genericDecode options
instance encodeMsSmoothAudioDeduplication :: Encode MsSmoothAudioDeduplication where encode = genericEncode options



-- | If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider.
newtype MsSmoothEncryptionSettings = MsSmoothEncryptionSettings 
  { "SpekeKeyProvider" :: Maybe (SpekeKeyProvider)
  }
derive instance newtypeMsSmoothEncryptionSettings :: Newtype MsSmoothEncryptionSettings _
derive instance repGenericMsSmoothEncryptionSettings :: Generic MsSmoothEncryptionSettings _
instance showMsSmoothEncryptionSettings :: Show MsSmoothEncryptionSettings where show = genericShow
instance decodeMsSmoothEncryptionSettings :: Decode MsSmoothEncryptionSettings where decode = genericDecode options
instance encodeMsSmoothEncryptionSettings :: Encode MsSmoothEncryptionSettings where encode = genericEncode options

-- | Constructs MsSmoothEncryptionSettings from required parameters
newMsSmoothEncryptionSettings :: MsSmoothEncryptionSettings
newMsSmoothEncryptionSettings  = MsSmoothEncryptionSettings { "SpekeKeyProvider": Nothing }

-- | Constructs MsSmoothEncryptionSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMsSmoothEncryptionSettings' :: ( { "SpekeKeyProvider" :: Maybe (SpekeKeyProvider) } -> {"SpekeKeyProvider" :: Maybe (SpekeKeyProvider) } ) -> MsSmoothEncryptionSettings
newMsSmoothEncryptionSettings'  customize = (MsSmoothEncryptionSettings <<< customize) { "SpekeKeyProvider": Nothing }



-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS.
newtype MsSmoothGroupSettings = MsSmoothGroupSettings 
  { "AudioDeduplication" :: Maybe (MsSmoothAudioDeduplication)
  , "Destination" :: Maybe (String)
  , "Encryption" :: Maybe (MsSmoothEncryptionSettings)
  , "FragmentLength" :: Maybe (Int)
  , "ManifestEncoding" :: Maybe (MsSmoothManifestEncoding)
  }
derive instance newtypeMsSmoothGroupSettings :: Newtype MsSmoothGroupSettings _
derive instance repGenericMsSmoothGroupSettings :: Generic MsSmoothGroupSettings _
instance showMsSmoothGroupSettings :: Show MsSmoothGroupSettings where show = genericShow
instance decodeMsSmoothGroupSettings :: Decode MsSmoothGroupSettings where decode = genericDecode options
instance encodeMsSmoothGroupSettings :: Encode MsSmoothGroupSettings where encode = genericEncode options

-- | Constructs MsSmoothGroupSettings from required parameters
newMsSmoothGroupSettings :: MsSmoothGroupSettings
newMsSmoothGroupSettings  = MsSmoothGroupSettings { "AudioDeduplication": Nothing, "Destination": Nothing, "Encryption": Nothing, "FragmentLength": Nothing, "ManifestEncoding": Nothing }

-- | Constructs MsSmoothGroupSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMsSmoothGroupSettings' :: ( { "AudioDeduplication" :: Maybe (MsSmoothAudioDeduplication) , "Destination" :: Maybe (String) , "Encryption" :: Maybe (MsSmoothEncryptionSettings) , "FragmentLength" :: Maybe (Int) , "ManifestEncoding" :: Maybe (MsSmoothManifestEncoding) } -> {"AudioDeduplication" :: Maybe (MsSmoothAudioDeduplication) , "Destination" :: Maybe (String) , "Encryption" :: Maybe (MsSmoothEncryptionSettings) , "FragmentLength" :: Maybe (Int) , "ManifestEncoding" :: Maybe (MsSmoothManifestEncoding) } ) -> MsSmoothGroupSettings
newMsSmoothGroupSettings'  customize = (MsSmoothGroupSettings <<< customize) { "AudioDeduplication": Nothing, "Destination": Nothing, "Encryption": Nothing, "FragmentLength": Nothing, "ManifestEncoding": Nothing }



-- | Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.
newtype MsSmoothManifestEncoding = MsSmoothManifestEncoding String
derive instance newtypeMsSmoothManifestEncoding :: Newtype MsSmoothManifestEncoding _
derive instance repGenericMsSmoothManifestEncoding :: Generic MsSmoothManifestEncoding _
instance showMsSmoothManifestEncoding :: Show MsSmoothManifestEncoding where show = genericShow
instance decodeMsSmoothManifestEncoding :: Decode MsSmoothManifestEncoding where decode = genericDecode options
instance encodeMsSmoothManifestEncoding :: Encode MsSmoothManifestEncoding where encode = genericEncode options



-- | Settings for Nielsen Configuration
newtype NielsenConfiguration = NielsenConfiguration 
  { "BreakoutCode" :: Maybe (Int)
  , "DistributorId" :: Maybe (String)
  }
derive instance newtypeNielsenConfiguration :: Newtype NielsenConfiguration _
derive instance repGenericNielsenConfiguration :: Generic NielsenConfiguration _
instance showNielsenConfiguration :: Show NielsenConfiguration where show = genericShow
instance decodeNielsenConfiguration :: Decode NielsenConfiguration where decode = genericDecode options
instance encodeNielsenConfiguration :: Encode NielsenConfiguration where encode = genericEncode options

-- | Constructs NielsenConfiguration from required parameters
newNielsenConfiguration :: NielsenConfiguration
newNielsenConfiguration  = NielsenConfiguration { "BreakoutCode": Nothing, "DistributorId": Nothing }

-- | Constructs NielsenConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNielsenConfiguration' :: ( { "BreakoutCode" :: Maybe (Int) , "DistributorId" :: Maybe (String) } -> {"BreakoutCode" :: Maybe (Int) , "DistributorId" :: Maybe (String) } ) -> NielsenConfiguration
newNielsenConfiguration'  customize = (NielsenConfiguration <<< customize) { "BreakoutCode": Nothing, "DistributorId": Nothing }



-- | Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default. When you enable Noise reducer (NoiseReducer), you must also select a value for Noise reducer filter (NoiseReducerFilter).
newtype NoiseReducer = NoiseReducer 
  { "Filter" :: Maybe (NoiseReducerFilter)
  , "FilterSettings" :: Maybe (NoiseReducerFilterSettings)
  , "SpatialFilterSettings" :: Maybe (NoiseReducerSpatialFilterSettings)
  }
derive instance newtypeNoiseReducer :: Newtype NoiseReducer _
derive instance repGenericNoiseReducer :: Generic NoiseReducer _
instance showNoiseReducer :: Show NoiseReducer where show = genericShow
instance decodeNoiseReducer :: Decode NoiseReducer where decode = genericDecode options
instance encodeNoiseReducer :: Encode NoiseReducer where encode = genericEncode options

-- | Constructs NoiseReducer from required parameters
newNoiseReducer :: NoiseReducer
newNoiseReducer  = NoiseReducer { "Filter": Nothing, "FilterSettings": Nothing, "SpatialFilterSettings": Nothing }

-- | Constructs NoiseReducer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoiseReducer' :: ( { "Filter" :: Maybe (NoiseReducerFilter) , "FilterSettings" :: Maybe (NoiseReducerFilterSettings) , "SpatialFilterSettings" :: Maybe (NoiseReducerSpatialFilterSettings) } -> {"Filter" :: Maybe (NoiseReducerFilter) , "FilterSettings" :: Maybe (NoiseReducerFilterSettings) , "SpatialFilterSettings" :: Maybe (NoiseReducerSpatialFilterSettings) } ) -> NoiseReducer
newNoiseReducer'  customize = (NoiseReducer <<< customize) { "Filter": Nothing, "FilterSettings": Nothing, "SpatialFilterSettings": Nothing }



-- | Use Noise reducer filter (NoiseReducerFilter) to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer (NoiseReducer). * Bilateral is an edge preserving noise reduction filter * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) are convolution filters * Conserve is a min/max noise reduction filter * Spatial is frequency-domain filter based on JND principles.
newtype NoiseReducerFilter = NoiseReducerFilter String
derive instance newtypeNoiseReducerFilter :: Newtype NoiseReducerFilter _
derive instance repGenericNoiseReducerFilter :: Generic NoiseReducerFilter _
instance showNoiseReducerFilter :: Show NoiseReducerFilter where show = genericShow
instance decodeNoiseReducerFilter :: Decode NoiseReducerFilter where decode = genericDecode options
instance encodeNoiseReducerFilter :: Encode NoiseReducerFilter where encode = genericEncode options



-- | Settings for a noise reducer filter
newtype NoiseReducerFilterSettings = NoiseReducerFilterSettings 
  { "Strength" :: Maybe (Int)
  }
derive instance newtypeNoiseReducerFilterSettings :: Newtype NoiseReducerFilterSettings _
derive instance repGenericNoiseReducerFilterSettings :: Generic NoiseReducerFilterSettings _
instance showNoiseReducerFilterSettings :: Show NoiseReducerFilterSettings where show = genericShow
instance decodeNoiseReducerFilterSettings :: Decode NoiseReducerFilterSettings where decode = genericDecode options
instance encodeNoiseReducerFilterSettings :: Encode NoiseReducerFilterSettings where encode = genericEncode options

-- | Constructs NoiseReducerFilterSettings from required parameters
newNoiseReducerFilterSettings :: NoiseReducerFilterSettings
newNoiseReducerFilterSettings  = NoiseReducerFilterSettings { "Strength": Nothing }

-- | Constructs NoiseReducerFilterSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoiseReducerFilterSettings' :: ( { "Strength" :: Maybe (Int) } -> {"Strength" :: Maybe (Int) } ) -> NoiseReducerFilterSettings
newNoiseReducerFilterSettings'  customize = (NoiseReducerFilterSettings <<< customize) { "Strength": Nothing }



-- | Noise reducer filter settings for spatial filter.
newtype NoiseReducerSpatialFilterSettings = NoiseReducerSpatialFilterSettings 
  { "PostFilterSharpenStrength" :: Maybe (Int)
  , "Speed" :: Maybe (Int)
  , "Strength" :: Maybe (Int)
  }
derive instance newtypeNoiseReducerSpatialFilterSettings :: Newtype NoiseReducerSpatialFilterSettings _
derive instance repGenericNoiseReducerSpatialFilterSettings :: Generic NoiseReducerSpatialFilterSettings _
instance showNoiseReducerSpatialFilterSettings :: Show NoiseReducerSpatialFilterSettings where show = genericShow
instance decodeNoiseReducerSpatialFilterSettings :: Decode NoiseReducerSpatialFilterSettings where decode = genericDecode options
instance encodeNoiseReducerSpatialFilterSettings :: Encode NoiseReducerSpatialFilterSettings where encode = genericEncode options

-- | Constructs NoiseReducerSpatialFilterSettings from required parameters
newNoiseReducerSpatialFilterSettings :: NoiseReducerSpatialFilterSettings
newNoiseReducerSpatialFilterSettings  = NoiseReducerSpatialFilterSettings { "PostFilterSharpenStrength": Nothing, "Speed": Nothing, "Strength": Nothing }

-- | Constructs NoiseReducerSpatialFilterSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoiseReducerSpatialFilterSettings' :: ( { "PostFilterSharpenStrength" :: Maybe (Int) , "Speed" :: Maybe (Int) , "Strength" :: Maybe (Int) } -> {"PostFilterSharpenStrength" :: Maybe (Int) , "Speed" :: Maybe (Int) , "Strength" :: Maybe (Int) } ) -> NoiseReducerSpatialFilterSettings
newNoiseReducerSpatialFilterSettings'  customize = (NoiseReducerSpatialFilterSettings <<< customize) { "PostFilterSharpenStrength": Nothing, "Speed": Nothing, "Strength": Nothing }



-- | The resource you requested does not exist.
newtype NotFoundException = NotFoundException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "Message": Nothing }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "Message": Nothing }



-- | When you request lists of resources, you can optionally specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
newtype Order = Order String
derive instance newtypeOrder :: Newtype Order _
derive instance repGenericOrder :: Generic Order _
instance showOrder :: Show Order where show = genericShow
instance decodeOrder :: Decode Order where decode = genericDecode options
instance encodeOrder :: Encode Order where encode = genericEncode options



-- | An output object describes the settings for a single output file or stream in an output group.
newtype Output = Output 
  { "AudioDescriptions" :: Maybe (ListOfAudioDescription)
  , "CaptionDescriptions" :: Maybe (ListOfCaptionDescription)
  , "ContainerSettings" :: Maybe (ContainerSettings)
  , "Extension" :: Maybe (String)
  , "NameModifier" :: Maybe (String)
  , "OutputSettings" :: Maybe (OutputSettings)
  , "Preset" :: Maybe (String)
  , "VideoDescription" :: Maybe (VideoDescription)
  }
derive instance newtypeOutput :: Newtype Output _
derive instance repGenericOutput :: Generic Output _
instance showOutput :: Show Output where show = genericShow
instance decodeOutput :: Decode Output where decode = genericDecode options
instance encodeOutput :: Encode Output where encode = genericEncode options

-- | Constructs Output from required parameters
newOutput :: Output
newOutput  = Output { "AudioDescriptions": Nothing, "CaptionDescriptions": Nothing, "ContainerSettings": Nothing, "Extension": Nothing, "NameModifier": Nothing, "OutputSettings": Nothing, "Preset": Nothing, "VideoDescription": Nothing }

-- | Constructs Output's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutput' :: ( { "AudioDescriptions" :: Maybe (ListOfAudioDescription) , "CaptionDescriptions" :: Maybe (ListOfCaptionDescription) , "ContainerSettings" :: Maybe (ContainerSettings) , "Extension" :: Maybe (String) , "NameModifier" :: Maybe (String) , "OutputSettings" :: Maybe (OutputSettings) , "Preset" :: Maybe (String) , "VideoDescription" :: Maybe (VideoDescription) } -> {"AudioDescriptions" :: Maybe (ListOfAudioDescription) , "CaptionDescriptions" :: Maybe (ListOfCaptionDescription) , "ContainerSettings" :: Maybe (ContainerSettings) , "Extension" :: Maybe (String) , "NameModifier" :: Maybe (String) , "OutputSettings" :: Maybe (OutputSettings) , "Preset" :: Maybe (String) , "VideoDescription" :: Maybe (VideoDescription) } ) -> Output
newOutput'  customize = (Output <<< customize) { "AudioDescriptions": Nothing, "CaptionDescriptions": Nothing, "ContainerSettings": Nothing, "Extension": Nothing, "NameModifier": Nothing, "OutputSettings": Nothing, "Preset": Nothing, "VideoDescription": Nothing }



-- | OutputChannel mapping settings.
newtype OutputChannelMapping = OutputChannelMapping 
  { "InputChannels" :: Maybe (ListOf__integer)
  }
derive instance newtypeOutputChannelMapping :: Newtype OutputChannelMapping _
derive instance repGenericOutputChannelMapping :: Generic OutputChannelMapping _
instance showOutputChannelMapping :: Show OutputChannelMapping where show = genericShow
instance decodeOutputChannelMapping :: Decode OutputChannelMapping where decode = genericDecode options
instance encodeOutputChannelMapping :: Encode OutputChannelMapping where encode = genericEncode options

-- | Constructs OutputChannelMapping from required parameters
newOutputChannelMapping :: OutputChannelMapping
newOutputChannelMapping  = OutputChannelMapping { "InputChannels": Nothing }

-- | Constructs OutputChannelMapping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputChannelMapping' :: ( { "InputChannels" :: Maybe (ListOf__integer) } -> {"InputChannels" :: Maybe (ListOf__integer) } ) -> OutputChannelMapping
newOutputChannelMapping'  customize = (OutputChannelMapping <<< customize) { "InputChannels": Nothing }



-- | Details regarding output
newtype OutputDetail = OutputDetail 
  { "DurationInMs" :: Maybe (Int)
  , "VideoDetails" :: Maybe (VideoDetail)
  }
derive instance newtypeOutputDetail :: Newtype OutputDetail _
derive instance repGenericOutputDetail :: Generic OutputDetail _
instance showOutputDetail :: Show OutputDetail where show = genericShow
instance decodeOutputDetail :: Decode OutputDetail where decode = genericDecode options
instance encodeOutputDetail :: Encode OutputDetail where encode = genericEncode options

-- | Constructs OutputDetail from required parameters
newOutputDetail :: OutputDetail
newOutputDetail  = OutputDetail { "DurationInMs": Nothing, "VideoDetails": Nothing }

-- | Constructs OutputDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputDetail' :: ( { "DurationInMs" :: Maybe (Int) , "VideoDetails" :: Maybe (VideoDetail) } -> {"DurationInMs" :: Maybe (Int) , "VideoDetails" :: Maybe (VideoDetail) } ) -> OutputDetail
newOutputDetail'  customize = (OutputDetail <<< customize) { "DurationInMs": Nothing, "VideoDetails": Nothing }



-- | Group of outputs
newtype OutputGroup = OutputGroup 
  { "CustomName" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "OutputGroupSettings" :: Maybe (OutputGroupSettings)
  , "Outputs" :: Maybe (ListOfOutput)
  }
derive instance newtypeOutputGroup :: Newtype OutputGroup _
derive instance repGenericOutputGroup :: Generic OutputGroup _
instance showOutputGroup :: Show OutputGroup where show = genericShow
instance decodeOutputGroup :: Decode OutputGroup where decode = genericDecode options
instance encodeOutputGroup :: Encode OutputGroup where encode = genericEncode options

-- | Constructs OutputGroup from required parameters
newOutputGroup :: OutputGroup
newOutputGroup  = OutputGroup { "CustomName": Nothing, "Name": Nothing, "OutputGroupSettings": Nothing, "Outputs": Nothing }

-- | Constructs OutputGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputGroup' :: ( { "CustomName" :: Maybe (String) , "Name" :: Maybe (String) , "OutputGroupSettings" :: Maybe (OutputGroupSettings) , "Outputs" :: Maybe (ListOfOutput) } -> {"CustomName" :: Maybe (String) , "Name" :: Maybe (String) , "OutputGroupSettings" :: Maybe (OutputGroupSettings) , "Outputs" :: Maybe (ListOfOutput) } ) -> OutputGroup
newOutputGroup'  customize = (OutputGroup <<< customize) { "CustomName": Nothing, "Name": Nothing, "OutputGroupSettings": Nothing, "Outputs": Nothing }



-- | Contains details about the output groups specified in the job settings.
newtype OutputGroupDetail = OutputGroupDetail 
  { "OutputDetails" :: Maybe (ListOfOutputDetail)
  }
derive instance newtypeOutputGroupDetail :: Newtype OutputGroupDetail _
derive instance repGenericOutputGroupDetail :: Generic OutputGroupDetail _
instance showOutputGroupDetail :: Show OutputGroupDetail where show = genericShow
instance decodeOutputGroupDetail :: Decode OutputGroupDetail where decode = genericDecode options
instance encodeOutputGroupDetail :: Encode OutputGroupDetail where encode = genericEncode options

-- | Constructs OutputGroupDetail from required parameters
newOutputGroupDetail :: OutputGroupDetail
newOutputGroupDetail  = OutputGroupDetail { "OutputDetails": Nothing }

-- | Constructs OutputGroupDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputGroupDetail' :: ( { "OutputDetails" :: Maybe (ListOfOutputDetail) } -> {"OutputDetails" :: Maybe (ListOfOutputDetail) } ) -> OutputGroupDetail
newOutputGroupDetail'  customize = (OutputGroupDetail <<< customize) { "OutputDetails": Nothing }



-- | Output Group settings, including type
newtype OutputGroupSettings = OutputGroupSettings 
  { "DashIsoGroupSettings" :: Maybe (DashIsoGroupSettings)
  , "FileGroupSettings" :: Maybe (FileGroupSettings)
  , "HlsGroupSettings" :: Maybe (HlsGroupSettings)
  , "MsSmoothGroupSettings" :: Maybe (MsSmoothGroupSettings)
  , "Type" :: Maybe (OutputGroupType)
  }
derive instance newtypeOutputGroupSettings :: Newtype OutputGroupSettings _
derive instance repGenericOutputGroupSettings :: Generic OutputGroupSettings _
instance showOutputGroupSettings :: Show OutputGroupSettings where show = genericShow
instance decodeOutputGroupSettings :: Decode OutputGroupSettings where decode = genericDecode options
instance encodeOutputGroupSettings :: Encode OutputGroupSettings where encode = genericEncode options

-- | Constructs OutputGroupSettings from required parameters
newOutputGroupSettings :: OutputGroupSettings
newOutputGroupSettings  = OutputGroupSettings { "DashIsoGroupSettings": Nothing, "FileGroupSettings": Nothing, "HlsGroupSettings": Nothing, "MsSmoothGroupSettings": Nothing, "Type": Nothing }

-- | Constructs OutputGroupSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputGroupSettings' :: ( { "DashIsoGroupSettings" :: Maybe (DashIsoGroupSettings) , "FileGroupSettings" :: Maybe (FileGroupSettings) , "HlsGroupSettings" :: Maybe (HlsGroupSettings) , "MsSmoothGroupSettings" :: Maybe (MsSmoothGroupSettings) , "Type" :: Maybe (OutputGroupType) } -> {"DashIsoGroupSettings" :: Maybe (DashIsoGroupSettings) , "FileGroupSettings" :: Maybe (FileGroupSettings) , "HlsGroupSettings" :: Maybe (HlsGroupSettings) , "MsSmoothGroupSettings" :: Maybe (MsSmoothGroupSettings) , "Type" :: Maybe (OutputGroupType) } ) -> OutputGroupSettings
newOutputGroupSettings'  customize = (OutputGroupSettings <<< customize) { "DashIsoGroupSettings": Nothing, "FileGroupSettings": Nothing, "HlsGroupSettings": Nothing, "MsSmoothGroupSettings": Nothing, "Type": Nothing }



-- | Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming)
newtype OutputGroupType = OutputGroupType String
derive instance newtypeOutputGroupType :: Newtype OutputGroupType _
derive instance repGenericOutputGroupType :: Generic OutputGroupType _
instance showOutputGroupType :: Show OutputGroupType where show = genericShow
instance decodeOutputGroupType :: Decode OutputGroupType where decode = genericDecode options
instance encodeOutputGroupType :: Encode OutputGroupType where encode = genericEncode options



-- | Selects method of inserting SDT information into output stream.  "Follow input SDT" copies SDT information from input stream to  output stream. "Follow input SDT if present" copies SDT information from  input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter "SDT  Manually" means user will enter the SDT information. "No SDT" means output  stream will not contain SDT information.
newtype OutputSdt = OutputSdt String
derive instance newtypeOutputSdt :: Newtype OutputSdt _
derive instance repGenericOutputSdt :: Generic OutputSdt _
instance showOutputSdt :: Show OutputSdt where show = genericShow
instance decodeOutputSdt :: Decode OutputSdt where decode = genericDecode options
instance encodeOutputSdt :: Encode OutputSdt where encode = genericEncode options



-- | Specific settings for this type of output.
newtype OutputSettings = OutputSettings 
  { "HlsSettings" :: Maybe (HlsSettings)
  }
derive instance newtypeOutputSettings :: Newtype OutputSettings _
derive instance repGenericOutputSettings :: Generic OutputSettings _
instance showOutputSettings :: Show OutputSettings where show = genericShow
instance decodeOutputSettings :: Decode OutputSettings where decode = genericDecode options
instance encodeOutputSettings :: Encode OutputSettings where encode = genericEncode options

-- | Constructs OutputSettings from required parameters
newOutputSettings :: OutputSettings
newOutputSettings  = OutputSettings { "HlsSettings": Nothing }

-- | Constructs OutputSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputSettings' :: ( { "HlsSettings" :: Maybe (HlsSettings) } -> {"HlsSettings" :: Maybe (HlsSettings) } ) -> OutputSettings
newOutputSettings'  customize = (OutputSettings <<< customize) { "HlsSettings": Nothing }



-- | A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
newtype Preset = Preset 
  { "Arn" :: Maybe (String)
  , "Category" :: Maybe (String)
  , "CreatedAt" :: Maybe (Types.Timestamp)
  , "Description" :: Maybe (String)
  , "LastUpdated" :: Maybe (Types.Timestamp)
  , "Name" :: Maybe (String)
  , "Settings" :: Maybe (PresetSettings)
  , "Type" :: Maybe (Type)
  }
derive instance newtypePreset :: Newtype Preset _
derive instance repGenericPreset :: Generic Preset _
instance showPreset :: Show Preset where show = genericShow
instance decodePreset :: Decode Preset where decode = genericDecode options
instance encodePreset :: Encode Preset where encode = genericEncode options

-- | Constructs Preset from required parameters
newPreset :: Preset
newPreset  = Preset { "Arn": Nothing, "Category": Nothing, "CreatedAt": Nothing, "Description": Nothing, "LastUpdated": Nothing, "Name": Nothing, "Settings": Nothing, "Type": Nothing }

-- | Constructs Preset's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPreset' :: ( { "Arn" :: Maybe (String) , "Category" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "Description" :: Maybe (String) , "LastUpdated" :: Maybe (Types.Timestamp) , "Name" :: Maybe (String) , "Settings" :: Maybe (PresetSettings) , "Type" :: Maybe (Type) } -> {"Arn" :: Maybe (String) , "Category" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "Description" :: Maybe (String) , "LastUpdated" :: Maybe (Types.Timestamp) , "Name" :: Maybe (String) , "Settings" :: Maybe (PresetSettings) , "Type" :: Maybe (Type) } ) -> Preset
newPreset'  customize = (Preset <<< customize) { "Arn": Nothing, "Category": Nothing, "CreatedAt": Nothing, "Description": Nothing, "LastUpdated": Nothing, "Name": Nothing, "Settings": Nothing, "Type": Nothing }



-- | Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
newtype PresetListBy = PresetListBy String
derive instance newtypePresetListBy :: Newtype PresetListBy _
derive instance repGenericPresetListBy :: Generic PresetListBy _
instance showPresetListBy :: Show PresetListBy where show = genericShow
instance decodePresetListBy :: Decode PresetListBy where decode = genericDecode options
instance encodePresetListBy :: Encode PresetListBy where encode = genericEncode options



-- | Settings for preset
newtype PresetSettings = PresetSettings 
  { "AudioDescriptions" :: Maybe (ListOfAudioDescription)
  , "CaptionDescriptions" :: Maybe (ListOfCaptionDescriptionPreset)
  , "ContainerSettings" :: Maybe (ContainerSettings)
  , "VideoDescription" :: Maybe (VideoDescription)
  }
derive instance newtypePresetSettings :: Newtype PresetSettings _
derive instance repGenericPresetSettings :: Generic PresetSettings _
instance showPresetSettings :: Show PresetSettings where show = genericShow
instance decodePresetSettings :: Decode PresetSettings where decode = genericDecode options
instance encodePresetSettings :: Encode PresetSettings where encode = genericEncode options

-- | Constructs PresetSettings from required parameters
newPresetSettings :: PresetSettings
newPresetSettings  = PresetSettings { "AudioDescriptions": Nothing, "CaptionDescriptions": Nothing, "ContainerSettings": Nothing, "VideoDescription": Nothing }

-- | Constructs PresetSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPresetSettings' :: ( { "AudioDescriptions" :: Maybe (ListOfAudioDescription) , "CaptionDescriptions" :: Maybe (ListOfCaptionDescriptionPreset) , "ContainerSettings" :: Maybe (ContainerSettings) , "VideoDescription" :: Maybe (VideoDescription) } -> {"AudioDescriptions" :: Maybe (ListOfAudioDescription) , "CaptionDescriptions" :: Maybe (ListOfCaptionDescriptionPreset) , "ContainerSettings" :: Maybe (ContainerSettings) , "VideoDescription" :: Maybe (VideoDescription) } ) -> PresetSettings
newPresetSettings'  customize = (PresetSettings <<< customize) { "AudioDescriptions": Nothing, "CaptionDescriptions": Nothing, "ContainerSettings": Nothing, "VideoDescription": Nothing }



-- | Use Profile (ProResCodecProfile) to specifiy the type of Apple ProRes codec to use for this output.
newtype ProresCodecProfile = ProresCodecProfile String
derive instance newtypeProresCodecProfile :: Newtype ProresCodecProfile _
derive instance repGenericProresCodecProfile :: Generic ProresCodecProfile _
instance showProresCodecProfile :: Show ProresCodecProfile where show = genericShow
instance decodeProresCodecProfile :: Decode ProresCodecProfile where decode = genericDecode options
instance encodeProresCodecProfile :: Encode ProresCodecProfile where encode = genericEncode options



-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
newtype ProresFramerateControl = ProresFramerateControl String
derive instance newtypeProresFramerateControl :: Newtype ProresFramerateControl _
derive instance repGenericProresFramerateControl :: Generic ProresFramerateControl _
instance showProresFramerateControl :: Show ProresFramerateControl where show = genericShow
instance decodeProresFramerateControl :: Decode ProresFramerateControl where decode = genericDecode options
instance encodeProresFramerateControl :: Encode ProresFramerateControl where encode = genericEncode options



-- | When set to INTERPOLATE, produces smoother motion during framerate conversion.
newtype ProresFramerateConversionAlgorithm = ProresFramerateConversionAlgorithm String
derive instance newtypeProresFramerateConversionAlgorithm :: Newtype ProresFramerateConversionAlgorithm _
derive instance repGenericProresFramerateConversionAlgorithm :: Generic ProresFramerateConversionAlgorithm _
instance showProresFramerateConversionAlgorithm :: Show ProresFramerateConversionAlgorithm where show = genericShow
instance decodeProresFramerateConversionAlgorithm :: Decode ProresFramerateConversionAlgorithm where decode = genericDecode options
instance encodeProresFramerateConversionAlgorithm :: Encode ProresFramerateConversionAlgorithm where encode = genericEncode options



-- | Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
newtype ProresInterlaceMode = ProresInterlaceMode String
derive instance newtypeProresInterlaceMode :: Newtype ProresInterlaceMode _
derive instance repGenericProresInterlaceMode :: Generic ProresInterlaceMode _
instance showProresInterlaceMode :: Show ProresInterlaceMode where show = genericShow
instance decodeProresInterlaceMode :: Decode ProresInterlaceMode where decode = genericDecode options
instance encodeProresInterlaceMode :: Encode ProresInterlaceMode where encode = genericEncode options



-- | Use (ProresParControl) to specify how the service determines the pixel aspect ratio. Set to Follow source (INITIALIZE_FROM_SOURCE) to use the pixel aspect ratio from the input.  To specify a different pixel aspect ratio: Using the console, choose it from the dropdown menu. Using the API, set ProresParControl to (SPECIFIED) and provide  for (ParNumerator) and (ParDenominator).
newtype ProresParControl = ProresParControl String
derive instance newtypeProresParControl :: Newtype ProresParControl _
derive instance repGenericProresParControl :: Generic ProresParControl _
instance showProresParControl :: Show ProresParControl where show = genericShow
instance decodeProresParControl :: Decode ProresParControl where decode = genericDecode options
instance encodeProresParControl :: Encode ProresParControl where encode = genericEncode options



-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES.
newtype ProresSettings = ProresSettings 
  { "CodecProfile" :: Maybe (ProresCodecProfile)
  , "FramerateControl" :: Maybe (ProresFramerateControl)
  , "FramerateConversionAlgorithm" :: Maybe (ProresFramerateConversionAlgorithm)
  , "FramerateDenominator" :: Maybe (Int)
  , "FramerateNumerator" :: Maybe (Int)
  , "InterlaceMode" :: Maybe (ProresInterlaceMode)
  , "ParControl" :: Maybe (ProresParControl)
  , "ParDenominator" :: Maybe (Int)
  , "ParNumerator" :: Maybe (Int)
  , "SlowPal" :: Maybe (ProresSlowPal)
  , "Telecine" :: Maybe (ProresTelecine)
  }
derive instance newtypeProresSettings :: Newtype ProresSettings _
derive instance repGenericProresSettings :: Generic ProresSettings _
instance showProresSettings :: Show ProresSettings where show = genericShow
instance decodeProresSettings :: Decode ProresSettings where decode = genericDecode options
instance encodeProresSettings :: Encode ProresSettings where encode = genericEncode options

-- | Constructs ProresSettings from required parameters
newProresSettings :: ProresSettings
newProresSettings  = ProresSettings { "CodecProfile": Nothing, "FramerateControl": Nothing, "FramerateConversionAlgorithm": Nothing, "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "InterlaceMode": Nothing, "ParControl": Nothing, "ParDenominator": Nothing, "ParNumerator": Nothing, "SlowPal": Nothing, "Telecine": Nothing }

-- | Constructs ProresSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProresSettings' :: ( { "CodecProfile" :: Maybe (ProresCodecProfile) , "FramerateControl" :: Maybe (ProresFramerateControl) , "FramerateConversionAlgorithm" :: Maybe (ProresFramerateConversionAlgorithm) , "FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "InterlaceMode" :: Maybe (ProresInterlaceMode) , "ParControl" :: Maybe (ProresParControl) , "ParDenominator" :: Maybe (Int) , "ParNumerator" :: Maybe (Int) , "SlowPal" :: Maybe (ProresSlowPal) , "Telecine" :: Maybe (ProresTelecine) } -> {"CodecProfile" :: Maybe (ProresCodecProfile) , "FramerateControl" :: Maybe (ProresFramerateControl) , "FramerateConversionAlgorithm" :: Maybe (ProresFramerateConversionAlgorithm) , "FramerateDenominator" :: Maybe (Int) , "FramerateNumerator" :: Maybe (Int) , "InterlaceMode" :: Maybe (ProresInterlaceMode) , "ParControl" :: Maybe (ProresParControl) , "ParDenominator" :: Maybe (Int) , "ParNumerator" :: Maybe (Int) , "SlowPal" :: Maybe (ProresSlowPal) , "Telecine" :: Maybe (ProresTelecine) } ) -> ProresSettings
newProresSettings'  customize = (ProresSettings <<< customize) { "CodecProfile": Nothing, "FramerateControl": Nothing, "FramerateConversionAlgorithm": Nothing, "FramerateDenominator": Nothing, "FramerateNumerator": Nothing, "InterlaceMode": Nothing, "ParControl": Nothing, "ParDenominator": Nothing, "ParNumerator": Nothing, "SlowPal": Nothing, "Telecine": Nothing }



-- | Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
newtype ProresSlowPal = ProresSlowPal String
derive instance newtypeProresSlowPal :: Newtype ProresSlowPal _
derive instance repGenericProresSlowPal :: Generic ProresSlowPal _
instance showProresSlowPal :: Show ProresSlowPal where show = genericShow
instance decodeProresSlowPal :: Decode ProresSlowPal where decode = genericDecode options
instance encodeProresSlowPal :: Encode ProresSlowPal where encode = genericEncode options



-- | Only use Telecine (ProresTelecine) when you set Framerate (Framerate) to 29.970. Set Telecine (ProresTelecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player.
newtype ProresTelecine = ProresTelecine String
derive instance newtypeProresTelecine :: Newtype ProresTelecine _
derive instance repGenericProresTelecine :: Generic ProresTelecine _
instance showProresTelecine :: Show ProresTelecine where show = genericShow
instance decodeProresTelecine :: Decode ProresTelecine where decode = genericDecode options
instance encodeProresTelecine :: Encode ProresTelecine where encode = genericEncode options



-- | MediaConvert jobs are submitted to a queue. Unless specified otherwise jobs are submitted to a built-in default queue. User can create additional queues to separate the jobs of different categories or priority.
newtype Queue = Queue 
  { "Arn" :: Maybe (String)
  , "CreatedAt" :: Maybe (Types.Timestamp)
  , "Description" :: Maybe (String)
  , "LastUpdated" :: Maybe (Types.Timestamp)
  , "Name" :: Maybe (String)
  , "Status" :: Maybe (QueueStatus)
  , "Type" :: Maybe (Type)
  }
derive instance newtypeQueue :: Newtype Queue _
derive instance repGenericQueue :: Generic Queue _
instance showQueue :: Show Queue where show = genericShow
instance decodeQueue :: Decode Queue where decode = genericDecode options
instance encodeQueue :: Encode Queue where encode = genericEncode options

-- | Constructs Queue from required parameters
newQueue :: Queue
newQueue  = Queue { "Arn": Nothing, "CreatedAt": Nothing, "Description": Nothing, "LastUpdated": Nothing, "Name": Nothing, "Status": Nothing, "Type": Nothing }

-- | Constructs Queue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueue' :: ( { "Arn" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "Description" :: Maybe (String) , "LastUpdated" :: Maybe (Types.Timestamp) , "Name" :: Maybe (String) , "Status" :: Maybe (QueueStatus) , "Type" :: Maybe (Type) } -> {"Arn" :: Maybe (String) , "CreatedAt" :: Maybe (Types.Timestamp) , "Description" :: Maybe (String) , "LastUpdated" :: Maybe (Types.Timestamp) , "Name" :: Maybe (String) , "Status" :: Maybe (QueueStatus) , "Type" :: Maybe (Type) } ) -> Queue
newQueue'  customize = (Queue <<< customize) { "Arn": Nothing, "CreatedAt": Nothing, "Description": Nothing, "LastUpdated": Nothing, "Name": Nothing, "Status": Nothing, "Type": Nothing }



-- | Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.
newtype QueueListBy = QueueListBy String
derive instance newtypeQueueListBy :: Newtype QueueListBy _
derive instance repGenericQueueListBy :: Generic QueueListBy _
instance showQueueListBy :: Show QueueListBy where show = genericShow
instance decodeQueueListBy :: Decode QueueListBy where decode = genericDecode options
instance encodeQueueListBy :: Encode QueueListBy where encode = genericEncode options



-- | Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that queue will not begin. Jobs running when a queue is paused continue to run until they finish or error out.
newtype QueueStatus = QueueStatus String
derive instance newtypeQueueStatus :: Newtype QueueStatus _
derive instance repGenericQueueStatus :: Generic QueueStatus _
instance showQueueStatus :: Show QueueStatus where show = genericShow
instance decodeQueueStatus :: Decode QueueStatus where decode = genericDecode options
instance encodeQueueStatus :: Encode QueueStatus where encode = genericEncode options



-- | Use Rectangle to identify a specific area of the video frame.
newtype Rectangle = Rectangle 
  { "Height" :: Maybe (Int)
  , "Width" :: Maybe (Int)
  , "X" :: Maybe (Int)
  , "Y" :: Maybe (Int)
  }
derive instance newtypeRectangle :: Newtype Rectangle _
derive instance repGenericRectangle :: Generic Rectangle _
instance showRectangle :: Show Rectangle where show = genericShow
instance decodeRectangle :: Decode Rectangle where decode = genericDecode options
instance encodeRectangle :: Encode Rectangle where encode = genericEncode options

-- | Constructs Rectangle from required parameters
newRectangle :: Rectangle
newRectangle  = Rectangle { "Height": Nothing, "Width": Nothing, "X": Nothing, "Y": Nothing }

-- | Constructs Rectangle's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRectangle' :: ( { "Height" :: Maybe (Int) , "Width" :: Maybe (Int) , "X" :: Maybe (Int) , "Y" :: Maybe (Int) } -> {"Height" :: Maybe (Int) , "Width" :: Maybe (Int) , "X" :: Maybe (Int) , "Y" :: Maybe (Int) } ) -> Rectangle
newRectangle'  customize = (Rectangle <<< customize) { "Height": Nothing, "Width": Nothing, "X": Nothing, "Y": Nothing }



-- | Use Manual audio remixing (RemixSettings) to adjust audio levels for each output channel. With audio remixing, you can output more or fewer audio channels than your input audio source provides.
newtype RemixSettings = RemixSettings 
  { "ChannelMapping" :: Maybe (ChannelMapping)
  , "ChannelsIn" :: Maybe (Int)
  , "ChannelsOut" :: Maybe (Int)
  }
derive instance newtypeRemixSettings :: Newtype RemixSettings _
derive instance repGenericRemixSettings :: Generic RemixSettings _
instance showRemixSettings :: Show RemixSettings where show = genericShow
instance decodeRemixSettings :: Decode RemixSettings where decode = genericDecode options
instance encodeRemixSettings :: Encode RemixSettings where encode = genericEncode options

-- | Constructs RemixSettings from required parameters
newRemixSettings :: RemixSettings
newRemixSettings  = RemixSettings { "ChannelMapping": Nothing, "ChannelsIn": Nothing, "ChannelsOut": Nothing }

-- | Constructs RemixSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemixSettings' :: ( { "ChannelMapping" :: Maybe (ChannelMapping) , "ChannelsIn" :: Maybe (Int) , "ChannelsOut" :: Maybe (Int) } -> {"ChannelMapping" :: Maybe (ChannelMapping) , "ChannelsIn" :: Maybe (Int) , "ChannelsOut" :: Maybe (Int) } ) -> RemixSettings
newRemixSettings'  customize = (RemixSettings <<< customize) { "ChannelMapping": Nothing, "ChannelsIn": Nothing, "ChannelsOut": Nothing }



-- | Use Respond to AFD (RespondToAfd) to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to (NONE). A preferred implementation of this workflow is to set RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to remove all input AFD values from this output.
newtype RespondToAfd = RespondToAfd String
derive instance newtypeRespondToAfd :: Newtype RespondToAfd _
derive instance repGenericRespondToAfd :: Generic RespondToAfd _
instance showRespondToAfd :: Show RespondToAfd where show = genericShow
instance decodeRespondToAfd :: Decode RespondToAfd where decode = genericDecode options
instance encodeRespondToAfd :: Encode RespondToAfd where encode = genericEncode options



-- | Applies only if your input aspect ratio is different from your output aspect ratio. Enable Stretch to output (StretchToOutput) to have the service stretch your video image to fit. Leave this setting disabled to allow the service to letterbox your video instead. This setting overrides any positioning value you specify elsewhere in the job.
newtype ScalingBehavior = ScalingBehavior String
derive instance newtypeScalingBehavior :: Newtype ScalingBehavior _
derive instance repGenericScalingBehavior :: Generic ScalingBehavior _
instance showScalingBehavior :: Show ScalingBehavior where show = genericShow
instance decodeScalingBehavior :: Decode ScalingBehavior where decode = genericDecode options
instance encodeScalingBehavior :: Encode ScalingBehavior where encode = genericEncode options



-- | Set Framerate (SccDestinationFramerate) to make sure that the captions and the video are synchronized in the output. Specify a framerate that matches the framerate of the associated video. If the video framerate is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME).
newtype SccDestinationFramerate = SccDestinationFramerate String
derive instance newtypeSccDestinationFramerate :: Newtype SccDestinationFramerate _
derive instance repGenericSccDestinationFramerate :: Generic SccDestinationFramerate _
instance showSccDestinationFramerate :: Show SccDestinationFramerate where show = genericShow
instance decodeSccDestinationFramerate :: Decode SccDestinationFramerate where decode = genericDecode options
instance encodeSccDestinationFramerate :: Encode SccDestinationFramerate where encode = genericEncode options



-- | Settings for SCC caption output.
newtype SccDestinationSettings = SccDestinationSettings 
  { "Framerate" :: Maybe (SccDestinationFramerate)
  }
derive instance newtypeSccDestinationSettings :: Newtype SccDestinationSettings _
derive instance repGenericSccDestinationSettings :: Generic SccDestinationSettings _
instance showSccDestinationSettings :: Show SccDestinationSettings where show = genericShow
instance decodeSccDestinationSettings :: Decode SccDestinationSettings where decode = genericDecode options
instance encodeSccDestinationSettings :: Encode SccDestinationSettings where encode = genericEncode options

-- | Constructs SccDestinationSettings from required parameters
newSccDestinationSettings :: SccDestinationSettings
newSccDestinationSettings  = SccDestinationSettings { "Framerate": Nothing }

-- | Constructs SccDestinationSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSccDestinationSettings' :: ( { "Framerate" :: Maybe (SccDestinationFramerate) } -> {"Framerate" :: Maybe (SccDestinationFramerate) } ) -> SccDestinationSettings
newSccDestinationSettings'  customize = (SccDestinationSettings <<< customize) { "Framerate": Nothing }



-- | Settings for use with a SPEKE key provider
newtype SpekeKeyProvider = SpekeKeyProvider 
  { "ResourceId" :: Maybe (String)
  , "SystemIds" :: Maybe (ListOf__string)
  , "Url" :: Maybe (String)
  }
derive instance newtypeSpekeKeyProvider :: Newtype SpekeKeyProvider _
derive instance repGenericSpekeKeyProvider :: Generic SpekeKeyProvider _
instance showSpekeKeyProvider :: Show SpekeKeyProvider where show = genericShow
instance decodeSpekeKeyProvider :: Decode SpekeKeyProvider where decode = genericDecode options
instance encodeSpekeKeyProvider :: Encode SpekeKeyProvider where encode = genericEncode options

-- | Constructs SpekeKeyProvider from required parameters
newSpekeKeyProvider :: SpekeKeyProvider
newSpekeKeyProvider  = SpekeKeyProvider { "ResourceId": Nothing, "SystemIds": Nothing, "Url": Nothing }

-- | Constructs SpekeKeyProvider's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSpekeKeyProvider' :: ( { "ResourceId" :: Maybe (String) , "SystemIds" :: Maybe (ListOf__string) , "Url" :: Maybe (String) } -> {"ResourceId" :: Maybe (String) , "SystemIds" :: Maybe (ListOf__string) , "Url" :: Maybe (String) } ) -> SpekeKeyProvider
newSpekeKeyProvider'  customize = (SpekeKeyProvider <<< customize) { "ResourceId": Nothing, "SystemIds": Nothing, "Url": Nothing }



-- | Settings for use with a SPEKE key provider.
newtype StaticKeyProvider = StaticKeyProvider 
  { "KeyFormat" :: Maybe (String)
  , "KeyFormatVersions" :: Maybe (String)
  , "StaticKeyValue" :: Maybe (String)
  , "Url" :: Maybe (String)
  }
derive instance newtypeStaticKeyProvider :: Newtype StaticKeyProvider _
derive instance repGenericStaticKeyProvider :: Generic StaticKeyProvider _
instance showStaticKeyProvider :: Show StaticKeyProvider where show = genericShow
instance decodeStaticKeyProvider :: Decode StaticKeyProvider where decode = genericDecode options
instance encodeStaticKeyProvider :: Encode StaticKeyProvider where encode = genericEncode options

-- | Constructs StaticKeyProvider from required parameters
newStaticKeyProvider :: StaticKeyProvider
newStaticKeyProvider  = StaticKeyProvider { "KeyFormat": Nothing, "KeyFormatVersions": Nothing, "StaticKeyValue": Nothing, "Url": Nothing }

-- | Constructs StaticKeyProvider's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStaticKeyProvider' :: ( { "KeyFormat" :: Maybe (String) , "KeyFormatVersions" :: Maybe (String) , "StaticKeyValue" :: Maybe (String) , "Url" :: Maybe (String) } -> {"KeyFormat" :: Maybe (String) , "KeyFormatVersions" :: Maybe (String) , "StaticKeyValue" :: Maybe (String) , "Url" :: Maybe (String) } ) -> StaticKeyProvider
newStaticKeyProvider'  customize = (StaticKeyProvider <<< customize) { "KeyFormat": Nothing, "KeyFormatVersions": Nothing, "StaticKeyValue": Nothing, "Url": Nothing }



-- | Settings for Teletext caption output
newtype TeletextDestinationSettings = TeletextDestinationSettings 
  { "PageNumber" :: Maybe (String)
  }
derive instance newtypeTeletextDestinationSettings :: Newtype TeletextDestinationSettings _
derive instance repGenericTeletextDestinationSettings :: Generic TeletextDestinationSettings _
instance showTeletextDestinationSettings :: Show TeletextDestinationSettings where show = genericShow
instance decodeTeletextDestinationSettings :: Decode TeletextDestinationSettings where decode = genericDecode options
instance encodeTeletextDestinationSettings :: Encode TeletextDestinationSettings where encode = genericEncode options

-- | Constructs TeletextDestinationSettings from required parameters
newTeletextDestinationSettings :: TeletextDestinationSettings
newTeletextDestinationSettings  = TeletextDestinationSettings { "PageNumber": Nothing }

-- | Constructs TeletextDestinationSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTeletextDestinationSettings' :: ( { "PageNumber" :: Maybe (String) } -> {"PageNumber" :: Maybe (String) } ) -> TeletextDestinationSettings
newTeletextDestinationSettings'  customize = (TeletextDestinationSettings <<< customize) { "PageNumber": Nothing }



-- | Settings specific to Teletext caption sources, including Page number.
newtype TeletextSourceSettings = TeletextSourceSettings 
  { "PageNumber" :: Maybe (String)
  }
derive instance newtypeTeletextSourceSettings :: Newtype TeletextSourceSettings _
derive instance repGenericTeletextSourceSettings :: Generic TeletextSourceSettings _
instance showTeletextSourceSettings :: Show TeletextSourceSettings where show = genericShow
instance decodeTeletextSourceSettings :: Decode TeletextSourceSettings where decode = genericDecode options
instance encodeTeletextSourceSettings :: Encode TeletextSourceSettings where encode = genericEncode options

-- | Constructs TeletextSourceSettings from required parameters
newTeletextSourceSettings :: TeletextSourceSettings
newTeletextSourceSettings  = TeletextSourceSettings { "PageNumber": Nothing }

-- | Constructs TeletextSourceSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTeletextSourceSettings' :: ( { "PageNumber" :: Maybe (String) } -> {"PageNumber" :: Maybe (String) } ) -> TeletextSourceSettings
newTeletextSourceSettings'  customize = (TeletextSourceSettings <<< customize) { "PageNumber": Nothing }



-- | Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and specified prefix into the output.
newtype TimecodeBurnin = TimecodeBurnin 
  { "FontSize" :: Maybe (Int)
  , "Position" :: Maybe (TimecodeBurninPosition)
  , "Prefix" :: Maybe (String)
  }
derive instance newtypeTimecodeBurnin :: Newtype TimecodeBurnin _
derive instance repGenericTimecodeBurnin :: Generic TimecodeBurnin _
instance showTimecodeBurnin :: Show TimecodeBurnin where show = genericShow
instance decodeTimecodeBurnin :: Decode TimecodeBurnin where decode = genericDecode options
instance encodeTimecodeBurnin :: Encode TimecodeBurnin where encode = genericEncode options

-- | Constructs TimecodeBurnin from required parameters
newTimecodeBurnin :: TimecodeBurnin
newTimecodeBurnin  = TimecodeBurnin { "FontSize": Nothing, "Position": Nothing, "Prefix": Nothing }

-- | Constructs TimecodeBurnin's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimecodeBurnin' :: ( { "FontSize" :: Maybe (Int) , "Position" :: Maybe (TimecodeBurninPosition) , "Prefix" :: Maybe (String) } -> {"FontSize" :: Maybe (Int) , "Position" :: Maybe (TimecodeBurninPosition) , "Prefix" :: Maybe (String) } ) -> TimecodeBurnin
newTimecodeBurnin'  customize = (TimecodeBurnin <<< customize) { "FontSize": Nothing, "Position": Nothing, "Prefix": Nothing }



-- | Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to specify the location the burned-in timecode on output video.
newtype TimecodeBurninPosition = TimecodeBurninPosition String
derive instance newtypeTimecodeBurninPosition :: Newtype TimecodeBurninPosition _
derive instance repGenericTimecodeBurninPosition :: Generic TimecodeBurninPosition _
instance showTimecodeBurninPosition :: Show TimecodeBurninPosition where show = genericShow
instance decodeTimecodeBurninPosition :: Decode TimecodeBurninPosition where decode = genericDecode options
instance encodeTimecodeBurninPosition :: Encode TimecodeBurninPosition where encode = genericEncode options



-- | Contains settings used to acquire and adjust timecode information from inputs.
newtype TimecodeConfig = TimecodeConfig 
  { "Anchor" :: Maybe (String)
  , "Source" :: Maybe (TimecodeSource)
  , "Start" :: Maybe (String)
  , "TimestampOffset" :: Maybe (String)
  }
derive instance newtypeTimecodeConfig :: Newtype TimecodeConfig _
derive instance repGenericTimecodeConfig :: Generic TimecodeConfig _
instance showTimecodeConfig :: Show TimecodeConfig where show = genericShow
instance decodeTimecodeConfig :: Decode TimecodeConfig where decode = genericDecode options
instance encodeTimecodeConfig :: Encode TimecodeConfig where encode = genericEncode options

-- | Constructs TimecodeConfig from required parameters
newTimecodeConfig :: TimecodeConfig
newTimecodeConfig  = TimecodeConfig { "Anchor": Nothing, "Source": Nothing, "Start": Nothing, "TimestampOffset": Nothing }

-- | Constructs TimecodeConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimecodeConfig' :: ( { "Anchor" :: Maybe (String) , "Source" :: Maybe (TimecodeSource) , "Start" :: Maybe (String) , "TimestampOffset" :: Maybe (String) } -> {"Anchor" :: Maybe (String) , "Source" :: Maybe (TimecodeSource) , "Start" :: Maybe (String) , "TimestampOffset" :: Maybe (String) } ) -> TimecodeConfig
newTimecodeConfig'  customize = (TimecodeConfig <<< customize) { "Anchor": Nothing, "Source": Nothing, "Start": Nothing, "TimestampOffset": Nothing }



-- | Use Timecode source (TimecodeSource) to set how timecodes are handled within this input. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded (EMBEDDED) - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 (ZEROBASED) instead. * Start at 0 (ZEROBASED) - Set the timecode of the initial frame to 00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set the timecode of the initial frame to a value other than zero. You use Start timecode (Start) to provide this value.
newtype TimecodeSource = TimecodeSource String
derive instance newtypeTimecodeSource :: Newtype TimecodeSource _
derive instance repGenericTimecodeSource :: Generic TimecodeSource _
instance showTimecodeSource :: Show TimecodeSource where show = genericShow
instance decodeTimecodeSource :: Decode TimecodeSource where decode = genericDecode options
instance encodeTimecodeSource :: Encode TimecodeSource where encode = genericEncode options



-- | If PASSTHROUGH, inserts ID3 timed metadata from the timed_metadata REST command into this output.
newtype TimedMetadata = TimedMetadata String
derive instance newtypeTimedMetadata :: Newtype TimedMetadata _
derive instance repGenericTimedMetadata :: Generic TimedMetadata _
instance showTimedMetadata :: Show TimedMetadata where show = genericShow
instance decodeTimedMetadata :: Decode TimedMetadata where decode = genericDecode options
instance encodeTimedMetadata :: Encode TimedMetadata where encode = genericEncode options



-- | Enable Timed metadata insertion (TimedMetadataInsertion) to include ID3 tags in your job. To include timed metadata, you must enable it here, enable it in each output container, and specify tags and timecodes in ID3 insertion (Id3Insertion) objects.
newtype TimedMetadataInsertion = TimedMetadataInsertion 
  { "Id3Insertions" :: Maybe (ListOfId3Insertion)
  }
derive instance newtypeTimedMetadataInsertion :: Newtype TimedMetadataInsertion _
derive instance repGenericTimedMetadataInsertion :: Generic TimedMetadataInsertion _
instance showTimedMetadataInsertion :: Show TimedMetadataInsertion where show = genericShow
instance decodeTimedMetadataInsertion :: Decode TimedMetadataInsertion where decode = genericDecode options
instance encodeTimedMetadataInsertion :: Encode TimedMetadataInsertion where encode = genericEncode options

-- | Constructs TimedMetadataInsertion from required parameters
newTimedMetadataInsertion :: TimedMetadataInsertion
newTimedMetadataInsertion  = TimedMetadataInsertion { "Id3Insertions": Nothing }

-- | Constructs TimedMetadataInsertion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimedMetadataInsertion' :: ( { "Id3Insertions" :: Maybe (ListOfId3Insertion) } -> {"Id3Insertions" :: Maybe (ListOfId3Insertion) } ) -> TimedMetadataInsertion
newTimedMetadataInsertion'  customize = (TimedMetadataInsertion <<< customize) { "Id3Insertions": Nothing }



-- | Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds.
newtype Timing = Timing 
  { "FinishTime" :: Maybe (Types.Timestamp)
  , "StartTime" :: Maybe (Types.Timestamp)
  , "SubmitTime" :: Maybe (Types.Timestamp)
  }
derive instance newtypeTiming :: Newtype Timing _
derive instance repGenericTiming :: Generic Timing _
instance showTiming :: Show Timing where show = genericShow
instance decodeTiming :: Decode Timing where decode = genericDecode options
instance encodeTiming :: Encode Timing where encode = genericEncode options

-- | Constructs Timing from required parameters
newTiming :: Timing
newTiming  = Timing { "FinishTime": Nothing, "StartTime": Nothing, "SubmitTime": Nothing }

-- | Constructs Timing's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTiming' :: ( { "FinishTime" :: Maybe (Types.Timestamp) , "StartTime" :: Maybe (Types.Timestamp) , "SubmitTime" :: Maybe (Types.Timestamp) } -> {"FinishTime" :: Maybe (Types.Timestamp) , "StartTime" :: Maybe (Types.Timestamp) , "SubmitTime" :: Maybe (Types.Timestamp) } ) -> Timing
newTiming'  customize = (Timing <<< customize) { "FinishTime": Nothing, "StartTime": Nothing, "SubmitTime": Nothing }



-- | Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests.
newtype TooManyRequestsException = TooManyRequestsException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "Message": Nothing }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "Message": Nothing }



-- | Settings specific to TTML caption outputs, including Pass style information (TtmlStylePassthrough).
newtype TtmlDestinationSettings = TtmlDestinationSettings 
  { "StylePassthrough" :: Maybe (TtmlStylePassthrough)
  }
derive instance newtypeTtmlDestinationSettings :: Newtype TtmlDestinationSettings _
derive instance repGenericTtmlDestinationSettings :: Generic TtmlDestinationSettings _
instance showTtmlDestinationSettings :: Show TtmlDestinationSettings where show = genericShow
instance decodeTtmlDestinationSettings :: Decode TtmlDestinationSettings where decode = genericDecode options
instance encodeTtmlDestinationSettings :: Encode TtmlDestinationSettings where encode = genericEncode options

-- | Constructs TtmlDestinationSettings from required parameters
newTtmlDestinationSettings :: TtmlDestinationSettings
newTtmlDestinationSettings  = TtmlDestinationSettings { "StylePassthrough": Nothing }

-- | Constructs TtmlDestinationSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTtmlDestinationSettings' :: ( { "StylePassthrough" :: Maybe (TtmlStylePassthrough) } -> {"StylePassthrough" :: Maybe (TtmlStylePassthrough) } ) -> TtmlDestinationSettings
newTtmlDestinationSettings'  customize = (TtmlDestinationSettings <<< customize) { "StylePassthrough": Nothing }



-- | Pass through style and position information from a TTML-like input source (TTML, SMPTE-TT, CFF-TT) to the CFF-TT output or TTML output.
newtype TtmlStylePassthrough = TtmlStylePassthrough String
derive instance newtypeTtmlStylePassthrough :: Newtype TtmlStylePassthrough _
derive instance repGenericTtmlStylePassthrough :: Generic TtmlStylePassthrough _
instance showTtmlStylePassthrough :: Show TtmlStylePassthrough where show = genericShow
instance decodeTtmlStylePassthrough :: Decode TtmlStylePassthrough where decode = genericDecode options
instance encodeTtmlStylePassthrough :: Encode TtmlStylePassthrough where encode = genericEncode options



newtype Type = Type String
derive instance newtypeType :: Newtype Type _
derive instance repGenericType :: Generic Type _
instance showType :: Show Type where show = genericShow
instance decodeType :: Decode Type where decode = genericDecode options
instance encodeType :: Encode Type where encode = genericEncode options



newtype UpdateJobTemplateRequest = UpdateJobTemplateRequest 
  { "Category" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "Name" :: (String)
  , "Queue" :: Maybe (String)
  , "Settings" :: Maybe (JobTemplateSettings)
  }
derive instance newtypeUpdateJobTemplateRequest :: Newtype UpdateJobTemplateRequest _
derive instance repGenericUpdateJobTemplateRequest :: Generic UpdateJobTemplateRequest _
instance showUpdateJobTemplateRequest :: Show UpdateJobTemplateRequest where show = genericShow
instance decodeUpdateJobTemplateRequest :: Decode UpdateJobTemplateRequest where decode = genericDecode options
instance encodeUpdateJobTemplateRequest :: Encode UpdateJobTemplateRequest where encode = genericEncode options

-- | Constructs UpdateJobTemplateRequest from required parameters
newUpdateJobTemplateRequest :: String -> UpdateJobTemplateRequest
newUpdateJobTemplateRequest _Name = UpdateJobTemplateRequest { "Name": _Name, "Category": Nothing, "Description": Nothing, "Queue": Nothing, "Settings": Nothing }

-- | Constructs UpdateJobTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobTemplateRequest' :: String -> ( { "Category" :: Maybe (String) , "Description" :: Maybe (String) , "Name" :: (String) , "Queue" :: Maybe (String) , "Settings" :: Maybe (JobTemplateSettings) } -> {"Category" :: Maybe (String) , "Description" :: Maybe (String) , "Name" :: (String) , "Queue" :: Maybe (String) , "Settings" :: Maybe (JobTemplateSettings) } ) -> UpdateJobTemplateRequest
newUpdateJobTemplateRequest' _Name customize = (UpdateJobTemplateRequest <<< customize) { "Name": _Name, "Category": Nothing, "Description": Nothing, "Queue": Nothing, "Settings": Nothing }



newtype UpdateJobTemplateResponse = UpdateJobTemplateResponse 
  { "JobTemplate" :: Maybe (JobTemplate)
  }
derive instance newtypeUpdateJobTemplateResponse :: Newtype UpdateJobTemplateResponse _
derive instance repGenericUpdateJobTemplateResponse :: Generic UpdateJobTemplateResponse _
instance showUpdateJobTemplateResponse :: Show UpdateJobTemplateResponse where show = genericShow
instance decodeUpdateJobTemplateResponse :: Decode UpdateJobTemplateResponse where decode = genericDecode options
instance encodeUpdateJobTemplateResponse :: Encode UpdateJobTemplateResponse where encode = genericEncode options

-- | Constructs UpdateJobTemplateResponse from required parameters
newUpdateJobTemplateResponse :: UpdateJobTemplateResponse
newUpdateJobTemplateResponse  = UpdateJobTemplateResponse { "JobTemplate": Nothing }

-- | Constructs UpdateJobTemplateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobTemplateResponse' :: ( { "JobTemplate" :: Maybe (JobTemplate) } -> {"JobTemplate" :: Maybe (JobTemplate) } ) -> UpdateJobTemplateResponse
newUpdateJobTemplateResponse'  customize = (UpdateJobTemplateResponse <<< customize) { "JobTemplate": Nothing }



newtype UpdatePresetRequest = UpdatePresetRequest 
  { "Category" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "Name" :: (String)
  , "Settings" :: Maybe (PresetSettings)
  }
derive instance newtypeUpdatePresetRequest :: Newtype UpdatePresetRequest _
derive instance repGenericUpdatePresetRequest :: Generic UpdatePresetRequest _
instance showUpdatePresetRequest :: Show UpdatePresetRequest where show = genericShow
instance decodeUpdatePresetRequest :: Decode UpdatePresetRequest where decode = genericDecode options
instance encodeUpdatePresetRequest :: Encode UpdatePresetRequest where encode = genericEncode options

-- | Constructs UpdatePresetRequest from required parameters
newUpdatePresetRequest :: String -> UpdatePresetRequest
newUpdatePresetRequest _Name = UpdatePresetRequest { "Name": _Name, "Category": Nothing, "Description": Nothing, "Settings": Nothing }

-- | Constructs UpdatePresetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdatePresetRequest' :: String -> ( { "Category" :: Maybe (String) , "Description" :: Maybe (String) , "Name" :: (String) , "Settings" :: Maybe (PresetSettings) } -> {"Category" :: Maybe (String) , "Description" :: Maybe (String) , "Name" :: (String) , "Settings" :: Maybe (PresetSettings) } ) -> UpdatePresetRequest
newUpdatePresetRequest' _Name customize = (UpdatePresetRequest <<< customize) { "Name": _Name, "Category": Nothing, "Description": Nothing, "Settings": Nothing }



newtype UpdatePresetResponse = UpdatePresetResponse 
  { "Preset" :: Maybe (Preset)
  }
derive instance newtypeUpdatePresetResponse :: Newtype UpdatePresetResponse _
derive instance repGenericUpdatePresetResponse :: Generic UpdatePresetResponse _
instance showUpdatePresetResponse :: Show UpdatePresetResponse where show = genericShow
instance decodeUpdatePresetResponse :: Decode UpdatePresetResponse where decode = genericDecode options
instance encodeUpdatePresetResponse :: Encode UpdatePresetResponse where encode = genericEncode options

-- | Constructs UpdatePresetResponse from required parameters
newUpdatePresetResponse :: UpdatePresetResponse
newUpdatePresetResponse  = UpdatePresetResponse { "Preset": Nothing }

-- | Constructs UpdatePresetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdatePresetResponse' :: ( { "Preset" :: Maybe (Preset) } -> {"Preset" :: Maybe (Preset) } ) -> UpdatePresetResponse
newUpdatePresetResponse'  customize = (UpdatePresetResponse <<< customize) { "Preset": Nothing }



newtype UpdateQueueRequest = UpdateQueueRequest 
  { "Description" :: Maybe (String)
  , "Name" :: (String)
  , "Status" :: Maybe (QueueStatus)
  }
derive instance newtypeUpdateQueueRequest :: Newtype UpdateQueueRequest _
derive instance repGenericUpdateQueueRequest :: Generic UpdateQueueRequest _
instance showUpdateQueueRequest :: Show UpdateQueueRequest where show = genericShow
instance decodeUpdateQueueRequest :: Decode UpdateQueueRequest where decode = genericDecode options
instance encodeUpdateQueueRequest :: Encode UpdateQueueRequest where encode = genericEncode options

-- | Constructs UpdateQueueRequest from required parameters
newUpdateQueueRequest :: String -> UpdateQueueRequest
newUpdateQueueRequest _Name = UpdateQueueRequest { "Name": _Name, "Description": Nothing, "Status": Nothing }

-- | Constructs UpdateQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateQueueRequest' :: String -> ( { "Description" :: Maybe (String) , "Name" :: (String) , "Status" :: Maybe (QueueStatus) } -> {"Description" :: Maybe (String) , "Name" :: (String) , "Status" :: Maybe (QueueStatus) } ) -> UpdateQueueRequest
newUpdateQueueRequest' _Name customize = (UpdateQueueRequest <<< customize) { "Name": _Name, "Description": Nothing, "Status": Nothing }



newtype UpdateQueueResponse = UpdateQueueResponse 
  { "Queue" :: Maybe (Queue)
  }
derive instance newtypeUpdateQueueResponse :: Newtype UpdateQueueResponse _
derive instance repGenericUpdateQueueResponse :: Generic UpdateQueueResponse _
instance showUpdateQueueResponse :: Show UpdateQueueResponse where show = genericShow
instance decodeUpdateQueueResponse :: Decode UpdateQueueResponse where decode = genericDecode options
instance encodeUpdateQueueResponse :: Encode UpdateQueueResponse where encode = genericEncode options

-- | Constructs UpdateQueueResponse from required parameters
newUpdateQueueResponse :: UpdateQueueResponse
newUpdateQueueResponse  = UpdateQueueResponse { "Queue": Nothing }

-- | Constructs UpdateQueueResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateQueueResponse' :: ( { "Queue" :: Maybe (Queue) } -> {"Queue" :: Maybe (Queue) } ) -> UpdateQueueResponse
newUpdateQueueResponse'  customize = (UpdateQueueResponse <<< customize) { "Queue": Nothing }



-- | Type of video codec
newtype VideoCodec = VideoCodec String
derive instance newtypeVideoCodec :: Newtype VideoCodec _
derive instance repGenericVideoCodec :: Generic VideoCodec _
instance showVideoCodec :: Show VideoCodec where show = genericShow
instance decodeVideoCodec :: Decode VideoCodec where decode = genericDecode options
instance encodeVideoCodec :: Encode VideoCodec where encode = genericEncode options



-- | Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value you choose for Video codec (Codec). For each codec enum you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * FRAME_CAPTURE, FrameCaptureSettings
newtype VideoCodecSettings = VideoCodecSettings 
  { "Codec" :: Maybe (VideoCodec)
  , "FrameCaptureSettings" :: Maybe (FrameCaptureSettings)
  , "H264Settings" :: Maybe (H264Settings)
  , "H265Settings" :: Maybe (H265Settings)
  , "Mpeg2Settings" :: Maybe (Mpeg2Settings)
  , "ProresSettings" :: Maybe (ProresSettings)
  }
derive instance newtypeVideoCodecSettings :: Newtype VideoCodecSettings _
derive instance repGenericVideoCodecSettings :: Generic VideoCodecSettings _
instance showVideoCodecSettings :: Show VideoCodecSettings where show = genericShow
instance decodeVideoCodecSettings :: Decode VideoCodecSettings where decode = genericDecode options
instance encodeVideoCodecSettings :: Encode VideoCodecSettings where encode = genericEncode options

-- | Constructs VideoCodecSettings from required parameters
newVideoCodecSettings :: VideoCodecSettings
newVideoCodecSettings  = VideoCodecSettings { "Codec": Nothing, "FrameCaptureSettings": Nothing, "H264Settings": Nothing, "H265Settings": Nothing, "Mpeg2Settings": Nothing, "ProresSettings": Nothing }

-- | Constructs VideoCodecSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVideoCodecSettings' :: ( { "Codec" :: Maybe (VideoCodec) , "FrameCaptureSettings" :: Maybe (FrameCaptureSettings) , "H264Settings" :: Maybe (H264Settings) , "H265Settings" :: Maybe (H265Settings) , "Mpeg2Settings" :: Maybe (Mpeg2Settings) , "ProresSettings" :: Maybe (ProresSettings) } -> {"Codec" :: Maybe (VideoCodec) , "FrameCaptureSettings" :: Maybe (FrameCaptureSettings) , "H264Settings" :: Maybe (H264Settings) , "H265Settings" :: Maybe (H265Settings) , "Mpeg2Settings" :: Maybe (Mpeg2Settings) , "ProresSettings" :: Maybe (ProresSettings) } ) -> VideoCodecSettings
newVideoCodecSettings'  customize = (VideoCodecSettings <<< customize) { "Codec": Nothing, "FrameCaptureSettings": Nothing, "H264Settings": Nothing, "H265Settings": Nothing, "Mpeg2Settings": Nothing, "ProresSettings": Nothing }



-- | Settings for video outputs
newtype VideoDescription = VideoDescription 
  { "AfdSignaling" :: Maybe (AfdSignaling)
  , "AntiAlias" :: Maybe (AntiAlias)
  , "CodecSettings" :: Maybe (VideoCodecSettings)
  , "ColorMetadata" :: Maybe (ColorMetadata)
  , "Crop" :: Maybe (Rectangle)
  , "DropFrameTimecode" :: Maybe (DropFrameTimecode)
  , "FixedAfd" :: Maybe (Int)
  , "Height" :: Maybe (Int)
  , "Position" :: Maybe (Rectangle)
  , "RespondToAfd" :: Maybe (RespondToAfd)
  , "ScalingBehavior" :: Maybe (ScalingBehavior)
  , "Sharpness" :: Maybe (Int)
  , "TimecodeInsertion" :: Maybe (VideoTimecodeInsertion)
  , "VideoPreprocessors" :: Maybe (VideoPreprocessor)
  , "Width" :: Maybe (Int)
  }
derive instance newtypeVideoDescription :: Newtype VideoDescription _
derive instance repGenericVideoDescription :: Generic VideoDescription _
instance showVideoDescription :: Show VideoDescription where show = genericShow
instance decodeVideoDescription :: Decode VideoDescription where decode = genericDecode options
instance encodeVideoDescription :: Encode VideoDescription where encode = genericEncode options

-- | Constructs VideoDescription from required parameters
newVideoDescription :: VideoDescription
newVideoDescription  = VideoDescription { "AfdSignaling": Nothing, "AntiAlias": Nothing, "CodecSettings": Nothing, "ColorMetadata": Nothing, "Crop": Nothing, "DropFrameTimecode": Nothing, "FixedAfd": Nothing, "Height": Nothing, "Position": Nothing, "RespondToAfd": Nothing, "ScalingBehavior": Nothing, "Sharpness": Nothing, "TimecodeInsertion": Nothing, "VideoPreprocessors": Nothing, "Width": Nothing }

-- | Constructs VideoDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVideoDescription' :: ( { "AfdSignaling" :: Maybe (AfdSignaling) , "AntiAlias" :: Maybe (AntiAlias) , "CodecSettings" :: Maybe (VideoCodecSettings) , "ColorMetadata" :: Maybe (ColorMetadata) , "Crop" :: Maybe (Rectangle) , "DropFrameTimecode" :: Maybe (DropFrameTimecode) , "FixedAfd" :: Maybe (Int) , "Height" :: Maybe (Int) , "Position" :: Maybe (Rectangle) , "RespondToAfd" :: Maybe (RespondToAfd) , "ScalingBehavior" :: Maybe (ScalingBehavior) , "Sharpness" :: Maybe (Int) , "TimecodeInsertion" :: Maybe (VideoTimecodeInsertion) , "VideoPreprocessors" :: Maybe (VideoPreprocessor) , "Width" :: Maybe (Int) } -> {"AfdSignaling" :: Maybe (AfdSignaling) , "AntiAlias" :: Maybe (AntiAlias) , "CodecSettings" :: Maybe (VideoCodecSettings) , "ColorMetadata" :: Maybe (ColorMetadata) , "Crop" :: Maybe (Rectangle) , "DropFrameTimecode" :: Maybe (DropFrameTimecode) , "FixedAfd" :: Maybe (Int) , "Height" :: Maybe (Int) , "Position" :: Maybe (Rectangle) , "RespondToAfd" :: Maybe (RespondToAfd) , "ScalingBehavior" :: Maybe (ScalingBehavior) , "Sharpness" :: Maybe (Int) , "TimecodeInsertion" :: Maybe (VideoTimecodeInsertion) , "VideoPreprocessors" :: Maybe (VideoPreprocessor) , "Width" :: Maybe (Int) } ) -> VideoDescription
newVideoDescription'  customize = (VideoDescription <<< customize) { "AfdSignaling": Nothing, "AntiAlias": Nothing, "CodecSettings": Nothing, "ColorMetadata": Nothing, "Crop": Nothing, "DropFrameTimecode": Nothing, "FixedAfd": Nothing, "Height": Nothing, "Position": Nothing, "RespondToAfd": Nothing, "ScalingBehavior": Nothing, "Sharpness": Nothing, "TimecodeInsertion": Nothing, "VideoPreprocessors": Nothing, "Width": Nothing }



-- | Contains details about the output's video stream
newtype VideoDetail = VideoDetail 
  { "HeightInPx" :: Maybe (Int)
  , "WidthInPx" :: Maybe (Int)
  }
derive instance newtypeVideoDetail :: Newtype VideoDetail _
derive instance repGenericVideoDetail :: Generic VideoDetail _
instance showVideoDetail :: Show VideoDetail where show = genericShow
instance decodeVideoDetail :: Decode VideoDetail where decode = genericDecode options
instance encodeVideoDetail :: Encode VideoDetail where encode = genericEncode options

-- | Constructs VideoDetail from required parameters
newVideoDetail :: VideoDetail
newVideoDetail  = VideoDetail { "HeightInPx": Nothing, "WidthInPx": Nothing }

-- | Constructs VideoDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVideoDetail' :: ( { "HeightInPx" :: Maybe (Int) , "WidthInPx" :: Maybe (Int) } -> {"HeightInPx" :: Maybe (Int) , "WidthInPx" :: Maybe (Int) } ) -> VideoDetail
newVideoDetail'  customize = (VideoDetail <<< customize) { "HeightInPx": Nothing, "WidthInPx": Nothing }



-- | Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default.
newtype VideoPreprocessor = VideoPreprocessor 
  { "ColorCorrector" :: Maybe (ColorCorrector)
  , "Deinterlacer" :: Maybe (Deinterlacer)
  , "ImageInserter" :: Maybe (ImageInserter)
  , "NoiseReducer" :: Maybe (NoiseReducer)
  , "TimecodeBurnin" :: Maybe (TimecodeBurnin)
  }
derive instance newtypeVideoPreprocessor :: Newtype VideoPreprocessor _
derive instance repGenericVideoPreprocessor :: Generic VideoPreprocessor _
instance showVideoPreprocessor :: Show VideoPreprocessor where show = genericShow
instance decodeVideoPreprocessor :: Decode VideoPreprocessor where decode = genericDecode options
instance encodeVideoPreprocessor :: Encode VideoPreprocessor where encode = genericEncode options

-- | Constructs VideoPreprocessor from required parameters
newVideoPreprocessor :: VideoPreprocessor
newVideoPreprocessor  = VideoPreprocessor { "ColorCorrector": Nothing, "Deinterlacer": Nothing, "ImageInserter": Nothing, "NoiseReducer": Nothing, "TimecodeBurnin": Nothing }

-- | Constructs VideoPreprocessor's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVideoPreprocessor' :: ( { "ColorCorrector" :: Maybe (ColorCorrector) , "Deinterlacer" :: Maybe (Deinterlacer) , "ImageInserter" :: Maybe (ImageInserter) , "NoiseReducer" :: Maybe (NoiseReducer) , "TimecodeBurnin" :: Maybe (TimecodeBurnin) } -> {"ColorCorrector" :: Maybe (ColorCorrector) , "Deinterlacer" :: Maybe (Deinterlacer) , "ImageInserter" :: Maybe (ImageInserter) , "NoiseReducer" :: Maybe (NoiseReducer) , "TimecodeBurnin" :: Maybe (TimecodeBurnin) } ) -> VideoPreprocessor
newVideoPreprocessor'  customize = (VideoPreprocessor <<< customize) { "ColorCorrector": Nothing, "Deinterlacer": Nothing, "ImageInserter": Nothing, "NoiseReducer": Nothing, "TimecodeBurnin": Nothing }



-- | Selector for video.
newtype VideoSelector = VideoSelector 
  { "ColorSpace" :: Maybe (ColorSpace)
  , "ColorSpaceUsage" :: Maybe (ColorSpaceUsage)
  , "Hdr10Metadata" :: Maybe (Hdr10Metadata)
  , "Pid" :: Maybe (Int)
  , "ProgramNumber" :: Maybe (Int)
  }
derive instance newtypeVideoSelector :: Newtype VideoSelector _
derive instance repGenericVideoSelector :: Generic VideoSelector _
instance showVideoSelector :: Show VideoSelector where show = genericShow
instance decodeVideoSelector :: Decode VideoSelector where decode = genericDecode options
instance encodeVideoSelector :: Encode VideoSelector where encode = genericEncode options

-- | Constructs VideoSelector from required parameters
newVideoSelector :: VideoSelector
newVideoSelector  = VideoSelector { "ColorSpace": Nothing, "ColorSpaceUsage": Nothing, "Hdr10Metadata": Nothing, "Pid": Nothing, "ProgramNumber": Nothing }

-- | Constructs VideoSelector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVideoSelector' :: ( { "ColorSpace" :: Maybe (ColorSpace) , "ColorSpaceUsage" :: Maybe (ColorSpaceUsage) , "Hdr10Metadata" :: Maybe (Hdr10Metadata) , "Pid" :: Maybe (Int) , "ProgramNumber" :: Maybe (Int) } -> {"ColorSpace" :: Maybe (ColorSpace) , "ColorSpaceUsage" :: Maybe (ColorSpaceUsage) , "Hdr10Metadata" :: Maybe (Hdr10Metadata) , "Pid" :: Maybe (Int) , "ProgramNumber" :: Maybe (Int) } ) -> VideoSelector
newVideoSelector'  customize = (VideoSelector <<< customize) { "ColorSpace": Nothing, "ColorSpaceUsage": Nothing, "Hdr10Metadata": Nothing, "Pid": Nothing, "ProgramNumber": Nothing }



-- | Enable Timecode insertion to include timecode information in this output. Do this in the API by setting (VideoTimecodeInsertion) to (PIC_TIMING_SEI). To get timecodes to appear correctly in your output, also set up the timecode configuration for your job in the input settings. Only enable Timecode insertion when the input framerate is identical to output framerate. Disable this setting to remove the timecode from the output. Default is disabled.
newtype VideoTimecodeInsertion = VideoTimecodeInsertion String
derive instance newtypeVideoTimecodeInsertion :: Newtype VideoTimecodeInsertion _
derive instance repGenericVideoTimecodeInsertion :: Generic VideoTimecodeInsertion _
instance showVideoTimecodeInsertion :: Show VideoTimecodeInsertion where show = genericShow
instance decodeVideoTimecodeInsertion :: Decode VideoTimecodeInsertion where decode = genericDecode options
instance encodeVideoTimecodeInsertion :: Encode VideoTimecodeInsertion where encode = genericEncode options



-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV.
newtype WavSettings = WavSettings 
  { "BitDepth" :: Maybe (Int)
  , "Channels" :: Maybe (Int)
  , "SampleRate" :: Maybe (Int)
  }
derive instance newtypeWavSettings :: Newtype WavSettings _
derive instance repGenericWavSettings :: Generic WavSettings _
instance showWavSettings :: Show WavSettings where show = genericShow
instance decodeWavSettings :: Decode WavSettings where decode = genericDecode options
instance encodeWavSettings :: Encode WavSettings where encode = genericEncode options

-- | Constructs WavSettings from required parameters
newWavSettings :: WavSettings
newWavSettings  = WavSettings { "BitDepth": Nothing, "Channels": Nothing, "SampleRate": Nothing }

-- | Constructs WavSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWavSettings' :: ( { "BitDepth" :: Maybe (Int) , "Channels" :: Maybe (Int) , "SampleRate" :: Maybe (Int) } -> {"BitDepth" :: Maybe (Int) , "Channels" :: Maybe (Int) , "SampleRate" :: Maybe (Int) } ) -> WavSettings
newWavSettings'  customize = (WavSettings <<< customize) { "BitDepth": Nothing, "Channels": Nothing, "SampleRate": Nothing }

