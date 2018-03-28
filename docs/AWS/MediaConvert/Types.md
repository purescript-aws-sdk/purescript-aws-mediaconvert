## Module AWS.MediaConvert.Types

#### `options`

``` purescript
options :: Options
```

#### `AacAudioDescriptionBroadcasterMix`

``` purescript
newtype AacAudioDescriptionBroadcasterMix
  = AacAudioDescriptionBroadcasterMix String
```

Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.

##### Instances
``` purescript
Newtype AacAudioDescriptionBroadcasterMix _
Generic AacAudioDescriptionBroadcasterMix _
Show AacAudioDescriptionBroadcasterMix
Decode AacAudioDescriptionBroadcasterMix
Encode AacAudioDescriptionBroadcasterMix
```

#### `AacCodecProfile`

``` purescript
newtype AacCodecProfile
  = AacCodecProfile String
```

AAC Profile.

##### Instances
``` purescript
Newtype AacCodecProfile _
Generic AacCodecProfile _
Show AacCodecProfile
Decode AacCodecProfile
Encode AacCodecProfile
```

#### `AacCodingMode`

``` purescript
newtype AacCodingMode
  = AacCodingMode String
```

Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. "1.0 - Audio Description (Receiver Mix)" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.

##### Instances
``` purescript
Newtype AacCodingMode _
Generic AacCodingMode _
Show AacCodingMode
Decode AacCodingMode
Encode AacCodingMode
```

#### `AacRateControlMode`

``` purescript
newtype AacRateControlMode
  = AacRateControlMode String
```

Rate Control Mode.

##### Instances
``` purescript
Newtype AacRateControlMode _
Generic AacRateControlMode _
Show AacRateControlMode
Decode AacRateControlMode
Encode AacRateControlMode
```

#### `AacRawFormat`

``` purescript
newtype AacRawFormat
  = AacRawFormat String
```

Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose "No container" for the output container.

##### Instances
``` purescript
Newtype AacRawFormat _
Generic AacRawFormat _
Show AacRawFormat
Decode AacRawFormat
Encode AacRawFormat
```

#### `AacSettings`

``` purescript
newtype AacSettings
  = AacSettings { "AudioDescriptionBroadcasterMix" :: NullOrUndefined (AacAudioDescriptionBroadcasterMix), "Bitrate" :: NullOrUndefined (Int), "CodecProfile" :: NullOrUndefined (AacCodecProfile), "CodingMode" :: NullOrUndefined (AacCodingMode), "RateControlMode" :: NullOrUndefined (AacRateControlMode), "RawFormat" :: NullOrUndefined (AacRawFormat), "SampleRate" :: NullOrUndefined (Int), "Specification" :: NullOrUndefined (AacSpecification), "VbrQuality" :: NullOrUndefined (AacVbrQuality) }
```

Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC.

##### Instances
``` purescript
Newtype AacSettings _
Generic AacSettings _
Show AacSettings
Decode AacSettings
Encode AacSettings
```

#### `newAacSettings`

``` purescript
newAacSettings :: AacSettings
```

Constructs AacSettings from required parameters

#### `newAacSettings'`

``` purescript
newAacSettings' :: ({ "AudioDescriptionBroadcasterMix" :: NullOrUndefined (AacAudioDescriptionBroadcasterMix), "Bitrate" :: NullOrUndefined (Int), "CodecProfile" :: NullOrUndefined (AacCodecProfile), "CodingMode" :: NullOrUndefined (AacCodingMode), "RateControlMode" :: NullOrUndefined (AacRateControlMode), "RawFormat" :: NullOrUndefined (AacRawFormat), "SampleRate" :: NullOrUndefined (Int), "Specification" :: NullOrUndefined (AacSpecification), "VbrQuality" :: NullOrUndefined (AacVbrQuality) } -> { "AudioDescriptionBroadcasterMix" :: NullOrUndefined (AacAudioDescriptionBroadcasterMix), "Bitrate" :: NullOrUndefined (Int), "CodecProfile" :: NullOrUndefined (AacCodecProfile), "CodingMode" :: NullOrUndefined (AacCodingMode), "RateControlMode" :: NullOrUndefined (AacRateControlMode), "RawFormat" :: NullOrUndefined (AacRawFormat), "SampleRate" :: NullOrUndefined (Int), "Specification" :: NullOrUndefined (AacSpecification), "VbrQuality" :: NullOrUndefined (AacVbrQuality) }) -> AacSettings
```

Constructs AacSettings's fields from required parameters

#### `AacSpecification`

``` purescript
newtype AacSpecification
  = AacSpecification String
```

Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.

##### Instances
``` purescript
Newtype AacSpecification _
Generic AacSpecification _
Show AacSpecification
Decode AacSpecification
Encode AacSpecification
```

#### `AacVbrQuality`

``` purescript
newtype AacVbrQuality
  = AacVbrQuality String
```

VBR Quality Level - Only used if rate_control_mode is VBR.

##### Instances
``` purescript
Newtype AacVbrQuality _
Generic AacVbrQuality _
Show AacVbrQuality
Decode AacVbrQuality
Encode AacVbrQuality
```

#### `Ac3BitstreamMode`

``` purescript
newtype Ac3BitstreamMode
  = Ac3BitstreamMode String
```

Specifies the "Bitstream Mode" (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.

##### Instances
``` purescript
Newtype Ac3BitstreamMode _
Generic Ac3BitstreamMode _
Show Ac3BitstreamMode
Decode Ac3BitstreamMode
Encode Ac3BitstreamMode
```

#### `Ac3CodingMode`

``` purescript
newtype Ac3CodingMode
  = Ac3CodingMode String
```

Dolby Digital coding mode. Determines number of channels.

##### Instances
``` purescript
Newtype Ac3CodingMode _
Generic Ac3CodingMode _
Show Ac3CodingMode
Decode Ac3CodingMode
Encode Ac3CodingMode
```

#### `Ac3DynamicRangeCompressionProfile`

``` purescript
newtype Ac3DynamicRangeCompressionProfile
  = Ac3DynamicRangeCompressionProfile String
```

If set to FILM_STANDARD, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.

##### Instances
``` purescript
Newtype Ac3DynamicRangeCompressionProfile _
Generic Ac3DynamicRangeCompressionProfile _
Show Ac3DynamicRangeCompressionProfile
Decode Ac3DynamicRangeCompressionProfile
Encode Ac3DynamicRangeCompressionProfile
```

#### `Ac3LfeFilter`

``` purescript
newtype Ac3LfeFilter
  = Ac3LfeFilter String
```

Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.

##### Instances
``` purescript
Newtype Ac3LfeFilter _
Generic Ac3LfeFilter _
Show Ac3LfeFilter
Decode Ac3LfeFilter
Encode Ac3LfeFilter
```

#### `Ac3MetadataControl`

``` purescript
newtype Ac3MetadataControl
  = Ac3MetadataControl String
```

When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.

##### Instances
``` purescript
Newtype Ac3MetadataControl _
Generic Ac3MetadataControl _
Show Ac3MetadataControl
Decode Ac3MetadataControl
Encode Ac3MetadataControl
```

#### `Ac3Settings`

``` purescript
newtype Ac3Settings
  = Ac3Settings { "Bitrate" :: NullOrUndefined (Int), "BitstreamMode" :: NullOrUndefined (Ac3BitstreamMode), "CodingMode" :: NullOrUndefined (Ac3CodingMode), "Dialnorm" :: NullOrUndefined (Int), "DynamicRangeCompressionProfile" :: NullOrUndefined (Ac3DynamicRangeCompressionProfile), "LfeFilter" :: NullOrUndefined (Ac3LfeFilter), "MetadataControl" :: NullOrUndefined (Ac3MetadataControl), "SampleRate" :: NullOrUndefined (Int) }
```

Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3.

##### Instances
``` purescript
Newtype Ac3Settings _
Generic Ac3Settings _
Show Ac3Settings
Decode Ac3Settings
Encode Ac3Settings
```

#### `newAc3Settings`

``` purescript
newAc3Settings :: Ac3Settings
```

Constructs Ac3Settings from required parameters

#### `newAc3Settings'`

``` purescript
newAc3Settings' :: ({ "Bitrate" :: NullOrUndefined (Int), "BitstreamMode" :: NullOrUndefined (Ac3BitstreamMode), "CodingMode" :: NullOrUndefined (Ac3CodingMode), "Dialnorm" :: NullOrUndefined (Int), "DynamicRangeCompressionProfile" :: NullOrUndefined (Ac3DynamicRangeCompressionProfile), "LfeFilter" :: NullOrUndefined (Ac3LfeFilter), "MetadataControl" :: NullOrUndefined (Ac3MetadataControl), "SampleRate" :: NullOrUndefined (Int) } -> { "Bitrate" :: NullOrUndefined (Int), "BitstreamMode" :: NullOrUndefined (Ac3BitstreamMode), "CodingMode" :: NullOrUndefined (Ac3CodingMode), "Dialnorm" :: NullOrUndefined (Int), "DynamicRangeCompressionProfile" :: NullOrUndefined (Ac3DynamicRangeCompressionProfile), "LfeFilter" :: NullOrUndefined (Ac3LfeFilter), "MetadataControl" :: NullOrUndefined (Ac3MetadataControl), "SampleRate" :: NullOrUndefined (Int) }) -> Ac3Settings
```

Constructs Ac3Settings's fields from required parameters

#### `AfdSignaling`

``` purescript
newtype AfdSignaling
  = AfdSignaling String
```

This setting only applies to H.264 and MPEG2 outputs. Use Insert AFD signaling (AfdSignaling) to whether there are AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data.

##### Instances
``` purescript
Newtype AfdSignaling _
Generic AfdSignaling _
Show AfdSignaling
Decode AfdSignaling
Encode AfdSignaling
```

#### `AiffSettings`

``` purescript
newtype AiffSettings
  = AiffSettings { "BitDepth" :: NullOrUndefined (Int), "Channels" :: NullOrUndefined (Int), "SampleRate" :: NullOrUndefined (Int) }
```

Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF.

##### Instances
``` purescript
Newtype AiffSettings _
Generic AiffSettings _
Show AiffSettings
Decode AiffSettings
Encode AiffSettings
```

#### `newAiffSettings`

``` purescript
newAiffSettings :: AiffSettings
```

Constructs AiffSettings from required parameters

#### `newAiffSettings'`

``` purescript
newAiffSettings' :: ({ "BitDepth" :: NullOrUndefined (Int), "Channels" :: NullOrUndefined (Int), "SampleRate" :: NullOrUndefined (Int) } -> { "BitDepth" :: NullOrUndefined (Int), "Channels" :: NullOrUndefined (Int), "SampleRate" :: NullOrUndefined (Int) }) -> AiffSettings
```

Constructs AiffSettings's fields from required parameters

#### `AncillarySourceSettings`

``` purescript
newtype AncillarySourceSettings
  = AncillarySourceSettings { "SourceAncillaryChannelNumber" :: NullOrUndefined (Int) }
```

Settings for ancillary captions source.

##### Instances
``` purescript
Newtype AncillarySourceSettings _
Generic AncillarySourceSettings _
Show AncillarySourceSettings
Decode AncillarySourceSettings
Encode AncillarySourceSettings
```

#### `newAncillarySourceSettings`

``` purescript
newAncillarySourceSettings :: AncillarySourceSettings
```

Constructs AncillarySourceSettings from required parameters

#### `newAncillarySourceSettings'`

``` purescript
newAncillarySourceSettings' :: ({ "SourceAncillaryChannelNumber" :: NullOrUndefined (Int) } -> { "SourceAncillaryChannelNumber" :: NullOrUndefined (Int) }) -> AncillarySourceSettings
```

Constructs AncillarySourceSettings's fields from required parameters

#### `AntiAlias`

``` purescript
newtype AntiAlias
  = AntiAlias String
```

Enable Anti-alias (AntiAlias) to enhance sharp edges in video output when your input resolution is much larger than your output resolution. Default is enabled.

##### Instances
``` purescript
Newtype AntiAlias _
Generic AntiAlias _
Show AntiAlias
Decode AntiAlias
Encode AntiAlias
```

#### `AudioCodec`

``` purescript
newtype AudioCodec
  = AudioCodec String
```

Type of Audio codec.

##### Instances
``` purescript
Newtype AudioCodec _
Generic AudioCodec _
Show AudioCodec
Decode AudioCodec
Encode AudioCodec
```

#### `AudioCodecSettings`

``` purescript
newtype AudioCodecSettings
  = AudioCodecSettings { "AacSettings" :: NullOrUndefined (AacSettings), "Ac3Settings" :: NullOrUndefined (Ac3Settings), "AiffSettings" :: NullOrUndefined (AiffSettings), "Codec" :: NullOrUndefined (AudioCodec), "Eac3Settings" :: NullOrUndefined (Eac3Settings), "Mp2Settings" :: NullOrUndefined (Mp2Settings), "WavSettings" :: NullOrUndefined (WavSettings) }
```

Audio codec settings (CodecSettings) under (AudioDescriptions) contains the group of settings related to audio encoding. The settings in this group vary depending on the value you choose for Audio codec (Codec). For each codec enum you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AAC, AacSettings * MP2, Mp2Settings * WAV, WavSettings * AIFF, AiffSettings * AC3, Ac3Settings * EAC3, Eac3Settings

##### Instances
``` purescript
Newtype AudioCodecSettings _
Generic AudioCodecSettings _
Show AudioCodecSettings
Decode AudioCodecSettings
Encode AudioCodecSettings
```

#### `newAudioCodecSettings`

``` purescript
newAudioCodecSettings :: AudioCodecSettings
```

Constructs AudioCodecSettings from required parameters

#### `newAudioCodecSettings'`

``` purescript
newAudioCodecSettings' :: ({ "AacSettings" :: NullOrUndefined (AacSettings), "Ac3Settings" :: NullOrUndefined (Ac3Settings), "AiffSettings" :: NullOrUndefined (AiffSettings), "Codec" :: NullOrUndefined (AudioCodec), "Eac3Settings" :: NullOrUndefined (Eac3Settings), "Mp2Settings" :: NullOrUndefined (Mp2Settings), "WavSettings" :: NullOrUndefined (WavSettings) } -> { "AacSettings" :: NullOrUndefined (AacSettings), "Ac3Settings" :: NullOrUndefined (Ac3Settings), "AiffSettings" :: NullOrUndefined (AiffSettings), "Codec" :: NullOrUndefined (AudioCodec), "Eac3Settings" :: NullOrUndefined (Eac3Settings), "Mp2Settings" :: NullOrUndefined (Mp2Settings), "WavSettings" :: NullOrUndefined (WavSettings) }) -> AudioCodecSettings
```

Constructs AudioCodecSettings's fields from required parameters

#### `AudioDefaultSelection`

``` purescript
newtype AudioDefaultSelection
  = AudioDefaultSelection String
```

When an "Audio Description":#audio_description specifies an AudioSelector or AudioSelectorGroup  for which no matching source is found in the input, then the audio selector marked as DEFAULT will be used.  If none are marked as default, silence will be inserted for the duration of the input.

##### Instances
``` purescript
Newtype AudioDefaultSelection _
Generic AudioDefaultSelection _
Show AudioDefaultSelection
Decode AudioDefaultSelection
Encode AudioDefaultSelection
```

#### `AudioDescription`

``` purescript
newtype AudioDescription
  = AudioDescription { "AudioNormalizationSettings" :: NullOrUndefined (AudioNormalizationSettings), "AudioSourceName" :: NullOrUndefined (String), "AudioType" :: NullOrUndefined (Int), "AudioTypeControl" :: NullOrUndefined (AudioTypeControl), "CodecSettings" :: NullOrUndefined (AudioCodecSettings), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageCodeControl" :: NullOrUndefined (AudioLanguageCodeControl), "RemixSettings" :: NullOrUndefined (RemixSettings), "StreamName" :: NullOrUndefined (String) }
```

Description of audio output

##### Instances
``` purescript
Newtype AudioDescription _
Generic AudioDescription _
Show AudioDescription
Decode AudioDescription
Encode AudioDescription
```

#### `newAudioDescription`

``` purescript
newAudioDescription :: AudioDescription
```

Constructs AudioDescription from required parameters

#### `newAudioDescription'`

``` purescript
newAudioDescription' :: ({ "AudioNormalizationSettings" :: NullOrUndefined (AudioNormalizationSettings), "AudioSourceName" :: NullOrUndefined (String), "AudioType" :: NullOrUndefined (Int), "AudioTypeControl" :: NullOrUndefined (AudioTypeControl), "CodecSettings" :: NullOrUndefined (AudioCodecSettings), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageCodeControl" :: NullOrUndefined (AudioLanguageCodeControl), "RemixSettings" :: NullOrUndefined (RemixSettings), "StreamName" :: NullOrUndefined (String) } -> { "AudioNormalizationSettings" :: NullOrUndefined (AudioNormalizationSettings), "AudioSourceName" :: NullOrUndefined (String), "AudioType" :: NullOrUndefined (Int), "AudioTypeControl" :: NullOrUndefined (AudioTypeControl), "CodecSettings" :: NullOrUndefined (AudioCodecSettings), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageCodeControl" :: NullOrUndefined (AudioLanguageCodeControl), "RemixSettings" :: NullOrUndefined (RemixSettings), "StreamName" :: NullOrUndefined (String) }) -> AudioDescription
```

Constructs AudioDescription's fields from required parameters

#### `AudioLanguageCodeControl`

``` purescript
newtype AudioLanguageCodeControl
  = AudioLanguageCodeControl String
```

Choosing FOLLOW_INPUT will cause the ISO 639 language code of the output to follow the ISO 639 language code of the input. The language specified for languageCode' will be used when USE_CONFIGURED is selected or when FOLLOW_INPUT is selected but there is no ISO 639 language code specified by the input.

##### Instances
``` purescript
Newtype AudioLanguageCodeControl _
Generic AudioLanguageCodeControl _
Show AudioLanguageCodeControl
Decode AudioLanguageCodeControl
Encode AudioLanguageCodeControl
```

#### `AudioNormalizationAlgorithm`

``` purescript
newtype AudioNormalizationAlgorithm
  = AudioNormalizationAlgorithm String
```

Audio normalization algorithm to use. 1770-1 conforms to the CALM Act specification, 1770-2 conforms to the EBU R-128 specification.

##### Instances
``` purescript
Newtype AudioNormalizationAlgorithm _
Generic AudioNormalizationAlgorithm _
Show AudioNormalizationAlgorithm
Decode AudioNormalizationAlgorithm
Encode AudioNormalizationAlgorithm
```

#### `AudioNormalizationAlgorithmControl`

``` purescript
newtype AudioNormalizationAlgorithmControl
  = AudioNormalizationAlgorithmControl String
```

When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted.

##### Instances
``` purescript
Newtype AudioNormalizationAlgorithmControl _
Generic AudioNormalizationAlgorithmControl _
Show AudioNormalizationAlgorithmControl
Decode AudioNormalizationAlgorithmControl
Encode AudioNormalizationAlgorithmControl
```

#### `AudioNormalizationLoudnessLogging`

``` purescript
newtype AudioNormalizationLoudnessLogging
  = AudioNormalizationLoudnessLogging String
```

If set to LOG, log each output's audio track loudness to a CSV file.

##### Instances
``` purescript
Newtype AudioNormalizationLoudnessLogging _
Generic AudioNormalizationLoudnessLogging _
Show AudioNormalizationLoudnessLogging
Decode AudioNormalizationLoudnessLogging
Encode AudioNormalizationLoudnessLogging
```

#### `AudioNormalizationPeakCalculation`

``` purescript
newtype AudioNormalizationPeakCalculation
  = AudioNormalizationPeakCalculation String
```

If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness.

##### Instances
``` purescript
Newtype AudioNormalizationPeakCalculation _
Generic AudioNormalizationPeakCalculation _
Show AudioNormalizationPeakCalculation
Decode AudioNormalizationPeakCalculation
Encode AudioNormalizationPeakCalculation
```

#### `AudioNormalizationSettings`

``` purescript
newtype AudioNormalizationSettings
  = AudioNormalizationSettings { "Algorithm" :: NullOrUndefined (AudioNormalizationAlgorithm), "AlgorithmControl" :: NullOrUndefined (AudioNormalizationAlgorithmControl), "CorrectionGateLevel" :: NullOrUndefined (Int), "LoudnessLogging" :: NullOrUndefined (AudioNormalizationLoudnessLogging), "PeakCalculation" :: NullOrUndefined (AudioNormalizationPeakCalculation), "TargetLkfs" :: NullOrUndefined (Number) }
```

Advanced audio normalization settings.

##### Instances
``` purescript
Newtype AudioNormalizationSettings _
Generic AudioNormalizationSettings _
Show AudioNormalizationSettings
Decode AudioNormalizationSettings
Encode AudioNormalizationSettings
```

#### `newAudioNormalizationSettings`

``` purescript
newAudioNormalizationSettings :: AudioNormalizationSettings
```

Constructs AudioNormalizationSettings from required parameters

#### `newAudioNormalizationSettings'`

``` purescript
newAudioNormalizationSettings' :: ({ "Algorithm" :: NullOrUndefined (AudioNormalizationAlgorithm), "AlgorithmControl" :: NullOrUndefined (AudioNormalizationAlgorithmControl), "CorrectionGateLevel" :: NullOrUndefined (Int), "LoudnessLogging" :: NullOrUndefined (AudioNormalizationLoudnessLogging), "PeakCalculation" :: NullOrUndefined (AudioNormalizationPeakCalculation), "TargetLkfs" :: NullOrUndefined (Number) } -> { "Algorithm" :: NullOrUndefined (AudioNormalizationAlgorithm), "AlgorithmControl" :: NullOrUndefined (AudioNormalizationAlgorithmControl), "CorrectionGateLevel" :: NullOrUndefined (Int), "LoudnessLogging" :: NullOrUndefined (AudioNormalizationLoudnessLogging), "PeakCalculation" :: NullOrUndefined (AudioNormalizationPeakCalculation), "TargetLkfs" :: NullOrUndefined (Number) }) -> AudioNormalizationSettings
```

Constructs AudioNormalizationSettings's fields from required parameters

#### `AudioSelector`

``` purescript
newtype AudioSelector
  = AudioSelector { "DefaultSelection" :: NullOrUndefined (AudioDefaultSelection), "ExternalAudioFileInput" :: NullOrUndefined (String), "LanguageCode" :: NullOrUndefined (LanguageCode), "Offset" :: NullOrUndefined (Int), "Pids" :: NullOrUndefined (ListOf__integer), "ProgramSelection" :: NullOrUndefined (Int), "RemixSettings" :: NullOrUndefined (RemixSettings), "SelectorType" :: NullOrUndefined (AudioSelectorType), "Tracks" :: NullOrUndefined (ListOf__integer) }
```

Selector for Audio

##### Instances
``` purescript
Newtype AudioSelector _
Generic AudioSelector _
Show AudioSelector
Decode AudioSelector
Encode AudioSelector
```

#### `newAudioSelector`

``` purescript
newAudioSelector :: AudioSelector
```

Constructs AudioSelector from required parameters

#### `newAudioSelector'`

``` purescript
newAudioSelector' :: ({ "DefaultSelection" :: NullOrUndefined (AudioDefaultSelection), "ExternalAudioFileInput" :: NullOrUndefined (String), "LanguageCode" :: NullOrUndefined (LanguageCode), "Offset" :: NullOrUndefined (Int), "Pids" :: NullOrUndefined (ListOf__integer), "ProgramSelection" :: NullOrUndefined (Int), "RemixSettings" :: NullOrUndefined (RemixSettings), "SelectorType" :: NullOrUndefined (AudioSelectorType), "Tracks" :: NullOrUndefined (ListOf__integer) } -> { "DefaultSelection" :: NullOrUndefined (AudioDefaultSelection), "ExternalAudioFileInput" :: NullOrUndefined (String), "LanguageCode" :: NullOrUndefined (LanguageCode), "Offset" :: NullOrUndefined (Int), "Pids" :: NullOrUndefined (ListOf__integer), "ProgramSelection" :: NullOrUndefined (Int), "RemixSettings" :: NullOrUndefined (RemixSettings), "SelectorType" :: NullOrUndefined (AudioSelectorType), "Tracks" :: NullOrUndefined (ListOf__integer) }) -> AudioSelector
```

Constructs AudioSelector's fields from required parameters

#### `AudioSelectorGroup`

``` purescript
newtype AudioSelectorGroup
  = AudioSelectorGroup { "AudioSelectorNames" :: NullOrUndefined (ListOf__string) }
```

Group of Audio Selectors

##### Instances
``` purescript
Newtype AudioSelectorGroup _
Generic AudioSelectorGroup _
Show AudioSelectorGroup
Decode AudioSelectorGroup
Encode AudioSelectorGroup
```

#### `newAudioSelectorGroup`

``` purescript
newAudioSelectorGroup :: AudioSelectorGroup
```

Constructs AudioSelectorGroup from required parameters

#### `newAudioSelectorGroup'`

``` purescript
newAudioSelectorGroup' :: ({ "AudioSelectorNames" :: NullOrUndefined (ListOf__string) } -> { "AudioSelectorNames" :: NullOrUndefined (ListOf__string) }) -> AudioSelectorGroup
```

Constructs AudioSelectorGroup's fields from required parameters

#### `AudioSelectorType`

``` purescript
newtype AudioSelectorType
  = AudioSelectorType String
```

Specifies the type of the audio selector.

##### Instances
``` purescript
Newtype AudioSelectorType _
Generic AudioSelectorType _
Show AudioSelectorType
Decode AudioSelectorType
Encode AudioSelectorType
```

#### `AudioTypeControl`

``` purescript
newtype AudioTypeControl
  = AudioTypeControl String
```

When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.

##### Instances
``` purescript
Newtype AudioTypeControl _
Generic AudioTypeControl _
Show AudioTypeControl
Decode AudioTypeControl
Encode AudioTypeControl
```

#### `AvailBlanking`

``` purescript
newtype AvailBlanking
  = AvailBlanking { "AvailBlankingImage" :: NullOrUndefined (String) }
```

Settings for Avail Blanking

##### Instances
``` purescript
Newtype AvailBlanking _
Generic AvailBlanking _
Show AvailBlanking
Decode AvailBlanking
Encode AvailBlanking
```

#### `newAvailBlanking`

``` purescript
newAvailBlanking :: AvailBlanking
```

Constructs AvailBlanking from required parameters

#### `newAvailBlanking'`

``` purescript
newAvailBlanking' :: ({ "AvailBlankingImage" :: NullOrUndefined (String) } -> { "AvailBlankingImage" :: NullOrUndefined (String) }) -> AvailBlanking
```

Constructs AvailBlanking's fields from required parameters

#### `BadRequestException`

``` purescript
newtype BadRequestException
  = BadRequestException { "Message" :: NullOrUndefined (String) }
```

The service can't process your request because of a problem in the request. Please check your request form and syntax.

##### Instances
``` purescript
Newtype BadRequestException _
Generic BadRequestException _
Show BadRequestException
Decode BadRequestException
Encode BadRequestException
```

#### `newBadRequestException`

``` purescript
newBadRequestException :: BadRequestException
```

Constructs BadRequestException from required parameters

#### `newBadRequestException'`

``` purescript
newBadRequestException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> BadRequestException
```

Constructs BadRequestException's fields from required parameters

#### `BurninDestinationSettings`

``` purescript
newtype BurninDestinationSettings
  = BurninDestinationSettings { "Alignment" :: NullOrUndefined (BurninSubtitleAlignment), "BackgroundColor" :: NullOrUndefined (BurninSubtitleBackgroundColor), "BackgroundOpacity" :: NullOrUndefined (Int), "FontColor" :: NullOrUndefined (BurninSubtitleFontColor), "FontOpacity" :: NullOrUndefined (Int), "FontResolution" :: NullOrUndefined (Int), "FontSize" :: NullOrUndefined (Int), "OutlineColor" :: NullOrUndefined (BurninSubtitleOutlineColor), "OutlineSize" :: NullOrUndefined (Int), "ShadowColor" :: NullOrUndefined (BurninSubtitleShadowColor), "ShadowOpacity" :: NullOrUndefined (Int), "ShadowXOffset" :: NullOrUndefined (Int), "ShadowYOffset" :: NullOrUndefined (Int), "TeletextSpacing" :: NullOrUndefined (BurninSubtitleTeletextSpacing), "XPosition" :: NullOrUndefined (Int), "YPosition" :: NullOrUndefined (Int) }
```

Burn-In Destination Settings.

##### Instances
``` purescript
Newtype BurninDestinationSettings _
Generic BurninDestinationSettings _
Show BurninDestinationSettings
Decode BurninDestinationSettings
Encode BurninDestinationSettings
```

#### `newBurninDestinationSettings`

``` purescript
newBurninDestinationSettings :: BurninDestinationSettings
```

Constructs BurninDestinationSettings from required parameters

#### `newBurninDestinationSettings'`

``` purescript
newBurninDestinationSettings' :: ({ "Alignment" :: NullOrUndefined (BurninSubtitleAlignment), "BackgroundColor" :: NullOrUndefined (BurninSubtitleBackgroundColor), "BackgroundOpacity" :: NullOrUndefined (Int), "FontColor" :: NullOrUndefined (BurninSubtitleFontColor), "FontOpacity" :: NullOrUndefined (Int), "FontResolution" :: NullOrUndefined (Int), "FontSize" :: NullOrUndefined (Int), "OutlineColor" :: NullOrUndefined (BurninSubtitleOutlineColor), "OutlineSize" :: NullOrUndefined (Int), "ShadowColor" :: NullOrUndefined (BurninSubtitleShadowColor), "ShadowOpacity" :: NullOrUndefined (Int), "ShadowXOffset" :: NullOrUndefined (Int), "ShadowYOffset" :: NullOrUndefined (Int), "TeletextSpacing" :: NullOrUndefined (BurninSubtitleTeletextSpacing), "XPosition" :: NullOrUndefined (Int), "YPosition" :: NullOrUndefined (Int) } -> { "Alignment" :: NullOrUndefined (BurninSubtitleAlignment), "BackgroundColor" :: NullOrUndefined (BurninSubtitleBackgroundColor), "BackgroundOpacity" :: NullOrUndefined (Int), "FontColor" :: NullOrUndefined (BurninSubtitleFontColor), "FontOpacity" :: NullOrUndefined (Int), "FontResolution" :: NullOrUndefined (Int), "FontSize" :: NullOrUndefined (Int), "OutlineColor" :: NullOrUndefined (BurninSubtitleOutlineColor), "OutlineSize" :: NullOrUndefined (Int), "ShadowColor" :: NullOrUndefined (BurninSubtitleShadowColor), "ShadowOpacity" :: NullOrUndefined (Int), "ShadowXOffset" :: NullOrUndefined (Int), "ShadowYOffset" :: NullOrUndefined (Int), "TeletextSpacing" :: NullOrUndefined (BurninSubtitleTeletextSpacing), "XPosition" :: NullOrUndefined (Int), "YPosition" :: NullOrUndefined (Int) }) -> BurninDestinationSettings
```

Constructs BurninDestinationSettings's fields from required parameters

#### `BurninSubtitleAlignment`

``` purescript
newtype BurninSubtitleAlignment
  = BurninSubtitleAlignment String
```

If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype BurninSubtitleAlignment _
Generic BurninSubtitleAlignment _
Show BurninSubtitleAlignment
Decode BurninSubtitleAlignment
Encode BurninSubtitleAlignment
```

#### `BurninSubtitleBackgroundColor`

``` purescript
newtype BurninSubtitleBackgroundColor
  = BurninSubtitleBackgroundColor String
```

Specifies the color of the rectangle behind the captions.
All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype BurninSubtitleBackgroundColor _
Generic BurninSubtitleBackgroundColor _
Show BurninSubtitleBackgroundColor
Decode BurninSubtitleBackgroundColor
Encode BurninSubtitleBackgroundColor
```

#### `BurninSubtitleFontColor`

``` purescript
newtype BurninSubtitleFontColor
  = BurninSubtitleFontColor String
```

Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype BurninSubtitleFontColor _
Generic BurninSubtitleFontColor _
Show BurninSubtitleFontColor
Decode BurninSubtitleFontColor
Encode BurninSubtitleFontColor
```

#### `BurninSubtitleOutlineColor`

``` purescript
newtype BurninSubtitleOutlineColor
  = BurninSubtitleOutlineColor String
```

Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype BurninSubtitleOutlineColor _
Generic BurninSubtitleOutlineColor _
Show BurninSubtitleOutlineColor
Decode BurninSubtitleOutlineColor
Encode BurninSubtitleOutlineColor
```

#### `BurninSubtitleShadowColor`

``` purescript
newtype BurninSubtitleShadowColor
  = BurninSubtitleShadowColor String
```

Specifies the color of the shadow cast by the captions.
All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype BurninSubtitleShadowColor _
Generic BurninSubtitleShadowColor _
Show BurninSubtitleShadowColor
Decode BurninSubtitleShadowColor
Encode BurninSubtitleShadowColor
```

#### `BurninSubtitleTeletextSpacing`

``` purescript
newtype BurninSubtitleTeletextSpacing
  = BurninSubtitleTeletextSpacing String
```

Controls whether a fixed grid size or proportional font spacing will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.

##### Instances
``` purescript
Newtype BurninSubtitleTeletextSpacing _
Generic BurninSubtitleTeletextSpacing _
Show BurninSubtitleTeletextSpacing
Decode BurninSubtitleTeletextSpacing
Encode BurninSubtitleTeletextSpacing
```

#### `CancelJobRequest`

``` purescript
newtype CancelJobRequest
  = CancelJobRequest { "Id" :: String }
```

##### Instances
``` purescript
Newtype CancelJobRequest _
Generic CancelJobRequest _
Show CancelJobRequest
Decode CancelJobRequest
Encode CancelJobRequest
```

#### `newCancelJobRequest`

``` purescript
newCancelJobRequest :: String -> CancelJobRequest
```

Constructs CancelJobRequest from required parameters

#### `newCancelJobRequest'`

``` purescript
newCancelJobRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> CancelJobRequest
```

Constructs CancelJobRequest's fields from required parameters

#### `CancelJobResponse`

``` purescript
newtype CancelJobResponse
  = CancelJobResponse NoArguments
```

##### Instances
``` purescript
Newtype CancelJobResponse _
Generic CancelJobResponse _
Show CancelJobResponse
Decode CancelJobResponse
Encode CancelJobResponse
```

#### `CaptionDescription`

``` purescript
newtype CaptionDescription
  = CaptionDescription { "CaptionSelectorName" :: NullOrUndefined (String), "DestinationSettings" :: NullOrUndefined (CaptionDestinationSettings), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageDescription" :: NullOrUndefined (String) }
```

Description of Caption output

##### Instances
``` purescript
Newtype CaptionDescription _
Generic CaptionDescription _
Show CaptionDescription
Decode CaptionDescription
Encode CaptionDescription
```

#### `newCaptionDescription`

``` purescript
newCaptionDescription :: CaptionDescription
```

Constructs CaptionDescription from required parameters

#### `newCaptionDescription'`

``` purescript
newCaptionDescription' :: ({ "CaptionSelectorName" :: NullOrUndefined (String), "DestinationSettings" :: NullOrUndefined (CaptionDestinationSettings), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageDescription" :: NullOrUndefined (String) } -> { "CaptionSelectorName" :: NullOrUndefined (String), "DestinationSettings" :: NullOrUndefined (CaptionDestinationSettings), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageDescription" :: NullOrUndefined (String) }) -> CaptionDescription
```

Constructs CaptionDescription's fields from required parameters

#### `CaptionDescriptionPreset`

``` purescript
newtype CaptionDescriptionPreset
  = CaptionDescriptionPreset { "DestinationSettings" :: NullOrUndefined (CaptionDestinationSettings), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageDescription" :: NullOrUndefined (String) }
```

Caption Description for preset

##### Instances
``` purescript
Newtype CaptionDescriptionPreset _
Generic CaptionDescriptionPreset _
Show CaptionDescriptionPreset
Decode CaptionDescriptionPreset
Encode CaptionDescriptionPreset
```

#### `newCaptionDescriptionPreset`

``` purescript
newCaptionDescriptionPreset :: CaptionDescriptionPreset
```

Constructs CaptionDescriptionPreset from required parameters

#### `newCaptionDescriptionPreset'`

``` purescript
newCaptionDescriptionPreset' :: ({ "DestinationSettings" :: NullOrUndefined (CaptionDestinationSettings), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageDescription" :: NullOrUndefined (String) } -> { "DestinationSettings" :: NullOrUndefined (CaptionDestinationSettings), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageDescription" :: NullOrUndefined (String) }) -> CaptionDescriptionPreset
```

Constructs CaptionDescriptionPreset's fields from required parameters

#### `CaptionDestinationSettings`

``` purescript
newtype CaptionDestinationSettings
  = CaptionDestinationSettings { "BurninDestinationSettings" :: NullOrUndefined (BurninDestinationSettings), "DestinationType" :: NullOrUndefined (CaptionDestinationType), "DvbSubDestinationSettings" :: NullOrUndefined (DvbSubDestinationSettings), "SccDestinationSettings" :: NullOrUndefined (SccDestinationSettings), "TeletextDestinationSettings" :: NullOrUndefined (TeletextDestinationSettings), "TtmlDestinationSettings" :: NullOrUndefined (TtmlDestinationSettings) }
```

Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext.

##### Instances
``` purescript
Newtype CaptionDestinationSettings _
Generic CaptionDestinationSettings _
Show CaptionDestinationSettings
Decode CaptionDestinationSettings
Encode CaptionDestinationSettings
```

#### `newCaptionDestinationSettings`

``` purescript
newCaptionDestinationSettings :: CaptionDestinationSettings
```

Constructs CaptionDestinationSettings from required parameters

#### `newCaptionDestinationSettings'`

``` purescript
newCaptionDestinationSettings' :: ({ "BurninDestinationSettings" :: NullOrUndefined (BurninDestinationSettings), "DestinationType" :: NullOrUndefined (CaptionDestinationType), "DvbSubDestinationSettings" :: NullOrUndefined (DvbSubDestinationSettings), "SccDestinationSettings" :: NullOrUndefined (SccDestinationSettings), "TeletextDestinationSettings" :: NullOrUndefined (TeletextDestinationSettings), "TtmlDestinationSettings" :: NullOrUndefined (TtmlDestinationSettings) } -> { "BurninDestinationSettings" :: NullOrUndefined (BurninDestinationSettings), "DestinationType" :: NullOrUndefined (CaptionDestinationType), "DvbSubDestinationSettings" :: NullOrUndefined (DvbSubDestinationSettings), "SccDestinationSettings" :: NullOrUndefined (SccDestinationSettings), "TeletextDestinationSettings" :: NullOrUndefined (TeletextDestinationSettings), "TtmlDestinationSettings" :: NullOrUndefined (TtmlDestinationSettings) }) -> CaptionDestinationSettings
```

Constructs CaptionDestinationSettings's fields from required parameters

#### `CaptionDestinationType`

``` purescript
newtype CaptionDestinationType
  = CaptionDestinationType String
```

Type of Caption output, including Burn-In, Embedded, SCC, SRT, TTML, WebVTT, DVB-Sub, Teletext.

##### Instances
``` purescript
Newtype CaptionDestinationType _
Generic CaptionDestinationType _
Show CaptionDestinationType
Decode CaptionDestinationType
Encode CaptionDestinationType
```

#### `CaptionSelector`

``` purescript
newtype CaptionSelector
  = CaptionSelector { "LanguageCode" :: NullOrUndefined (LanguageCode), "SourceSettings" :: NullOrUndefined (CaptionSourceSettings) }
```

Caption inputs to be mapped to caption outputs.

##### Instances
``` purescript
Newtype CaptionSelector _
Generic CaptionSelector _
Show CaptionSelector
Decode CaptionSelector
Encode CaptionSelector
```

#### `newCaptionSelector`

``` purescript
newCaptionSelector :: CaptionSelector
```

Constructs CaptionSelector from required parameters

#### `newCaptionSelector'`

``` purescript
newCaptionSelector' :: ({ "LanguageCode" :: NullOrUndefined (LanguageCode), "SourceSettings" :: NullOrUndefined (CaptionSourceSettings) } -> { "LanguageCode" :: NullOrUndefined (LanguageCode), "SourceSettings" :: NullOrUndefined (CaptionSourceSettings) }) -> CaptionSelector
```

Constructs CaptionSelector's fields from required parameters

#### `CaptionSourceSettings`

``` purescript
newtype CaptionSourceSettings
  = CaptionSourceSettings { "AncillarySourceSettings" :: NullOrUndefined (AncillarySourceSettings), "DvbSubSourceSettings" :: NullOrUndefined (DvbSubSourceSettings), "EmbeddedSourceSettings" :: NullOrUndefined (EmbeddedSourceSettings), "FileSourceSettings" :: NullOrUndefined (FileSourceSettings), "SourceType" :: NullOrUndefined (CaptionSourceType), "TeletextSourceSettings" :: NullOrUndefined (TeletextSourceSettings) }
```

Source settings (SourceSettings) contains the group of settings for captions in the input.

##### Instances
``` purescript
Newtype CaptionSourceSettings _
Generic CaptionSourceSettings _
Show CaptionSourceSettings
Decode CaptionSourceSettings
Encode CaptionSourceSettings
```

#### `newCaptionSourceSettings`

``` purescript
newCaptionSourceSettings :: CaptionSourceSettings
```

Constructs CaptionSourceSettings from required parameters

#### `newCaptionSourceSettings'`

``` purescript
newCaptionSourceSettings' :: ({ "AncillarySourceSettings" :: NullOrUndefined (AncillarySourceSettings), "DvbSubSourceSettings" :: NullOrUndefined (DvbSubSourceSettings), "EmbeddedSourceSettings" :: NullOrUndefined (EmbeddedSourceSettings), "FileSourceSettings" :: NullOrUndefined (FileSourceSettings), "SourceType" :: NullOrUndefined (CaptionSourceType), "TeletextSourceSettings" :: NullOrUndefined (TeletextSourceSettings) } -> { "AncillarySourceSettings" :: NullOrUndefined (AncillarySourceSettings), "DvbSubSourceSettings" :: NullOrUndefined (DvbSubSourceSettings), "EmbeddedSourceSettings" :: NullOrUndefined (EmbeddedSourceSettings), "FileSourceSettings" :: NullOrUndefined (FileSourceSettings), "SourceType" :: NullOrUndefined (CaptionSourceType), "TeletextSourceSettings" :: NullOrUndefined (TeletextSourceSettings) }) -> CaptionSourceSettings
```

Constructs CaptionSourceSettings's fields from required parameters

#### `CaptionSourceType`

``` purescript
newtype CaptionSourceType
  = CaptionSourceType String
```

Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format.

##### Instances
``` purescript
Newtype CaptionSourceType _
Generic CaptionSourceType _
Show CaptionSourceType
Decode CaptionSourceType
Encode CaptionSourceType
```

#### `ChannelMapping`

``` purescript
newtype ChannelMapping
  = ChannelMapping { "OutputChannels" :: NullOrUndefined (ListOfOutputChannelMapping) }
```

Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel. Units are in dB. Acceptable values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification).

##### Instances
``` purescript
Newtype ChannelMapping _
Generic ChannelMapping _
Show ChannelMapping
Decode ChannelMapping
Encode ChannelMapping
```

#### `newChannelMapping`

``` purescript
newChannelMapping :: ChannelMapping
```

Constructs ChannelMapping from required parameters

#### `newChannelMapping'`

``` purescript
newChannelMapping' :: ({ "OutputChannels" :: NullOrUndefined (ListOfOutputChannelMapping) } -> { "OutputChannels" :: NullOrUndefined (ListOfOutputChannelMapping) }) -> ChannelMapping
```

Constructs ChannelMapping's fields from required parameters

#### `ColorCorrector`

``` purescript
newtype ColorCorrector
  = ColorCorrector { "Brightness" :: NullOrUndefined (Int), "ColorSpaceConversion" :: NullOrUndefined (ColorSpaceConversion), "Contrast" :: NullOrUndefined (Int), "Hdr10Metadata" :: NullOrUndefined (Hdr10Metadata), "Hue" :: NullOrUndefined (Int), "Saturation" :: NullOrUndefined (Int) }
```

Settings for color correction.

##### Instances
``` purescript
Newtype ColorCorrector _
Generic ColorCorrector _
Show ColorCorrector
Decode ColorCorrector
Encode ColorCorrector
```

#### `newColorCorrector`

``` purescript
newColorCorrector :: ColorCorrector
```

Constructs ColorCorrector from required parameters

#### `newColorCorrector'`

``` purescript
newColorCorrector' :: ({ "Brightness" :: NullOrUndefined (Int), "ColorSpaceConversion" :: NullOrUndefined (ColorSpaceConversion), "Contrast" :: NullOrUndefined (Int), "Hdr10Metadata" :: NullOrUndefined (Hdr10Metadata), "Hue" :: NullOrUndefined (Int), "Saturation" :: NullOrUndefined (Int) } -> { "Brightness" :: NullOrUndefined (Int), "ColorSpaceConversion" :: NullOrUndefined (ColorSpaceConversion), "Contrast" :: NullOrUndefined (Int), "Hdr10Metadata" :: NullOrUndefined (Hdr10Metadata), "Hue" :: NullOrUndefined (Int), "Saturation" :: NullOrUndefined (Int) }) -> ColorCorrector
```

Constructs ColorCorrector's fields from required parameters

#### `ColorMetadata`

``` purescript
newtype ColorMetadata
  = ColorMetadata String
```

Enable Insert color metadata (ColorMetadata) to include color metadata in this output. This setting is enabled by default.

##### Instances
``` purescript
Newtype ColorMetadata _
Generic ColorMetadata _
Show ColorMetadata
Decode ColorMetadata
Encode ColorMetadata
```

#### `ColorSpace`

``` purescript
newtype ColorSpace
  = ColorSpace String
```

Specifies the colorspace of an input. This setting works in tandem with "Color Corrector":#color_corrector > color_space_conversion to determine if any conversion will be performed.

##### Instances
``` purescript
Newtype ColorSpace _
Generic ColorSpace _
Show ColorSpace
Decode ColorSpace
Encode ColorSpace
```

#### `ColorSpaceConversion`

``` purescript
newtype ColorSpaceConversion
  = ColorSpaceConversion String
```

Determines if colorspace conversion will be performed. If set to _None_, no conversion will be performed. If _Force 601_ or _Force 709_ are selected, conversion will be performed for inputs with differing colorspaces. An input's colorspace can be specified explicitly in the "Video Selector":#inputs-video_selector if necessary.

##### Instances
``` purescript
Newtype ColorSpaceConversion _
Generic ColorSpaceConversion _
Show ColorSpaceConversion
Decode ColorSpaceConversion
Encode ColorSpaceConversion
```

#### `ColorSpaceUsage`

``` purescript
newtype ColorSpaceUsage
  = ColorSpaceUsage String
```

There are two sources for color metadata, the input file and the job configuration. This enum controls which takes precedence. FORCE: System will use color metadata supplied by user, if any. If the user does not supply color metadata the system will use data from the source. FALLBACK: System will use color metadata from the source. If source has no color metadata, the system will use user-supplied color metadata values if available.

##### Instances
``` purescript
Newtype ColorSpaceUsage _
Generic ColorSpaceUsage _
Show ColorSpaceUsage
Decode ColorSpaceUsage
Encode ColorSpaceUsage
```

#### `ConflictException`

``` purescript
newtype ConflictException
  = ConflictException { "Message" :: NullOrUndefined (String) }
```

The service could not complete your request because there is a conflict with the current state of the resource.

##### Instances
``` purescript
Newtype ConflictException _
Generic ConflictException _
Show ConflictException
Decode ConflictException
Encode ConflictException
```

#### `newConflictException`

``` purescript
newConflictException :: ConflictException
```

Constructs ConflictException from required parameters

#### `newConflictException'`

``` purescript
newConflictException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> ConflictException
```

Constructs ConflictException's fields from required parameters

#### `ContainerSettings`

``` purescript
newtype ContainerSettings
  = ContainerSettings { "Container" :: NullOrUndefined (ContainerType), "F4vSettings" :: NullOrUndefined (F4vSettings), "M2tsSettings" :: NullOrUndefined (M2tsSettings), "M3u8Settings" :: NullOrUndefined (M3u8Settings), "MovSettings" :: NullOrUndefined (MovSettings), "Mp4Settings" :: NullOrUndefined (Mp4Settings) }
```

Container specific settings.

##### Instances
``` purescript
Newtype ContainerSettings _
Generic ContainerSettings _
Show ContainerSettings
Decode ContainerSettings
Encode ContainerSettings
```

#### `newContainerSettings`

``` purescript
newContainerSettings :: ContainerSettings
```

Constructs ContainerSettings from required parameters

#### `newContainerSettings'`

``` purescript
newContainerSettings' :: ({ "Container" :: NullOrUndefined (ContainerType), "F4vSettings" :: NullOrUndefined (F4vSettings), "M2tsSettings" :: NullOrUndefined (M2tsSettings), "M3u8Settings" :: NullOrUndefined (M3u8Settings), "MovSettings" :: NullOrUndefined (MovSettings), "Mp4Settings" :: NullOrUndefined (Mp4Settings) } -> { "Container" :: NullOrUndefined (ContainerType), "F4vSettings" :: NullOrUndefined (F4vSettings), "M2tsSettings" :: NullOrUndefined (M2tsSettings), "M3u8Settings" :: NullOrUndefined (M3u8Settings), "MovSettings" :: NullOrUndefined (MovSettings), "Mp4Settings" :: NullOrUndefined (Mp4Settings) }) -> ContainerSettings
```

Constructs ContainerSettings's fields from required parameters

#### `ContainerType`

``` purescript
newtype ContainerType
  = ContainerType String
```

Container for this output. Some containers require a container settings object. If not specified, the default object will be created.

##### Instances
``` purescript
Newtype ContainerType _
Generic ContainerType _
Show ContainerType
Decode ContainerType
Encode ContainerType
```

#### `CreateJobRequest`

``` purescript
newtype CreateJobRequest
  = CreateJobRequest { "ClientRequestToken" :: NullOrUndefined (String), "JobTemplate" :: NullOrUndefined (String), "Queue" :: NullOrUndefined (String), "Role" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobSettings), "UserMetadata" :: NullOrUndefined (MapOf__string) }
```

##### Instances
``` purescript
Newtype CreateJobRequest _
Generic CreateJobRequest _
Show CreateJobRequest
Decode CreateJobRequest
Encode CreateJobRequest
```

#### `newCreateJobRequest`

``` purescript
newCreateJobRequest :: CreateJobRequest
```

Constructs CreateJobRequest from required parameters

#### `newCreateJobRequest'`

``` purescript
newCreateJobRequest' :: ({ "ClientRequestToken" :: NullOrUndefined (String), "JobTemplate" :: NullOrUndefined (String), "Queue" :: NullOrUndefined (String), "Role" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobSettings), "UserMetadata" :: NullOrUndefined (MapOf__string) } -> { "ClientRequestToken" :: NullOrUndefined (String), "JobTemplate" :: NullOrUndefined (String), "Queue" :: NullOrUndefined (String), "Role" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobSettings), "UserMetadata" :: NullOrUndefined (MapOf__string) }) -> CreateJobRequest
```

Constructs CreateJobRequest's fields from required parameters

#### `CreateJobResponse`

``` purescript
newtype CreateJobResponse
  = CreateJobResponse { "Job" :: NullOrUndefined (Job) }
```

##### Instances
``` purescript
Newtype CreateJobResponse _
Generic CreateJobResponse _
Show CreateJobResponse
Decode CreateJobResponse
Encode CreateJobResponse
```

#### `newCreateJobResponse`

``` purescript
newCreateJobResponse :: CreateJobResponse
```

Constructs CreateJobResponse from required parameters

#### `newCreateJobResponse'`

``` purescript
newCreateJobResponse' :: ({ "Job" :: NullOrUndefined (Job) } -> { "Job" :: NullOrUndefined (Job) }) -> CreateJobResponse
```

Constructs CreateJobResponse's fields from required parameters

#### `CreateJobTemplateRequest`

``` purescript
newtype CreateJobTemplateRequest
  = CreateJobTemplateRequest { "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Queue" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobTemplateSettings) }
```

##### Instances
``` purescript
Newtype CreateJobTemplateRequest _
Generic CreateJobTemplateRequest _
Show CreateJobTemplateRequest
Decode CreateJobTemplateRequest
Encode CreateJobTemplateRequest
```

#### `newCreateJobTemplateRequest`

``` purescript
newCreateJobTemplateRequest :: CreateJobTemplateRequest
```

Constructs CreateJobTemplateRequest from required parameters

#### `newCreateJobTemplateRequest'`

``` purescript
newCreateJobTemplateRequest' :: ({ "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Queue" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobTemplateSettings) } -> { "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Queue" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobTemplateSettings) }) -> CreateJobTemplateRequest
```

Constructs CreateJobTemplateRequest's fields from required parameters

#### `CreateJobTemplateResponse`

``` purescript
newtype CreateJobTemplateResponse
  = CreateJobTemplateResponse { "JobTemplate" :: NullOrUndefined (JobTemplate) }
```

##### Instances
``` purescript
Newtype CreateJobTemplateResponse _
Generic CreateJobTemplateResponse _
Show CreateJobTemplateResponse
Decode CreateJobTemplateResponse
Encode CreateJobTemplateResponse
```

#### `newCreateJobTemplateResponse`

``` purescript
newCreateJobTemplateResponse :: CreateJobTemplateResponse
```

Constructs CreateJobTemplateResponse from required parameters

#### `newCreateJobTemplateResponse'`

``` purescript
newCreateJobTemplateResponse' :: ({ "JobTemplate" :: NullOrUndefined (JobTemplate) } -> { "JobTemplate" :: NullOrUndefined (JobTemplate) }) -> CreateJobTemplateResponse
```

Constructs CreateJobTemplateResponse's fields from required parameters

#### `CreatePresetRequest`

``` purescript
newtype CreatePresetRequest
  = CreatePresetRequest { "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (PresetSettings) }
```

##### Instances
``` purescript
Newtype CreatePresetRequest _
Generic CreatePresetRequest _
Show CreatePresetRequest
Decode CreatePresetRequest
Encode CreatePresetRequest
```

#### `newCreatePresetRequest`

``` purescript
newCreatePresetRequest :: CreatePresetRequest
```

Constructs CreatePresetRequest from required parameters

#### `newCreatePresetRequest'`

``` purescript
newCreatePresetRequest' :: ({ "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (PresetSettings) } -> { "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (PresetSettings) }) -> CreatePresetRequest
```

Constructs CreatePresetRequest's fields from required parameters

#### `CreatePresetResponse`

``` purescript
newtype CreatePresetResponse
  = CreatePresetResponse { "Preset" :: NullOrUndefined (Preset) }
```

##### Instances
``` purescript
Newtype CreatePresetResponse _
Generic CreatePresetResponse _
Show CreatePresetResponse
Decode CreatePresetResponse
Encode CreatePresetResponse
```

#### `newCreatePresetResponse`

``` purescript
newCreatePresetResponse :: CreatePresetResponse
```

Constructs CreatePresetResponse from required parameters

#### `newCreatePresetResponse'`

``` purescript
newCreatePresetResponse' :: ({ "Preset" :: NullOrUndefined (Preset) } -> { "Preset" :: NullOrUndefined (Preset) }) -> CreatePresetResponse
```

Constructs CreatePresetResponse's fields from required parameters

#### `CreateQueueRequest`

``` purescript
newtype CreateQueueRequest
  = CreateQueueRequest { "Description" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateQueueRequest _
Generic CreateQueueRequest _
Show CreateQueueRequest
Decode CreateQueueRequest
Encode CreateQueueRequest
```

#### `newCreateQueueRequest`

``` purescript
newCreateQueueRequest :: CreateQueueRequest
```

Constructs CreateQueueRequest from required parameters

#### `newCreateQueueRequest'`

``` purescript
newCreateQueueRequest' :: ({ "Description" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String) } -> { "Description" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String) }) -> CreateQueueRequest
```

Constructs CreateQueueRequest's fields from required parameters

#### `CreateQueueResponse`

``` purescript
newtype CreateQueueResponse
  = CreateQueueResponse { "Queue" :: NullOrUndefined (Queue) }
```

##### Instances
``` purescript
Newtype CreateQueueResponse _
Generic CreateQueueResponse _
Show CreateQueueResponse
Decode CreateQueueResponse
Encode CreateQueueResponse
```

#### `newCreateQueueResponse`

``` purescript
newCreateQueueResponse :: CreateQueueResponse
```

Constructs CreateQueueResponse from required parameters

#### `newCreateQueueResponse'`

``` purescript
newCreateQueueResponse' :: ({ "Queue" :: NullOrUndefined (Queue) } -> { "Queue" :: NullOrUndefined (Queue) }) -> CreateQueueResponse
```

Constructs CreateQueueResponse's fields from required parameters

#### `DashIsoEncryptionSettings`

``` purescript
newtype DashIsoEncryptionSettings
  = DashIsoEncryptionSettings { "SpekeKeyProvider" :: NullOrUndefined (SpekeKeyProvider) }
```

Specifies DRM settings for DASH outputs.

##### Instances
``` purescript
Newtype DashIsoEncryptionSettings _
Generic DashIsoEncryptionSettings _
Show DashIsoEncryptionSettings
Decode DashIsoEncryptionSettings
Encode DashIsoEncryptionSettings
```

#### `newDashIsoEncryptionSettings`

``` purescript
newDashIsoEncryptionSettings :: DashIsoEncryptionSettings
```

Constructs DashIsoEncryptionSettings from required parameters

#### `newDashIsoEncryptionSettings'`

``` purescript
newDashIsoEncryptionSettings' :: ({ "SpekeKeyProvider" :: NullOrUndefined (SpekeKeyProvider) } -> { "SpekeKeyProvider" :: NullOrUndefined (SpekeKeyProvider) }) -> DashIsoEncryptionSettings
```

Constructs DashIsoEncryptionSettings's fields from required parameters

#### `DashIsoGroupSettings`

``` purescript
newtype DashIsoGroupSettings
  = DashIsoGroupSettings { "BaseUrl" :: NullOrUndefined (String), "Destination" :: NullOrUndefined (String), "Encryption" :: NullOrUndefined (DashIsoEncryptionSettings), "FragmentLength" :: NullOrUndefined (Int), "HbbtvCompliance" :: NullOrUndefined (DashIsoHbbtvCompliance), "MinBufferTime" :: NullOrUndefined (Int), "SegmentControl" :: NullOrUndefined (DashIsoSegmentControl), "SegmentLength" :: NullOrUndefined (Int) }
```

Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.

##### Instances
``` purescript
Newtype DashIsoGroupSettings _
Generic DashIsoGroupSettings _
Show DashIsoGroupSettings
Decode DashIsoGroupSettings
Encode DashIsoGroupSettings
```

#### `newDashIsoGroupSettings`

``` purescript
newDashIsoGroupSettings :: DashIsoGroupSettings
```

Constructs DashIsoGroupSettings from required parameters

#### `newDashIsoGroupSettings'`

``` purescript
newDashIsoGroupSettings' :: ({ "BaseUrl" :: NullOrUndefined (String), "Destination" :: NullOrUndefined (String), "Encryption" :: NullOrUndefined (DashIsoEncryptionSettings), "FragmentLength" :: NullOrUndefined (Int), "HbbtvCompliance" :: NullOrUndefined (DashIsoHbbtvCompliance), "MinBufferTime" :: NullOrUndefined (Int), "SegmentControl" :: NullOrUndefined (DashIsoSegmentControl), "SegmentLength" :: NullOrUndefined (Int) } -> { "BaseUrl" :: NullOrUndefined (String), "Destination" :: NullOrUndefined (String), "Encryption" :: NullOrUndefined (DashIsoEncryptionSettings), "FragmentLength" :: NullOrUndefined (Int), "HbbtvCompliance" :: NullOrUndefined (DashIsoHbbtvCompliance), "MinBufferTime" :: NullOrUndefined (Int), "SegmentControl" :: NullOrUndefined (DashIsoSegmentControl), "SegmentLength" :: NullOrUndefined (Int) }) -> DashIsoGroupSettings
```

Constructs DashIsoGroupSettings's fields from required parameters

#### `DashIsoHbbtvCompliance`

``` purescript
newtype DashIsoHbbtvCompliance
  = DashIsoHbbtvCompliance String
```

Supports HbbTV specification as indicated

##### Instances
``` purescript
Newtype DashIsoHbbtvCompliance _
Generic DashIsoHbbtvCompliance _
Show DashIsoHbbtvCompliance
Decode DashIsoHbbtvCompliance
Encode DashIsoHbbtvCompliance
```

#### `DashIsoSegmentControl`

``` purescript
newtype DashIsoSegmentControl
  = DashIsoSegmentControl String
```

When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.

##### Instances
``` purescript
Newtype DashIsoSegmentControl _
Generic DashIsoSegmentControl _
Show DashIsoSegmentControl
Decode DashIsoSegmentControl
Encode DashIsoSegmentControl
```

#### `DeinterlaceAlgorithm`

``` purescript
newtype DeinterlaceAlgorithm
  = DeinterlaceAlgorithm String
```

Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate (INTERPOLATE) produces sharper pictures, while blend (BLEND) produces smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your source file includes a ticker, such as a scrolling headline at the bottom of the frame.

##### Instances
``` purescript
Newtype DeinterlaceAlgorithm _
Generic DeinterlaceAlgorithm _
Show DeinterlaceAlgorithm
Decode DeinterlaceAlgorithm
Encode DeinterlaceAlgorithm
```

#### `Deinterlacer`

``` purescript
newtype Deinterlacer
  = Deinterlacer { "Algorithm" :: NullOrUndefined (DeinterlaceAlgorithm), "Control" :: NullOrUndefined (DeinterlacerControl), "Mode" :: NullOrUndefined (DeinterlacerMode) }
```

Settings for deinterlacer

##### Instances
``` purescript
Newtype Deinterlacer _
Generic Deinterlacer _
Show Deinterlacer
Decode Deinterlacer
Encode Deinterlacer
```

#### `newDeinterlacer`

``` purescript
newDeinterlacer :: Deinterlacer
```

Constructs Deinterlacer from required parameters

#### `newDeinterlacer'`

``` purescript
newDeinterlacer' :: ({ "Algorithm" :: NullOrUndefined (DeinterlaceAlgorithm), "Control" :: NullOrUndefined (DeinterlacerControl), "Mode" :: NullOrUndefined (DeinterlacerMode) } -> { "Algorithm" :: NullOrUndefined (DeinterlaceAlgorithm), "Control" :: NullOrUndefined (DeinterlacerControl), "Mode" :: NullOrUndefined (DeinterlacerMode) }) -> Deinterlacer
```

Constructs Deinterlacer's fields from required parameters

#### `DeinterlacerControl`

``` purescript
newtype DeinterlacerControl
  = DeinterlacerControl String
```

- When set to NORMAL (default), the deinterlacer does not convert frames that are tagged  in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is  a good chance that the metadata has tagged frames as progressive when they are not  progressive. Do not turn on otherwise; processing frames that are already progressive  into progressive will probably result in lower quality video.

##### Instances
``` purescript
Newtype DeinterlacerControl _
Generic DeinterlacerControl _
Show DeinterlacerControl
Decode DeinterlacerControl
Encode DeinterlacerControl
```

#### `DeinterlacerMode`

``` purescript
newtype DeinterlacerMode
  = DeinterlacerMode String
```

Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive.

##### Instances
``` purescript
Newtype DeinterlacerMode _
Generic DeinterlacerMode _
Show DeinterlacerMode
Decode DeinterlacerMode
Encode DeinterlacerMode
```

#### `DeleteJobTemplateRequest`

``` purescript
newtype DeleteJobTemplateRequest
  = DeleteJobTemplateRequest { "Name" :: String }
```

##### Instances
``` purescript
Newtype DeleteJobTemplateRequest _
Generic DeleteJobTemplateRequest _
Show DeleteJobTemplateRequest
Decode DeleteJobTemplateRequest
Encode DeleteJobTemplateRequest
```

#### `newDeleteJobTemplateRequest`

``` purescript
newDeleteJobTemplateRequest :: String -> DeleteJobTemplateRequest
```

Constructs DeleteJobTemplateRequest from required parameters

#### `newDeleteJobTemplateRequest'`

``` purescript
newDeleteJobTemplateRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> DeleteJobTemplateRequest
```

Constructs DeleteJobTemplateRequest's fields from required parameters

#### `DeleteJobTemplateResponse`

``` purescript
newtype DeleteJobTemplateResponse
  = DeleteJobTemplateResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteJobTemplateResponse _
Generic DeleteJobTemplateResponse _
Show DeleteJobTemplateResponse
Decode DeleteJobTemplateResponse
Encode DeleteJobTemplateResponse
```

#### `DeletePresetRequest`

``` purescript
newtype DeletePresetRequest
  = DeletePresetRequest { "Name" :: String }
```

##### Instances
``` purescript
Newtype DeletePresetRequest _
Generic DeletePresetRequest _
Show DeletePresetRequest
Decode DeletePresetRequest
Encode DeletePresetRequest
```

#### `newDeletePresetRequest`

``` purescript
newDeletePresetRequest :: String -> DeletePresetRequest
```

Constructs DeletePresetRequest from required parameters

#### `newDeletePresetRequest'`

``` purescript
newDeletePresetRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> DeletePresetRequest
```

Constructs DeletePresetRequest's fields from required parameters

#### `DeletePresetResponse`

``` purescript
newtype DeletePresetResponse
  = DeletePresetResponse NoArguments
```

##### Instances
``` purescript
Newtype DeletePresetResponse _
Generic DeletePresetResponse _
Show DeletePresetResponse
Decode DeletePresetResponse
Encode DeletePresetResponse
```

#### `DeleteQueueRequest`

``` purescript
newtype DeleteQueueRequest
  = DeleteQueueRequest { "Name" :: String }
```

##### Instances
``` purescript
Newtype DeleteQueueRequest _
Generic DeleteQueueRequest _
Show DeleteQueueRequest
Decode DeleteQueueRequest
Encode DeleteQueueRequest
```

#### `newDeleteQueueRequest`

``` purescript
newDeleteQueueRequest :: String -> DeleteQueueRequest
```

Constructs DeleteQueueRequest from required parameters

#### `newDeleteQueueRequest'`

``` purescript
newDeleteQueueRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> DeleteQueueRequest
```

Constructs DeleteQueueRequest's fields from required parameters

#### `DeleteQueueResponse`

``` purescript
newtype DeleteQueueResponse
  = DeleteQueueResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteQueueResponse _
Generic DeleteQueueResponse _
Show DeleteQueueResponse
Decode DeleteQueueResponse
Encode DeleteQueueResponse
```

#### `DescribeEndpointsRequest`

``` purescript
newtype DescribeEndpointsRequest
  = DescribeEndpointsRequest { "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String) }
```

DescribeEndpointsRequest

##### Instances
``` purescript
Newtype DescribeEndpointsRequest _
Generic DescribeEndpointsRequest _
Show DescribeEndpointsRequest
Decode DescribeEndpointsRequest
Encode DescribeEndpointsRequest
```

#### `newDescribeEndpointsRequest`

``` purescript
newDescribeEndpointsRequest :: DescribeEndpointsRequest
```

Constructs DescribeEndpointsRequest from required parameters

#### `newDescribeEndpointsRequest'`

``` purescript
newDescribeEndpointsRequest' :: ({ "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String) } -> { "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String) }) -> DescribeEndpointsRequest
```

Constructs DescribeEndpointsRequest's fields from required parameters

#### `DescribeEndpointsResponse`

``` purescript
newtype DescribeEndpointsResponse
  = DescribeEndpointsResponse { "Endpoints" :: NullOrUndefined (ListOfEndpoint), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeEndpointsResponse _
Generic DescribeEndpointsResponse _
Show DescribeEndpointsResponse
Decode DescribeEndpointsResponse
Encode DescribeEndpointsResponse
```

#### `newDescribeEndpointsResponse`

``` purescript
newDescribeEndpointsResponse :: DescribeEndpointsResponse
```

Constructs DescribeEndpointsResponse from required parameters

#### `newDescribeEndpointsResponse'`

``` purescript
newDescribeEndpointsResponse' :: ({ "Endpoints" :: NullOrUndefined (ListOfEndpoint), "NextToken" :: NullOrUndefined (String) } -> { "Endpoints" :: NullOrUndefined (ListOfEndpoint), "NextToken" :: NullOrUndefined (String) }) -> DescribeEndpointsResponse
```

Constructs DescribeEndpointsResponse's fields from required parameters

#### `DropFrameTimecode`

``` purescript
newtype DropFrameTimecode
  = DropFrameTimecode String
```

Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion (TimecodeInsertion) is enabled.

##### Instances
``` purescript
Newtype DropFrameTimecode _
Generic DropFrameTimecode _
Show DropFrameTimecode
Decode DropFrameTimecode
Encode DropFrameTimecode
```

#### `DvbNitSettings`

``` purescript
newtype DvbNitSettings
  = DvbNitSettings { "NetworkId" :: NullOrUndefined (Int), "NetworkName" :: NullOrUndefined (String), "NitInterval" :: NullOrUndefined (Int) }
```

Inserts DVB Network Information Table (NIT) at the specified table repetition interval.

##### Instances
``` purescript
Newtype DvbNitSettings _
Generic DvbNitSettings _
Show DvbNitSettings
Decode DvbNitSettings
Encode DvbNitSettings
```

#### `newDvbNitSettings`

``` purescript
newDvbNitSettings :: DvbNitSettings
```

Constructs DvbNitSettings from required parameters

#### `newDvbNitSettings'`

``` purescript
newDvbNitSettings' :: ({ "NetworkId" :: NullOrUndefined (Int), "NetworkName" :: NullOrUndefined (String), "NitInterval" :: NullOrUndefined (Int) } -> { "NetworkId" :: NullOrUndefined (Int), "NetworkName" :: NullOrUndefined (String), "NitInterval" :: NullOrUndefined (Int) }) -> DvbNitSettings
```

Constructs DvbNitSettings's fields from required parameters

#### `DvbSdtSettings`

``` purescript
newtype DvbSdtSettings
  = DvbSdtSettings { "OutputSdt" :: NullOrUndefined (OutputSdt), "SdtInterval" :: NullOrUndefined (Int), "ServiceName" :: NullOrUndefined (String), "ServiceProviderName" :: NullOrUndefined (String) }
```

Inserts DVB Service Description Table (NIT) at the specified table repetition interval.

##### Instances
``` purescript
Newtype DvbSdtSettings _
Generic DvbSdtSettings _
Show DvbSdtSettings
Decode DvbSdtSettings
Encode DvbSdtSettings
```

#### `newDvbSdtSettings`

``` purescript
newDvbSdtSettings :: DvbSdtSettings
```

Constructs DvbSdtSettings from required parameters

#### `newDvbSdtSettings'`

``` purescript
newDvbSdtSettings' :: ({ "OutputSdt" :: NullOrUndefined (OutputSdt), "SdtInterval" :: NullOrUndefined (Int), "ServiceName" :: NullOrUndefined (String), "ServiceProviderName" :: NullOrUndefined (String) } -> { "OutputSdt" :: NullOrUndefined (OutputSdt), "SdtInterval" :: NullOrUndefined (Int), "ServiceName" :: NullOrUndefined (String), "ServiceProviderName" :: NullOrUndefined (String) }) -> DvbSdtSettings
```

Constructs DvbSdtSettings's fields from required parameters

#### `DvbSubDestinationSettings`

``` purescript
newtype DvbSubDestinationSettings
  = DvbSubDestinationSettings { "Alignment" :: NullOrUndefined (DvbSubtitleAlignment), "BackgroundColor" :: NullOrUndefined (DvbSubtitleBackgroundColor), "BackgroundOpacity" :: NullOrUndefined (Int), "FontColor" :: NullOrUndefined (DvbSubtitleFontColor), "FontOpacity" :: NullOrUndefined (Int), "FontResolution" :: NullOrUndefined (Int), "FontSize" :: NullOrUndefined (Int), "OutlineColor" :: NullOrUndefined (DvbSubtitleOutlineColor), "OutlineSize" :: NullOrUndefined (Int), "ShadowColor" :: NullOrUndefined (DvbSubtitleShadowColor), "ShadowOpacity" :: NullOrUndefined (Int), "ShadowXOffset" :: NullOrUndefined (Int), "ShadowYOffset" :: NullOrUndefined (Int), "TeletextSpacing" :: NullOrUndefined (DvbSubtitleTeletextSpacing), "XPosition" :: NullOrUndefined (Int), "YPosition" :: NullOrUndefined (Int) }
```

DVB-Sub Destination Settings

##### Instances
``` purescript
Newtype DvbSubDestinationSettings _
Generic DvbSubDestinationSettings _
Show DvbSubDestinationSettings
Decode DvbSubDestinationSettings
Encode DvbSubDestinationSettings
```

#### `newDvbSubDestinationSettings`

``` purescript
newDvbSubDestinationSettings :: DvbSubDestinationSettings
```

Constructs DvbSubDestinationSettings from required parameters

#### `newDvbSubDestinationSettings'`

``` purescript
newDvbSubDestinationSettings' :: ({ "Alignment" :: NullOrUndefined (DvbSubtitleAlignment), "BackgroundColor" :: NullOrUndefined (DvbSubtitleBackgroundColor), "BackgroundOpacity" :: NullOrUndefined (Int), "FontColor" :: NullOrUndefined (DvbSubtitleFontColor), "FontOpacity" :: NullOrUndefined (Int), "FontResolution" :: NullOrUndefined (Int), "FontSize" :: NullOrUndefined (Int), "OutlineColor" :: NullOrUndefined (DvbSubtitleOutlineColor), "OutlineSize" :: NullOrUndefined (Int), "ShadowColor" :: NullOrUndefined (DvbSubtitleShadowColor), "ShadowOpacity" :: NullOrUndefined (Int), "ShadowXOffset" :: NullOrUndefined (Int), "ShadowYOffset" :: NullOrUndefined (Int), "TeletextSpacing" :: NullOrUndefined (DvbSubtitleTeletextSpacing), "XPosition" :: NullOrUndefined (Int), "YPosition" :: NullOrUndefined (Int) } -> { "Alignment" :: NullOrUndefined (DvbSubtitleAlignment), "BackgroundColor" :: NullOrUndefined (DvbSubtitleBackgroundColor), "BackgroundOpacity" :: NullOrUndefined (Int), "FontColor" :: NullOrUndefined (DvbSubtitleFontColor), "FontOpacity" :: NullOrUndefined (Int), "FontResolution" :: NullOrUndefined (Int), "FontSize" :: NullOrUndefined (Int), "OutlineColor" :: NullOrUndefined (DvbSubtitleOutlineColor), "OutlineSize" :: NullOrUndefined (Int), "ShadowColor" :: NullOrUndefined (DvbSubtitleShadowColor), "ShadowOpacity" :: NullOrUndefined (Int), "ShadowXOffset" :: NullOrUndefined (Int), "ShadowYOffset" :: NullOrUndefined (Int), "TeletextSpacing" :: NullOrUndefined (DvbSubtitleTeletextSpacing), "XPosition" :: NullOrUndefined (Int), "YPosition" :: NullOrUndefined (Int) }) -> DvbSubDestinationSettings
```

Constructs DvbSubDestinationSettings's fields from required parameters

#### `DvbSubSourceSettings`

``` purescript
newtype DvbSubSourceSettings
  = DvbSubSourceSettings { "Pid" :: NullOrUndefined (Int) }
```

DVB Sub Source Settings

##### Instances
``` purescript
Newtype DvbSubSourceSettings _
Generic DvbSubSourceSettings _
Show DvbSubSourceSettings
Decode DvbSubSourceSettings
Encode DvbSubSourceSettings
```

#### `newDvbSubSourceSettings`

``` purescript
newDvbSubSourceSettings :: DvbSubSourceSettings
```

Constructs DvbSubSourceSettings from required parameters

#### `newDvbSubSourceSettings'`

``` purescript
newDvbSubSourceSettings' :: ({ "Pid" :: NullOrUndefined (Int) } -> { "Pid" :: NullOrUndefined (Int) }) -> DvbSubSourceSettings
```

Constructs DvbSubSourceSettings's fields from required parameters

#### `DvbSubtitleAlignment`

``` purescript
newtype DvbSubtitleAlignment
  = DvbSubtitleAlignment String
```

If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype DvbSubtitleAlignment _
Generic DvbSubtitleAlignment _
Show DvbSubtitleAlignment
Decode DvbSubtitleAlignment
Encode DvbSubtitleAlignment
```

#### `DvbSubtitleBackgroundColor`

``` purescript
newtype DvbSubtitleBackgroundColor
  = DvbSubtitleBackgroundColor String
```

Specifies the color of the rectangle behind the captions.
All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype DvbSubtitleBackgroundColor _
Generic DvbSubtitleBackgroundColor _
Show DvbSubtitleBackgroundColor
Decode DvbSubtitleBackgroundColor
Encode DvbSubtitleBackgroundColor
```

#### `DvbSubtitleFontColor`

``` purescript
newtype DvbSubtitleFontColor
  = DvbSubtitleFontColor String
```

Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype DvbSubtitleFontColor _
Generic DvbSubtitleFontColor _
Show DvbSubtitleFontColor
Decode DvbSubtitleFontColor
Encode DvbSubtitleFontColor
```

#### `DvbSubtitleOutlineColor`

``` purescript
newtype DvbSubtitleOutlineColor
  = DvbSubtitleOutlineColor String
```

Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype DvbSubtitleOutlineColor _
Generic DvbSubtitleOutlineColor _
Show DvbSubtitleOutlineColor
Decode DvbSubtitleOutlineColor
Encode DvbSubtitleOutlineColor
```

#### `DvbSubtitleShadowColor`

``` purescript
newtype DvbSubtitleShadowColor
  = DvbSubtitleShadowColor String
```

Specifies the color of the shadow cast by the captions.
All burn-in and DVB-Sub font settings must match.

##### Instances
``` purescript
Newtype DvbSubtitleShadowColor _
Generic DvbSubtitleShadowColor _
Show DvbSubtitleShadowColor
Decode DvbSubtitleShadowColor
Encode DvbSubtitleShadowColor
```

#### `DvbSubtitleTeletextSpacing`

``` purescript
newtype DvbSubtitleTeletextSpacing
  = DvbSubtitleTeletextSpacing String
```

Controls whether a fixed grid size or proportional font spacing will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.

##### Instances
``` purescript
Newtype DvbSubtitleTeletextSpacing _
Generic DvbSubtitleTeletextSpacing _
Show DvbSubtitleTeletextSpacing
Decode DvbSubtitleTeletextSpacing
Encode DvbSubtitleTeletextSpacing
```

#### `DvbTdtSettings`

``` purescript
newtype DvbTdtSettings
  = DvbTdtSettings { "TdtInterval" :: NullOrUndefined (Int) }
```

Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.

##### Instances
``` purescript
Newtype DvbTdtSettings _
Generic DvbTdtSettings _
Show DvbTdtSettings
Decode DvbTdtSettings
Encode DvbTdtSettings
```

#### `newDvbTdtSettings`

``` purescript
newDvbTdtSettings :: DvbTdtSettings
```

Constructs DvbTdtSettings from required parameters

#### `newDvbTdtSettings'`

``` purescript
newDvbTdtSettings' :: ({ "TdtInterval" :: NullOrUndefined (Int) } -> { "TdtInterval" :: NullOrUndefined (Int) }) -> DvbTdtSettings
```

Constructs DvbTdtSettings's fields from required parameters

#### `Eac3AttenuationControl`

``` purescript
newtype Eac3AttenuationControl
  = Eac3AttenuationControl String
```

If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.

##### Instances
``` purescript
Newtype Eac3AttenuationControl _
Generic Eac3AttenuationControl _
Show Eac3AttenuationControl
Decode Eac3AttenuationControl
Encode Eac3AttenuationControl
```

#### `Eac3BitstreamMode`

``` purescript
newtype Eac3BitstreamMode
  = Eac3BitstreamMode String
```

Specifies the "Bitstream Mode" (bsmod) for the emitted E-AC-3 stream. See ATSC A/52-2012 (Annex E) for background on these values.

##### Instances
``` purescript
Newtype Eac3BitstreamMode _
Generic Eac3BitstreamMode _
Show Eac3BitstreamMode
Decode Eac3BitstreamMode
Encode Eac3BitstreamMode
```

#### `Eac3CodingMode`

``` purescript
newtype Eac3CodingMode
  = Eac3CodingMode String
```

Dolby Digital Plus coding mode. Determines number of channels.

##### Instances
``` purescript
Newtype Eac3CodingMode _
Generic Eac3CodingMode _
Show Eac3CodingMode
Decode Eac3CodingMode
Encode Eac3CodingMode
```

#### `Eac3DcFilter`

``` purescript
newtype Eac3DcFilter
  = Eac3DcFilter String
```

Activates a DC highpass filter for all input channels.

##### Instances
``` purescript
Newtype Eac3DcFilter _
Generic Eac3DcFilter _
Show Eac3DcFilter
Decode Eac3DcFilter
Encode Eac3DcFilter
```

#### `Eac3DynamicRangeCompressionLine`

``` purescript
newtype Eac3DynamicRangeCompressionLine
  = Eac3DynamicRangeCompressionLine String
```

Enables Dynamic Range Compression that restricts the absolute peak level for a signal.

##### Instances
``` purescript
Newtype Eac3DynamicRangeCompressionLine _
Generic Eac3DynamicRangeCompressionLine _
Show Eac3DynamicRangeCompressionLine
Decode Eac3DynamicRangeCompressionLine
Encode Eac3DynamicRangeCompressionLine
```

#### `Eac3DynamicRangeCompressionRf`

``` purescript
newtype Eac3DynamicRangeCompressionRf
  = Eac3DynamicRangeCompressionRf String
```

Enables Heavy Dynamic Range Compression, ensures that the instantaneous signal peaks do not exceed specified levels.

##### Instances
``` purescript
Newtype Eac3DynamicRangeCompressionRf _
Generic Eac3DynamicRangeCompressionRf _
Show Eac3DynamicRangeCompressionRf
Decode Eac3DynamicRangeCompressionRf
Encode Eac3DynamicRangeCompressionRf
```

#### `Eac3LfeControl`

``` purescript
newtype Eac3LfeControl
  = Eac3LfeControl String
```

When encoding 3/2 audio, controls whether the LFE channel is enabled

##### Instances
``` purescript
Newtype Eac3LfeControl _
Generic Eac3LfeControl _
Show Eac3LfeControl
Decode Eac3LfeControl
Encode Eac3LfeControl
```

#### `Eac3LfeFilter`

``` purescript
newtype Eac3LfeFilter
  = Eac3LfeFilter String
```

Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.

##### Instances
``` purescript
Newtype Eac3LfeFilter _
Generic Eac3LfeFilter _
Show Eac3LfeFilter
Decode Eac3LfeFilter
Encode Eac3LfeFilter
```

#### `Eac3MetadataControl`

``` purescript
newtype Eac3MetadataControl
  = Eac3MetadataControl String
```

When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.

##### Instances
``` purescript
Newtype Eac3MetadataControl _
Generic Eac3MetadataControl _
Show Eac3MetadataControl
Decode Eac3MetadataControl
Encode Eac3MetadataControl
```

#### `Eac3PassthroughControl`

``` purescript
newtype Eac3PassthroughControl
  = Eac3PassthroughControl String
```

When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.

##### Instances
``` purescript
Newtype Eac3PassthroughControl _
Generic Eac3PassthroughControl _
Show Eac3PassthroughControl
Decode Eac3PassthroughControl
Encode Eac3PassthroughControl
```

#### `Eac3PhaseControl`

``` purescript
newtype Eac3PhaseControl
  = Eac3PhaseControl String
```

Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode.

##### Instances
``` purescript
Newtype Eac3PhaseControl _
Generic Eac3PhaseControl _
Show Eac3PhaseControl
Decode Eac3PhaseControl
Encode Eac3PhaseControl
```

#### `Eac3Settings`

``` purescript
newtype Eac3Settings
  = Eac3Settings { "AttenuationControl" :: NullOrUndefined (Eac3AttenuationControl), "Bitrate" :: NullOrUndefined (Int), "BitstreamMode" :: NullOrUndefined (Eac3BitstreamMode), "CodingMode" :: NullOrUndefined (Eac3CodingMode), "DcFilter" :: NullOrUndefined (Eac3DcFilter), "Dialnorm" :: NullOrUndefined (Int), "DynamicRangeCompressionLine" :: NullOrUndefined (Eac3DynamicRangeCompressionLine), "DynamicRangeCompressionRf" :: NullOrUndefined (Eac3DynamicRangeCompressionRf), "LfeControl" :: NullOrUndefined (Eac3LfeControl), "LfeFilter" :: NullOrUndefined (Eac3LfeFilter), "LoRoCenterMixLevel" :: NullOrUndefined (Number), "LoRoSurroundMixLevel" :: NullOrUndefined (Number), "LtRtCenterMixLevel" :: NullOrUndefined (Number), "LtRtSurroundMixLevel" :: NullOrUndefined (Number), "MetadataControl" :: NullOrUndefined (Eac3MetadataControl), "PassthroughControl" :: NullOrUndefined (Eac3PassthroughControl), "PhaseControl" :: NullOrUndefined (Eac3PhaseControl), "SampleRate" :: NullOrUndefined (Int), "StereoDownmix" :: NullOrUndefined (Eac3StereoDownmix), "SurroundExMode" :: NullOrUndefined (Eac3SurroundExMode), "SurroundMode" :: NullOrUndefined (Eac3SurroundMode) }
```

Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3.

##### Instances
``` purescript
Newtype Eac3Settings _
Generic Eac3Settings _
Show Eac3Settings
Decode Eac3Settings
Encode Eac3Settings
```

#### `newEac3Settings`

``` purescript
newEac3Settings :: Eac3Settings
```

Constructs Eac3Settings from required parameters

#### `newEac3Settings'`

``` purescript
newEac3Settings' :: ({ "AttenuationControl" :: NullOrUndefined (Eac3AttenuationControl), "Bitrate" :: NullOrUndefined (Int), "BitstreamMode" :: NullOrUndefined (Eac3BitstreamMode), "CodingMode" :: NullOrUndefined (Eac3CodingMode), "DcFilter" :: NullOrUndefined (Eac3DcFilter), "Dialnorm" :: NullOrUndefined (Int), "DynamicRangeCompressionLine" :: NullOrUndefined (Eac3DynamicRangeCompressionLine), "DynamicRangeCompressionRf" :: NullOrUndefined (Eac3DynamicRangeCompressionRf), "LfeControl" :: NullOrUndefined (Eac3LfeControl), "LfeFilter" :: NullOrUndefined (Eac3LfeFilter), "LoRoCenterMixLevel" :: NullOrUndefined (Number), "LoRoSurroundMixLevel" :: NullOrUndefined (Number), "LtRtCenterMixLevel" :: NullOrUndefined (Number), "LtRtSurroundMixLevel" :: NullOrUndefined (Number), "MetadataControl" :: NullOrUndefined (Eac3MetadataControl), "PassthroughControl" :: NullOrUndefined (Eac3PassthroughControl), "PhaseControl" :: NullOrUndefined (Eac3PhaseControl), "SampleRate" :: NullOrUndefined (Int), "StereoDownmix" :: NullOrUndefined (Eac3StereoDownmix), "SurroundExMode" :: NullOrUndefined (Eac3SurroundExMode), "SurroundMode" :: NullOrUndefined (Eac3SurroundMode) } -> { "AttenuationControl" :: NullOrUndefined (Eac3AttenuationControl), "Bitrate" :: NullOrUndefined (Int), "BitstreamMode" :: NullOrUndefined (Eac3BitstreamMode), "CodingMode" :: NullOrUndefined (Eac3CodingMode), "DcFilter" :: NullOrUndefined (Eac3DcFilter), "Dialnorm" :: NullOrUndefined (Int), "DynamicRangeCompressionLine" :: NullOrUndefined (Eac3DynamicRangeCompressionLine), "DynamicRangeCompressionRf" :: NullOrUndefined (Eac3DynamicRangeCompressionRf), "LfeControl" :: NullOrUndefined (Eac3LfeControl), "LfeFilter" :: NullOrUndefined (Eac3LfeFilter), "LoRoCenterMixLevel" :: NullOrUndefined (Number), "LoRoSurroundMixLevel" :: NullOrUndefined (Number), "LtRtCenterMixLevel" :: NullOrUndefined (Number), "LtRtSurroundMixLevel" :: NullOrUndefined (Number), "MetadataControl" :: NullOrUndefined (Eac3MetadataControl), "PassthroughControl" :: NullOrUndefined (Eac3PassthroughControl), "PhaseControl" :: NullOrUndefined (Eac3PhaseControl), "SampleRate" :: NullOrUndefined (Int), "StereoDownmix" :: NullOrUndefined (Eac3StereoDownmix), "SurroundExMode" :: NullOrUndefined (Eac3SurroundExMode), "SurroundMode" :: NullOrUndefined (Eac3SurroundMode) }) -> Eac3Settings
```

Constructs Eac3Settings's fields from required parameters

#### `Eac3StereoDownmix`

``` purescript
newtype Eac3StereoDownmix
  = Eac3StereoDownmix String
```

Stereo downmix preference. Only used for 3/2 coding mode.

##### Instances
``` purescript
Newtype Eac3StereoDownmix _
Generic Eac3StereoDownmix _
Show Eac3StereoDownmix
Decode Eac3StereoDownmix
Encode Eac3StereoDownmix
```

#### `Eac3SurroundExMode`

``` purescript
newtype Eac3SurroundExMode
  = Eac3SurroundExMode String
```

When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.

##### Instances
``` purescript
Newtype Eac3SurroundExMode _
Generic Eac3SurroundExMode _
Show Eac3SurroundExMode
Decode Eac3SurroundExMode
Encode Eac3SurroundExMode
```

#### `Eac3SurroundMode`

``` purescript
newtype Eac3SurroundMode
  = Eac3SurroundMode String
```

When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.

##### Instances
``` purescript
Newtype Eac3SurroundMode _
Generic Eac3SurroundMode _
Show Eac3SurroundMode
Decode Eac3SurroundMode
Encode Eac3SurroundMode
```

#### `EmbeddedConvert608To708`

``` purescript
newtype EmbeddedConvert608To708
  = EmbeddedConvert608To708 String
```

When set to UPCONVERT, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.

##### Instances
``` purescript
Newtype EmbeddedConvert608To708 _
Generic EmbeddedConvert608To708 _
Show EmbeddedConvert608To708
Decode EmbeddedConvert608To708
Encode EmbeddedConvert608To708
```

#### `EmbeddedSourceSettings`

``` purescript
newtype EmbeddedSourceSettings
  = EmbeddedSourceSettings { "Convert608To708" :: NullOrUndefined (EmbeddedConvert608To708), "Source608ChannelNumber" :: NullOrUndefined (Int), "Source608TrackNumber" :: NullOrUndefined (Int) }
```

Settings for embedded captions Source

##### Instances
``` purescript
Newtype EmbeddedSourceSettings _
Generic EmbeddedSourceSettings _
Show EmbeddedSourceSettings
Decode EmbeddedSourceSettings
Encode EmbeddedSourceSettings
```

#### `newEmbeddedSourceSettings`

``` purescript
newEmbeddedSourceSettings :: EmbeddedSourceSettings
```

Constructs EmbeddedSourceSettings from required parameters

#### `newEmbeddedSourceSettings'`

``` purescript
newEmbeddedSourceSettings' :: ({ "Convert608To708" :: NullOrUndefined (EmbeddedConvert608To708), "Source608ChannelNumber" :: NullOrUndefined (Int), "Source608TrackNumber" :: NullOrUndefined (Int) } -> { "Convert608To708" :: NullOrUndefined (EmbeddedConvert608To708), "Source608ChannelNumber" :: NullOrUndefined (Int), "Source608TrackNumber" :: NullOrUndefined (Int) }) -> EmbeddedSourceSettings
```

Constructs EmbeddedSourceSettings's fields from required parameters

#### `Endpoint`

``` purescript
newtype Endpoint
  = Endpoint { "Url" :: NullOrUndefined (String) }
```

Describes account specific API endpoint

##### Instances
``` purescript
Newtype Endpoint _
Generic Endpoint _
Show Endpoint
Decode Endpoint
Encode Endpoint
```

#### `newEndpoint`

``` purescript
newEndpoint :: Endpoint
```

Constructs Endpoint from required parameters

#### `newEndpoint'`

``` purescript
newEndpoint' :: ({ "Url" :: NullOrUndefined (String) } -> { "Url" :: NullOrUndefined (String) }) -> Endpoint
```

Constructs Endpoint's fields from required parameters

#### `ExceptionBody`

``` purescript
newtype ExceptionBody
  = ExceptionBody { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ExceptionBody _
Generic ExceptionBody _
Show ExceptionBody
Decode ExceptionBody
Encode ExceptionBody
```

#### `newExceptionBody`

``` purescript
newExceptionBody :: ExceptionBody
```

Constructs ExceptionBody from required parameters

#### `newExceptionBody'`

``` purescript
newExceptionBody' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> ExceptionBody
```

Constructs ExceptionBody's fields from required parameters

#### `F4vMoovPlacement`

``` purescript
newtype F4vMoovPlacement
  = F4vMoovPlacement String
```

If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.

##### Instances
``` purescript
Newtype F4vMoovPlacement _
Generic F4vMoovPlacement _
Show F4vMoovPlacement
Decode F4vMoovPlacement
Encode F4vMoovPlacement
```

#### `F4vSettings`

``` purescript
newtype F4vSettings
  = F4vSettings { "MoovPlacement" :: NullOrUndefined (F4vMoovPlacement) }
```

Settings for F4v container

##### Instances
``` purescript
Newtype F4vSettings _
Generic F4vSettings _
Show F4vSettings
Decode F4vSettings
Encode F4vSettings
```

#### `newF4vSettings`

``` purescript
newF4vSettings :: F4vSettings
```

Constructs F4vSettings from required parameters

#### `newF4vSettings'`

``` purescript
newF4vSettings' :: ({ "MoovPlacement" :: NullOrUndefined (F4vMoovPlacement) } -> { "MoovPlacement" :: NullOrUndefined (F4vMoovPlacement) }) -> F4vSettings
```

Constructs F4vSettings's fields from required parameters

#### `FileGroupSettings`

``` purescript
newtype FileGroupSettings
  = FileGroupSettings { "Destination" :: NullOrUndefined (String) }
```

Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to FILE_GROUP_SETTINGS.

##### Instances
``` purescript
Newtype FileGroupSettings _
Generic FileGroupSettings _
Show FileGroupSettings
Decode FileGroupSettings
Encode FileGroupSettings
```

#### `newFileGroupSettings`

``` purescript
newFileGroupSettings :: FileGroupSettings
```

Constructs FileGroupSettings from required parameters

#### `newFileGroupSettings'`

``` purescript
newFileGroupSettings' :: ({ "Destination" :: NullOrUndefined (String) } -> { "Destination" :: NullOrUndefined (String) }) -> FileGroupSettings
```

Constructs FileGroupSettings's fields from required parameters

#### `FileSourceConvert608To708`

``` purescript
newtype FileSourceConvert608To708
  = FileSourceConvert608To708 String
```

If set to UPCONVERT, 608 caption data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.

##### Instances
``` purescript
Newtype FileSourceConvert608To708 _
Generic FileSourceConvert608To708 _
Show FileSourceConvert608To708
Decode FileSourceConvert608To708
Encode FileSourceConvert608To708
```

#### `FileSourceSettings`

``` purescript
newtype FileSourceSettings
  = FileSourceSettings { "Convert608To708" :: NullOrUndefined (FileSourceConvert608To708), "SourceFile" :: NullOrUndefined (String), "TimeDelta" :: NullOrUndefined (Int) }
```

Settings for File-based Captions in Source

##### Instances
``` purescript
Newtype FileSourceSettings _
Generic FileSourceSettings _
Show FileSourceSettings
Decode FileSourceSettings
Encode FileSourceSettings
```

#### `newFileSourceSettings`

``` purescript
newFileSourceSettings :: FileSourceSettings
```

Constructs FileSourceSettings from required parameters

#### `newFileSourceSettings'`

``` purescript
newFileSourceSettings' :: ({ "Convert608To708" :: NullOrUndefined (FileSourceConvert608To708), "SourceFile" :: NullOrUndefined (String), "TimeDelta" :: NullOrUndefined (Int) } -> { "Convert608To708" :: NullOrUndefined (FileSourceConvert608To708), "SourceFile" :: NullOrUndefined (String), "TimeDelta" :: NullOrUndefined (Int) }) -> FileSourceSettings
```

Constructs FileSourceSettings's fields from required parameters

#### `ForbiddenException`

``` purescript
newtype ForbiddenException
  = ForbiddenException { "Message" :: NullOrUndefined (String) }
```

You don't have permissions for this action with the credentials you sent.

##### Instances
``` purescript
Newtype ForbiddenException _
Generic ForbiddenException _
Show ForbiddenException
Decode ForbiddenException
Encode ForbiddenException
```

#### `newForbiddenException`

``` purescript
newForbiddenException :: ForbiddenException
```

Constructs ForbiddenException from required parameters

#### `newForbiddenException'`

``` purescript
newForbiddenException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> ForbiddenException
```

Constructs ForbiddenException's fields from required parameters

#### `FrameCaptureSettings`

``` purescript
newtype FrameCaptureSettings
  = FrameCaptureSettings { "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "MaxCaptures" :: NullOrUndefined (Int), "Quality" :: NullOrUndefined (Int) }
```

Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE.

##### Instances
``` purescript
Newtype FrameCaptureSettings _
Generic FrameCaptureSettings _
Show FrameCaptureSettings
Decode FrameCaptureSettings
Encode FrameCaptureSettings
```

#### `newFrameCaptureSettings`

``` purescript
newFrameCaptureSettings :: FrameCaptureSettings
```

Constructs FrameCaptureSettings from required parameters

#### `newFrameCaptureSettings'`

``` purescript
newFrameCaptureSettings' :: ({ "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "MaxCaptures" :: NullOrUndefined (Int), "Quality" :: NullOrUndefined (Int) } -> { "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "MaxCaptures" :: NullOrUndefined (Int), "Quality" :: NullOrUndefined (Int) }) -> FrameCaptureSettings
```

Constructs FrameCaptureSettings's fields from required parameters

#### `GetJobRequest`

``` purescript
newtype GetJobRequest
  = GetJobRequest { "Id" :: String }
```

##### Instances
``` purescript
Newtype GetJobRequest _
Generic GetJobRequest _
Show GetJobRequest
Decode GetJobRequest
Encode GetJobRequest
```

#### `newGetJobRequest`

``` purescript
newGetJobRequest :: String -> GetJobRequest
```

Constructs GetJobRequest from required parameters

#### `newGetJobRequest'`

``` purescript
newGetJobRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> GetJobRequest
```

Constructs GetJobRequest's fields from required parameters

#### `GetJobResponse`

``` purescript
newtype GetJobResponse
  = GetJobResponse { "Job" :: NullOrUndefined (Job) }
```

##### Instances
``` purescript
Newtype GetJobResponse _
Generic GetJobResponse _
Show GetJobResponse
Decode GetJobResponse
Encode GetJobResponse
```

#### `newGetJobResponse`

``` purescript
newGetJobResponse :: GetJobResponse
```

Constructs GetJobResponse from required parameters

#### `newGetJobResponse'`

``` purescript
newGetJobResponse' :: ({ "Job" :: NullOrUndefined (Job) } -> { "Job" :: NullOrUndefined (Job) }) -> GetJobResponse
```

Constructs GetJobResponse's fields from required parameters

#### `GetJobTemplateRequest`

``` purescript
newtype GetJobTemplateRequest
  = GetJobTemplateRequest { "Name" :: String }
```

##### Instances
``` purescript
Newtype GetJobTemplateRequest _
Generic GetJobTemplateRequest _
Show GetJobTemplateRequest
Decode GetJobTemplateRequest
Encode GetJobTemplateRequest
```

#### `newGetJobTemplateRequest`

``` purescript
newGetJobTemplateRequest :: String -> GetJobTemplateRequest
```

Constructs GetJobTemplateRequest from required parameters

#### `newGetJobTemplateRequest'`

``` purescript
newGetJobTemplateRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> GetJobTemplateRequest
```

Constructs GetJobTemplateRequest's fields from required parameters

#### `GetJobTemplateResponse`

``` purescript
newtype GetJobTemplateResponse
  = GetJobTemplateResponse { "JobTemplate" :: NullOrUndefined (JobTemplate) }
```

##### Instances
``` purescript
Newtype GetJobTemplateResponse _
Generic GetJobTemplateResponse _
Show GetJobTemplateResponse
Decode GetJobTemplateResponse
Encode GetJobTemplateResponse
```

#### `newGetJobTemplateResponse`

``` purescript
newGetJobTemplateResponse :: GetJobTemplateResponse
```

Constructs GetJobTemplateResponse from required parameters

#### `newGetJobTemplateResponse'`

``` purescript
newGetJobTemplateResponse' :: ({ "JobTemplate" :: NullOrUndefined (JobTemplate) } -> { "JobTemplate" :: NullOrUndefined (JobTemplate) }) -> GetJobTemplateResponse
```

Constructs GetJobTemplateResponse's fields from required parameters

#### `GetPresetRequest`

``` purescript
newtype GetPresetRequest
  = GetPresetRequest { "Name" :: String }
```

##### Instances
``` purescript
Newtype GetPresetRequest _
Generic GetPresetRequest _
Show GetPresetRequest
Decode GetPresetRequest
Encode GetPresetRequest
```

#### `newGetPresetRequest`

``` purescript
newGetPresetRequest :: String -> GetPresetRequest
```

Constructs GetPresetRequest from required parameters

#### `newGetPresetRequest'`

``` purescript
newGetPresetRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> GetPresetRequest
```

Constructs GetPresetRequest's fields from required parameters

#### `GetPresetResponse`

``` purescript
newtype GetPresetResponse
  = GetPresetResponse { "Preset" :: NullOrUndefined (Preset) }
```

##### Instances
``` purescript
Newtype GetPresetResponse _
Generic GetPresetResponse _
Show GetPresetResponse
Decode GetPresetResponse
Encode GetPresetResponse
```

#### `newGetPresetResponse`

``` purescript
newGetPresetResponse :: GetPresetResponse
```

Constructs GetPresetResponse from required parameters

#### `newGetPresetResponse'`

``` purescript
newGetPresetResponse' :: ({ "Preset" :: NullOrUndefined (Preset) } -> { "Preset" :: NullOrUndefined (Preset) }) -> GetPresetResponse
```

Constructs GetPresetResponse's fields from required parameters

#### `GetQueueRequest`

``` purescript
newtype GetQueueRequest
  = GetQueueRequest { "Name" :: String }
```

##### Instances
``` purescript
Newtype GetQueueRequest _
Generic GetQueueRequest _
Show GetQueueRequest
Decode GetQueueRequest
Encode GetQueueRequest
```

#### `newGetQueueRequest`

``` purescript
newGetQueueRequest :: String -> GetQueueRequest
```

Constructs GetQueueRequest from required parameters

#### `newGetQueueRequest'`

``` purescript
newGetQueueRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> GetQueueRequest
```

Constructs GetQueueRequest's fields from required parameters

#### `GetQueueResponse`

``` purescript
newtype GetQueueResponse
  = GetQueueResponse { "Queue" :: NullOrUndefined (Queue) }
```

##### Instances
``` purescript
Newtype GetQueueResponse _
Generic GetQueueResponse _
Show GetQueueResponse
Decode GetQueueResponse
Encode GetQueueResponse
```

#### `newGetQueueResponse`

``` purescript
newGetQueueResponse :: GetQueueResponse
```

Constructs GetQueueResponse from required parameters

#### `newGetQueueResponse'`

``` purescript
newGetQueueResponse' :: ({ "Queue" :: NullOrUndefined (Queue) } -> { "Queue" :: NullOrUndefined (Queue) }) -> GetQueueResponse
```

Constructs GetQueueResponse's fields from required parameters

#### `H264AdaptiveQuantization`

``` purescript
newtype H264AdaptiveQuantization
  = H264AdaptiveQuantization String
```

Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.

##### Instances
``` purescript
Newtype H264AdaptiveQuantization _
Generic H264AdaptiveQuantization _
Show H264AdaptiveQuantization
Decode H264AdaptiveQuantization
Encode H264AdaptiveQuantization
```

#### `H264CodecLevel`

``` purescript
newtype H264CodecLevel
  = H264CodecLevel String
```

H.264 Level.

##### Instances
``` purescript
Newtype H264CodecLevel _
Generic H264CodecLevel _
Show H264CodecLevel
Decode H264CodecLevel
Encode H264CodecLevel
```

#### `H264CodecProfile`

``` purescript
newtype H264CodecProfile
  = H264CodecProfile String
```

H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.

##### Instances
``` purescript
Newtype H264CodecProfile _
Generic H264CodecProfile _
Show H264CodecProfile
Decode H264CodecProfile
Encode H264CodecProfile
```

#### `H264EntropyEncoding`

``` purescript
newtype H264EntropyEncoding
  = H264EntropyEncoding String
```

Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.

##### Instances
``` purescript
Newtype H264EntropyEncoding _
Generic H264EntropyEncoding _
Show H264EntropyEncoding
Decode H264EntropyEncoding
Encode H264EntropyEncoding
```

#### `H264FieldEncoding`

``` purescript
newtype H264FieldEncoding
  = H264FieldEncoding String
```

Choosing FORCE_FIELD disables PAFF encoding for interlaced outputs.

##### Instances
``` purescript
Newtype H264FieldEncoding _
Generic H264FieldEncoding _
Show H264FieldEncoding
Decode H264FieldEncoding
Encode H264FieldEncoding
```

#### `H264FlickerAdaptiveQuantization`

``` purescript
newtype H264FlickerAdaptiveQuantization
  = H264FlickerAdaptiveQuantization String
```

Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.

##### Instances
``` purescript
Newtype H264FlickerAdaptiveQuantization _
Generic H264FlickerAdaptiveQuantization _
Show H264FlickerAdaptiveQuantization
Decode H264FlickerAdaptiveQuantization
Encode H264FlickerAdaptiveQuantization
```

#### `H264FramerateControl`

``` purescript
newtype H264FramerateControl
  = H264FramerateControl String
```

Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.

##### Instances
``` purescript
Newtype H264FramerateControl _
Generic H264FramerateControl _
Show H264FramerateControl
Decode H264FramerateControl
Encode H264FramerateControl
```

#### `H264FramerateConversionAlgorithm`

``` purescript
newtype H264FramerateConversionAlgorithm
  = H264FramerateConversionAlgorithm String
```

When set to INTERPOLATE, produces smoother motion during framerate conversion.

##### Instances
``` purescript
Newtype H264FramerateConversionAlgorithm _
Generic H264FramerateConversionAlgorithm _
Show H264FramerateConversionAlgorithm
Decode H264FramerateConversionAlgorithm
Encode H264FramerateConversionAlgorithm
```

#### `H264GopBReference`

``` purescript
newtype H264GopBReference
  = H264GopBReference String
```

If enable, use reference B frames for GOP structures that have B frames > 1.

##### Instances
``` purescript
Newtype H264GopBReference _
Generic H264GopBReference _
Show H264GopBReference
Decode H264GopBReference
Encode H264GopBReference
```

#### `H264GopSizeUnits`

``` purescript
newtype H264GopSizeUnits
  = H264GopSizeUnits String
```

Indicates if the GOP Size in H264 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.

##### Instances
``` purescript
Newtype H264GopSizeUnits _
Generic H264GopSizeUnits _
Show H264GopSizeUnits
Decode H264GopSizeUnits
Encode H264GopSizeUnits
```

#### `H264InterlaceMode`

``` purescript
newtype H264InterlaceMode
  = H264InterlaceMode String
```

Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.

##### Instances
``` purescript
Newtype H264InterlaceMode _
Generic H264InterlaceMode _
Show H264InterlaceMode
Decode H264InterlaceMode
Encode H264InterlaceMode
```

#### `H264ParControl`

``` purescript
newtype H264ParControl
  = H264ParControl String
```

Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.

##### Instances
``` purescript
Newtype H264ParControl _
Generic H264ParControl _
Show H264ParControl
Decode H264ParControl
Encode H264ParControl
```

#### `H264QualityTuningLevel`

``` purescript
newtype H264QualityTuningLevel
  = H264QualityTuningLevel String
```

Use Quality tuning level (H264QualityTuningLevel) to specifiy whether to use fast single-pass, high-quality singlepass, or high-quality multipass video encoding.

##### Instances
``` purescript
Newtype H264QualityTuningLevel _
Generic H264QualityTuningLevel _
Show H264QualityTuningLevel
Decode H264QualityTuningLevel
Encode H264QualityTuningLevel
```

#### `H264RateControlMode`

``` purescript
newtype H264RateControlMode
  = H264RateControlMode String
```

Rate control mode. CQ uses constant quantizer (qp), ABR (average bitrate) does not write HRD parameters.

##### Instances
``` purescript
Newtype H264RateControlMode _
Generic H264RateControlMode _
Show H264RateControlMode
Decode H264RateControlMode
Encode H264RateControlMode
```

#### `H264RepeatPps`

``` purescript
newtype H264RepeatPps
  = H264RepeatPps String
```

Places a PPS header on each encoded picture, even if repeated.

##### Instances
``` purescript
Newtype H264RepeatPps _
Generic H264RepeatPps _
Show H264RepeatPps
Decode H264RepeatPps
Encode H264RepeatPps
```

#### `H264SceneChangeDetect`

``` purescript
newtype H264SceneChangeDetect
  = H264SceneChangeDetect String
```

Scene change detection (inserts I-frames on scene changes).

##### Instances
``` purescript
Newtype H264SceneChangeDetect _
Generic H264SceneChangeDetect _
Show H264SceneChangeDetect
Decode H264SceneChangeDetect
Encode H264SceneChangeDetect
```

#### `H264Settings`

``` purescript
newtype H264Settings
  = H264Settings { "AdaptiveQuantization" :: NullOrUndefined (H264AdaptiveQuantization), "Bitrate" :: NullOrUndefined (Int), "CodecLevel" :: NullOrUndefined (H264CodecLevel), "CodecProfile" :: NullOrUndefined (H264CodecProfile), "EntropyEncoding" :: NullOrUndefined (H264EntropyEncoding), "FieldEncoding" :: NullOrUndefined (H264FieldEncoding), "FlickerAdaptiveQuantization" :: NullOrUndefined (H264FlickerAdaptiveQuantization), "FramerateControl" :: NullOrUndefined (H264FramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (H264FramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "GopBReference" :: NullOrUndefined (H264GopBReference), "GopClosedCadence" :: NullOrUndefined (Int), "GopSize" :: NullOrUndefined (Number), "GopSizeUnits" :: NullOrUndefined (H264GopSizeUnits), "HrdBufferInitialFillPercentage" :: NullOrUndefined (Int), "HrdBufferSize" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (H264InterlaceMode), "MaxBitrate" :: NullOrUndefined (Int), "MinIInterval" :: NullOrUndefined (Int), "NumberBFramesBetweenReferenceFrames" :: NullOrUndefined (Int), "NumberReferenceFrames" :: NullOrUndefined (Int), "ParControl" :: NullOrUndefined (H264ParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "QualityTuningLevel" :: NullOrUndefined (H264QualityTuningLevel), "RateControlMode" :: NullOrUndefined (H264RateControlMode), "RepeatPps" :: NullOrUndefined (H264RepeatPps), "SceneChangeDetect" :: NullOrUndefined (H264SceneChangeDetect), "Slices" :: NullOrUndefined (Int), "SlowPal" :: NullOrUndefined (H264SlowPal), "Softness" :: NullOrUndefined (Int), "SpatialAdaptiveQuantization" :: NullOrUndefined (H264SpatialAdaptiveQuantization), "Syntax" :: NullOrUndefined (H264Syntax), "Telecine" :: NullOrUndefined (H264Telecine), "TemporalAdaptiveQuantization" :: NullOrUndefined (H264TemporalAdaptiveQuantization), "UnregisteredSeiTimecode" :: NullOrUndefined (H264UnregisteredSeiTimecode) }
```

Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264.

##### Instances
``` purescript
Newtype H264Settings _
Generic H264Settings _
Show H264Settings
Decode H264Settings
Encode H264Settings
```

#### `newH264Settings`

``` purescript
newH264Settings :: H264Settings
```

Constructs H264Settings from required parameters

#### `newH264Settings'`

``` purescript
newH264Settings' :: ({ "AdaptiveQuantization" :: NullOrUndefined (H264AdaptiveQuantization), "Bitrate" :: NullOrUndefined (Int), "CodecLevel" :: NullOrUndefined (H264CodecLevel), "CodecProfile" :: NullOrUndefined (H264CodecProfile), "EntropyEncoding" :: NullOrUndefined (H264EntropyEncoding), "FieldEncoding" :: NullOrUndefined (H264FieldEncoding), "FlickerAdaptiveQuantization" :: NullOrUndefined (H264FlickerAdaptiveQuantization), "FramerateControl" :: NullOrUndefined (H264FramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (H264FramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "GopBReference" :: NullOrUndefined (H264GopBReference), "GopClosedCadence" :: NullOrUndefined (Int), "GopSize" :: NullOrUndefined (Number), "GopSizeUnits" :: NullOrUndefined (H264GopSizeUnits), "HrdBufferInitialFillPercentage" :: NullOrUndefined (Int), "HrdBufferSize" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (H264InterlaceMode), "MaxBitrate" :: NullOrUndefined (Int), "MinIInterval" :: NullOrUndefined (Int), "NumberBFramesBetweenReferenceFrames" :: NullOrUndefined (Int), "NumberReferenceFrames" :: NullOrUndefined (Int), "ParControl" :: NullOrUndefined (H264ParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "QualityTuningLevel" :: NullOrUndefined (H264QualityTuningLevel), "RateControlMode" :: NullOrUndefined (H264RateControlMode), "RepeatPps" :: NullOrUndefined (H264RepeatPps), "SceneChangeDetect" :: NullOrUndefined (H264SceneChangeDetect), "Slices" :: NullOrUndefined (Int), "SlowPal" :: NullOrUndefined (H264SlowPal), "Softness" :: NullOrUndefined (Int), "SpatialAdaptiveQuantization" :: NullOrUndefined (H264SpatialAdaptiveQuantization), "Syntax" :: NullOrUndefined (H264Syntax), "Telecine" :: NullOrUndefined (H264Telecine), "TemporalAdaptiveQuantization" :: NullOrUndefined (H264TemporalAdaptiveQuantization), "UnregisteredSeiTimecode" :: NullOrUndefined (H264UnregisteredSeiTimecode) } -> { "AdaptiveQuantization" :: NullOrUndefined (H264AdaptiveQuantization), "Bitrate" :: NullOrUndefined (Int), "CodecLevel" :: NullOrUndefined (H264CodecLevel), "CodecProfile" :: NullOrUndefined (H264CodecProfile), "EntropyEncoding" :: NullOrUndefined (H264EntropyEncoding), "FieldEncoding" :: NullOrUndefined (H264FieldEncoding), "FlickerAdaptiveQuantization" :: NullOrUndefined (H264FlickerAdaptiveQuantization), "FramerateControl" :: NullOrUndefined (H264FramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (H264FramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "GopBReference" :: NullOrUndefined (H264GopBReference), "GopClosedCadence" :: NullOrUndefined (Int), "GopSize" :: NullOrUndefined (Number), "GopSizeUnits" :: NullOrUndefined (H264GopSizeUnits), "HrdBufferInitialFillPercentage" :: NullOrUndefined (Int), "HrdBufferSize" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (H264InterlaceMode), "MaxBitrate" :: NullOrUndefined (Int), "MinIInterval" :: NullOrUndefined (Int), "NumberBFramesBetweenReferenceFrames" :: NullOrUndefined (Int), "NumberReferenceFrames" :: NullOrUndefined (Int), "ParControl" :: NullOrUndefined (H264ParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "QualityTuningLevel" :: NullOrUndefined (H264QualityTuningLevel), "RateControlMode" :: NullOrUndefined (H264RateControlMode), "RepeatPps" :: NullOrUndefined (H264RepeatPps), "SceneChangeDetect" :: NullOrUndefined (H264SceneChangeDetect), "Slices" :: NullOrUndefined (Int), "SlowPal" :: NullOrUndefined (H264SlowPal), "Softness" :: NullOrUndefined (Int), "SpatialAdaptiveQuantization" :: NullOrUndefined (H264SpatialAdaptiveQuantization), "Syntax" :: NullOrUndefined (H264Syntax), "Telecine" :: NullOrUndefined (H264Telecine), "TemporalAdaptiveQuantization" :: NullOrUndefined (H264TemporalAdaptiveQuantization), "UnregisteredSeiTimecode" :: NullOrUndefined (H264UnregisteredSeiTimecode) }) -> H264Settings
```

Constructs H264Settings's fields from required parameters

#### `H264SlowPal`

``` purescript
newtype H264SlowPal
  = H264SlowPal String
```

Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.

##### Instances
``` purescript
Newtype H264SlowPal _
Generic H264SlowPal _
Show H264SlowPal
Decode H264SlowPal
Encode H264SlowPal
```

#### `H264SpatialAdaptiveQuantization`

``` purescript
newtype H264SpatialAdaptiveQuantization
  = H264SpatialAdaptiveQuantization String
```

Adjust quantization within each frame based on spatial variation of content complexity.

##### Instances
``` purescript
Newtype H264SpatialAdaptiveQuantization _
Generic H264SpatialAdaptiveQuantization _
Show H264SpatialAdaptiveQuantization
Decode H264SpatialAdaptiveQuantization
Encode H264SpatialAdaptiveQuantization
```

#### `H264Syntax`

``` purescript
newtype H264Syntax
  = H264Syntax String
```

Produces a bitstream compliant with SMPTE RP-2027.

##### Instances
``` purescript
Newtype H264Syntax _
Generic H264Syntax _
Show H264Syntax
Decode H264Syntax
Encode H264Syntax
```

#### `H264Telecine`

``` purescript
newtype H264Telecine
  = H264Telecine String
```

This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.

##### Instances
``` purescript
Newtype H264Telecine _
Generic H264Telecine _
Show H264Telecine
Decode H264Telecine
Encode H264Telecine
```

#### `H264TemporalAdaptiveQuantization`

``` purescript
newtype H264TemporalAdaptiveQuantization
  = H264TemporalAdaptiveQuantization String
```

Adjust quantization within each frame based on temporal variation of content complexity.

##### Instances
``` purescript
Newtype H264TemporalAdaptiveQuantization _
Generic H264TemporalAdaptiveQuantization _
Show H264TemporalAdaptiveQuantization
Decode H264TemporalAdaptiveQuantization
Encode H264TemporalAdaptiveQuantization
```

#### `H264UnregisteredSeiTimecode`

``` purescript
newtype H264UnregisteredSeiTimecode
  = H264UnregisteredSeiTimecode String
```

Inserts timecode for each frame as 4 bytes of an unregistered SEI message.

##### Instances
``` purescript
Newtype H264UnregisteredSeiTimecode _
Generic H264UnregisteredSeiTimecode _
Show H264UnregisteredSeiTimecode
Decode H264UnregisteredSeiTimecode
Encode H264UnregisteredSeiTimecode
```

#### `H265AdaptiveQuantization`

``` purescript
newtype H265AdaptiveQuantization
  = H265AdaptiveQuantization String
```

Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.

##### Instances
``` purescript
Newtype H265AdaptiveQuantization _
Generic H265AdaptiveQuantization _
Show H265AdaptiveQuantization
Decode H265AdaptiveQuantization
Encode H265AdaptiveQuantization
```

#### `H265AlternateTransferFunctionSei`

``` purescript
newtype H265AlternateTransferFunctionSei
  = H265AlternateTransferFunctionSei String
```

Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).

##### Instances
``` purescript
Newtype H265AlternateTransferFunctionSei _
Generic H265AlternateTransferFunctionSei _
Show H265AlternateTransferFunctionSei
Decode H265AlternateTransferFunctionSei
Encode H265AlternateTransferFunctionSei
```

#### `H265CodecLevel`

``` purescript
newtype H265CodecLevel
  = H265CodecLevel String
```

H.265 Level.

##### Instances
``` purescript
Newtype H265CodecLevel _
Generic H265CodecLevel _
Show H265CodecLevel
Decode H265CodecLevel
Encode H265CodecLevel
```

#### `H265CodecProfile`

``` purescript
newtype H265CodecProfile
  = H265CodecProfile String
```

Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so "Main/High" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License.

##### Instances
``` purescript
Newtype H265CodecProfile _
Generic H265CodecProfile _
Show H265CodecProfile
Decode H265CodecProfile
Encode H265CodecProfile
```

#### `H265FlickerAdaptiveQuantization`

``` purescript
newtype H265FlickerAdaptiveQuantization
  = H265FlickerAdaptiveQuantization String
```

Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.

##### Instances
``` purescript
Newtype H265FlickerAdaptiveQuantization _
Generic H265FlickerAdaptiveQuantization _
Show H265FlickerAdaptiveQuantization
Decode H265FlickerAdaptiveQuantization
Encode H265FlickerAdaptiveQuantization
```

#### `H265FramerateControl`

``` purescript
newtype H265FramerateControl
  = H265FramerateControl String
```

Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.

##### Instances
``` purescript
Newtype H265FramerateControl _
Generic H265FramerateControl _
Show H265FramerateControl
Decode H265FramerateControl
Encode H265FramerateControl
```

#### `H265FramerateConversionAlgorithm`

``` purescript
newtype H265FramerateConversionAlgorithm
  = H265FramerateConversionAlgorithm String
```

When set to INTERPOLATE, produces smoother motion during framerate conversion.

##### Instances
``` purescript
Newtype H265FramerateConversionAlgorithm _
Generic H265FramerateConversionAlgorithm _
Show H265FramerateConversionAlgorithm
Decode H265FramerateConversionAlgorithm
Encode H265FramerateConversionAlgorithm
```

#### `H265GopBReference`

``` purescript
newtype H265GopBReference
  = H265GopBReference String
```

If enable, use reference B frames for GOP structures that have B frames > 1.

##### Instances
``` purescript
Newtype H265GopBReference _
Generic H265GopBReference _
Show H265GopBReference
Decode H265GopBReference
Encode H265GopBReference
```

#### `H265GopSizeUnits`

``` purescript
newtype H265GopSizeUnits
  = H265GopSizeUnits String
```

Indicates if the GOP Size in H265 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.

##### Instances
``` purescript
Newtype H265GopSizeUnits _
Generic H265GopSizeUnits _
Show H265GopSizeUnits
Decode H265GopSizeUnits
Encode H265GopSizeUnits
```

#### `H265InterlaceMode`

``` purescript
newtype H265InterlaceMode
  = H265InterlaceMode String
```

Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.

##### Instances
``` purescript
Newtype H265InterlaceMode _
Generic H265InterlaceMode _
Show H265InterlaceMode
Decode H265InterlaceMode
Encode H265InterlaceMode
```

#### `H265ParControl`

``` purescript
newtype H265ParControl
  = H265ParControl String
```

Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.

##### Instances
``` purescript
Newtype H265ParControl _
Generic H265ParControl _
Show H265ParControl
Decode H265ParControl
Encode H265ParControl
```

#### `H265QualityTuningLevel`

``` purescript
newtype H265QualityTuningLevel
  = H265QualityTuningLevel String
```

Use Quality tuning level (H265QualityTuningLevel) to specifiy whether to use fast single-pass, high-quality singlepass, or high-quality multipass video encoding.

##### Instances
``` purescript
Newtype H265QualityTuningLevel _
Generic H265QualityTuningLevel _
Show H265QualityTuningLevel
Decode H265QualityTuningLevel
Encode H265QualityTuningLevel
```

#### `H265RateControlMode`

``` purescript
newtype H265RateControlMode
  = H265RateControlMode String
```

Rate control mode. CQ uses constant quantizer (qp), ABR (average bitrate) does not write HRD parameters.

##### Instances
``` purescript
Newtype H265RateControlMode _
Generic H265RateControlMode _
Show H265RateControlMode
Decode H265RateControlMode
Encode H265RateControlMode
```

#### `H265SampleAdaptiveOffsetFilterMode`

``` purescript
newtype H265SampleAdaptiveOffsetFilterMode
  = H265SampleAdaptiveOffsetFilterMode String
```

Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content

##### Instances
``` purescript
Newtype H265SampleAdaptiveOffsetFilterMode _
Generic H265SampleAdaptiveOffsetFilterMode _
Show H265SampleAdaptiveOffsetFilterMode
Decode H265SampleAdaptiveOffsetFilterMode
Encode H265SampleAdaptiveOffsetFilterMode
```

#### `H265SceneChangeDetect`

``` purescript
newtype H265SceneChangeDetect
  = H265SceneChangeDetect String
```

Scene change detection (inserts I-frames on scene changes).

##### Instances
``` purescript
Newtype H265SceneChangeDetect _
Generic H265SceneChangeDetect _
Show H265SceneChangeDetect
Decode H265SceneChangeDetect
Encode H265SceneChangeDetect
```

#### `H265Settings`

``` purescript
newtype H265Settings
  = H265Settings { "AdaptiveQuantization" :: NullOrUndefined (H265AdaptiveQuantization), "AlternateTransferFunctionSei" :: NullOrUndefined (H265AlternateTransferFunctionSei), "Bitrate" :: NullOrUndefined (Int), "CodecLevel" :: NullOrUndefined (H265CodecLevel), "CodecProfile" :: NullOrUndefined (H265CodecProfile), "FlickerAdaptiveQuantization" :: NullOrUndefined (H265FlickerAdaptiveQuantization), "FramerateControl" :: NullOrUndefined (H265FramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (H265FramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "GopBReference" :: NullOrUndefined (H265GopBReference), "GopClosedCadence" :: NullOrUndefined (Int), "GopSize" :: NullOrUndefined (Number), "GopSizeUnits" :: NullOrUndefined (H265GopSizeUnits), "HrdBufferInitialFillPercentage" :: NullOrUndefined (Int), "HrdBufferSize" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (H265InterlaceMode), "MaxBitrate" :: NullOrUndefined (Int), "MinIInterval" :: NullOrUndefined (Int), "NumberBFramesBetweenReferenceFrames" :: NullOrUndefined (Int), "NumberReferenceFrames" :: NullOrUndefined (Int), "ParControl" :: NullOrUndefined (H265ParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "QualityTuningLevel" :: NullOrUndefined (H265QualityTuningLevel), "RateControlMode" :: NullOrUndefined (H265RateControlMode), "SampleAdaptiveOffsetFilterMode" :: NullOrUndefined (H265SampleAdaptiveOffsetFilterMode), "SceneChangeDetect" :: NullOrUndefined (H265SceneChangeDetect), "Slices" :: NullOrUndefined (Int), "SlowPal" :: NullOrUndefined (H265SlowPal), "SpatialAdaptiveQuantization" :: NullOrUndefined (H265SpatialAdaptiveQuantization), "Telecine" :: NullOrUndefined (H265Telecine), "TemporalAdaptiveQuantization" :: NullOrUndefined (H265TemporalAdaptiveQuantization), "TemporalIds" :: NullOrUndefined (H265TemporalIds), "Tiles" :: NullOrUndefined (H265Tiles), "UnregisteredSeiTimecode" :: NullOrUndefined (H265UnregisteredSeiTimecode) }
```

Settings for H265 codec

##### Instances
``` purescript
Newtype H265Settings _
Generic H265Settings _
Show H265Settings
Decode H265Settings
Encode H265Settings
```

#### `newH265Settings`

``` purescript
newH265Settings :: H265Settings
```

Constructs H265Settings from required parameters

#### `newH265Settings'`

``` purescript
newH265Settings' :: ({ "AdaptiveQuantization" :: NullOrUndefined (H265AdaptiveQuantization), "AlternateTransferFunctionSei" :: NullOrUndefined (H265AlternateTransferFunctionSei), "Bitrate" :: NullOrUndefined (Int), "CodecLevel" :: NullOrUndefined (H265CodecLevel), "CodecProfile" :: NullOrUndefined (H265CodecProfile), "FlickerAdaptiveQuantization" :: NullOrUndefined (H265FlickerAdaptiveQuantization), "FramerateControl" :: NullOrUndefined (H265FramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (H265FramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "GopBReference" :: NullOrUndefined (H265GopBReference), "GopClosedCadence" :: NullOrUndefined (Int), "GopSize" :: NullOrUndefined (Number), "GopSizeUnits" :: NullOrUndefined (H265GopSizeUnits), "HrdBufferInitialFillPercentage" :: NullOrUndefined (Int), "HrdBufferSize" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (H265InterlaceMode), "MaxBitrate" :: NullOrUndefined (Int), "MinIInterval" :: NullOrUndefined (Int), "NumberBFramesBetweenReferenceFrames" :: NullOrUndefined (Int), "NumberReferenceFrames" :: NullOrUndefined (Int), "ParControl" :: NullOrUndefined (H265ParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "QualityTuningLevel" :: NullOrUndefined (H265QualityTuningLevel), "RateControlMode" :: NullOrUndefined (H265RateControlMode), "SampleAdaptiveOffsetFilterMode" :: NullOrUndefined (H265SampleAdaptiveOffsetFilterMode), "SceneChangeDetect" :: NullOrUndefined (H265SceneChangeDetect), "Slices" :: NullOrUndefined (Int), "SlowPal" :: NullOrUndefined (H265SlowPal), "SpatialAdaptiveQuantization" :: NullOrUndefined (H265SpatialAdaptiveQuantization), "Telecine" :: NullOrUndefined (H265Telecine), "TemporalAdaptiveQuantization" :: NullOrUndefined (H265TemporalAdaptiveQuantization), "TemporalIds" :: NullOrUndefined (H265TemporalIds), "Tiles" :: NullOrUndefined (H265Tiles), "UnregisteredSeiTimecode" :: NullOrUndefined (H265UnregisteredSeiTimecode) } -> { "AdaptiveQuantization" :: NullOrUndefined (H265AdaptiveQuantization), "AlternateTransferFunctionSei" :: NullOrUndefined (H265AlternateTransferFunctionSei), "Bitrate" :: NullOrUndefined (Int), "CodecLevel" :: NullOrUndefined (H265CodecLevel), "CodecProfile" :: NullOrUndefined (H265CodecProfile), "FlickerAdaptiveQuantization" :: NullOrUndefined (H265FlickerAdaptiveQuantization), "FramerateControl" :: NullOrUndefined (H265FramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (H265FramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "GopBReference" :: NullOrUndefined (H265GopBReference), "GopClosedCadence" :: NullOrUndefined (Int), "GopSize" :: NullOrUndefined (Number), "GopSizeUnits" :: NullOrUndefined (H265GopSizeUnits), "HrdBufferInitialFillPercentage" :: NullOrUndefined (Int), "HrdBufferSize" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (H265InterlaceMode), "MaxBitrate" :: NullOrUndefined (Int), "MinIInterval" :: NullOrUndefined (Int), "NumberBFramesBetweenReferenceFrames" :: NullOrUndefined (Int), "NumberReferenceFrames" :: NullOrUndefined (Int), "ParControl" :: NullOrUndefined (H265ParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "QualityTuningLevel" :: NullOrUndefined (H265QualityTuningLevel), "RateControlMode" :: NullOrUndefined (H265RateControlMode), "SampleAdaptiveOffsetFilterMode" :: NullOrUndefined (H265SampleAdaptiveOffsetFilterMode), "SceneChangeDetect" :: NullOrUndefined (H265SceneChangeDetect), "Slices" :: NullOrUndefined (Int), "SlowPal" :: NullOrUndefined (H265SlowPal), "SpatialAdaptiveQuantization" :: NullOrUndefined (H265SpatialAdaptiveQuantization), "Telecine" :: NullOrUndefined (H265Telecine), "TemporalAdaptiveQuantization" :: NullOrUndefined (H265TemporalAdaptiveQuantization), "TemporalIds" :: NullOrUndefined (H265TemporalIds), "Tiles" :: NullOrUndefined (H265Tiles), "UnregisteredSeiTimecode" :: NullOrUndefined (H265UnregisteredSeiTimecode) }) -> H265Settings
```

Constructs H265Settings's fields from required parameters

#### `H265SlowPal`

``` purescript
newtype H265SlowPal
  = H265SlowPal String
```

Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.

##### Instances
``` purescript
Newtype H265SlowPal _
Generic H265SlowPal _
Show H265SlowPal
Decode H265SlowPal
Encode H265SlowPal
```

#### `H265SpatialAdaptiveQuantization`

``` purescript
newtype H265SpatialAdaptiveQuantization
  = H265SpatialAdaptiveQuantization String
```

Adjust quantization within each frame based on spatial variation of content complexity.

##### Instances
``` purescript
Newtype H265SpatialAdaptiveQuantization _
Generic H265SpatialAdaptiveQuantization _
Show H265SpatialAdaptiveQuantization
Decode H265SpatialAdaptiveQuantization
Encode H265SpatialAdaptiveQuantization
```

#### `H265Telecine`

``` purescript
newtype H265Telecine
  = H265Telecine String
```

This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.

##### Instances
``` purescript
Newtype H265Telecine _
Generic H265Telecine _
Show H265Telecine
Decode H265Telecine
Encode H265Telecine
```

#### `H265TemporalAdaptiveQuantization`

``` purescript
newtype H265TemporalAdaptiveQuantization
  = H265TemporalAdaptiveQuantization String
```

Adjust quantization within each frame based on temporal variation of content complexity.

##### Instances
``` purescript
Newtype H265TemporalAdaptiveQuantization _
Generic H265TemporalAdaptiveQuantization _
Show H265TemporalAdaptiveQuantization
Decode H265TemporalAdaptiveQuantization
Encode H265TemporalAdaptiveQuantization
```

#### `H265TemporalIds`

``` purescript
newtype H265TemporalIds
  = H265TemporalIds String
```

Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output.

##### Instances
``` purescript
Newtype H265TemporalIds _
Generic H265TemporalIds _
Show H265TemporalIds
Decode H265TemporalIds
Encode H265TemporalIds
```

#### `H265Tiles`

``` purescript
newtype H265Tiles
  = H265Tiles String
```

Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.

##### Instances
``` purescript
Newtype H265Tiles _
Generic H265Tiles _
Show H265Tiles
Decode H265Tiles
Encode H265Tiles
```

#### `H265UnregisteredSeiTimecode`

``` purescript
newtype H265UnregisteredSeiTimecode
  = H265UnregisteredSeiTimecode String
```

Inserts timecode for each frame as 4 bytes of an unregistered SEI message.

##### Instances
``` purescript
Newtype H265UnregisteredSeiTimecode _
Generic H265UnregisteredSeiTimecode _
Show H265UnregisteredSeiTimecode
Decode H265UnregisteredSeiTimecode
Encode H265UnregisteredSeiTimecode
```

#### `Hdr10Metadata`

``` purescript
newtype Hdr10Metadata
  = Hdr10Metadata { "BluePrimaryX" :: NullOrUndefined (Int), "BluePrimaryY" :: NullOrUndefined (Int), "GreenPrimaryX" :: NullOrUndefined (Int), "GreenPrimaryY" :: NullOrUndefined (Int), "MaxContentLightLevel" :: NullOrUndefined (Int), "MaxFrameAverageLightLevel" :: NullOrUndefined (Int), "MaxLuminance" :: NullOrUndefined (Int), "MinLuminance" :: NullOrUndefined (Int), "RedPrimaryX" :: NullOrUndefined (Int), "RedPrimaryY" :: NullOrUndefined (Int), "WhitePointX" :: NullOrUndefined (Int), "WhitePointY" :: NullOrUndefined (Int) }
```

Use the HDR master display (Hdr10Metadata) settings to provide values for HDR color. These values vary depending on the input video and must be provided by a color grader. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.

##### Instances
``` purescript
Newtype Hdr10Metadata _
Generic Hdr10Metadata _
Show Hdr10Metadata
Decode Hdr10Metadata
Encode Hdr10Metadata
```

#### `newHdr10Metadata`

``` purescript
newHdr10Metadata :: Hdr10Metadata
```

Constructs Hdr10Metadata from required parameters

#### `newHdr10Metadata'`

``` purescript
newHdr10Metadata' :: ({ "BluePrimaryX" :: NullOrUndefined (Int), "BluePrimaryY" :: NullOrUndefined (Int), "GreenPrimaryX" :: NullOrUndefined (Int), "GreenPrimaryY" :: NullOrUndefined (Int), "MaxContentLightLevel" :: NullOrUndefined (Int), "MaxFrameAverageLightLevel" :: NullOrUndefined (Int), "MaxLuminance" :: NullOrUndefined (Int), "MinLuminance" :: NullOrUndefined (Int), "RedPrimaryX" :: NullOrUndefined (Int), "RedPrimaryY" :: NullOrUndefined (Int), "WhitePointX" :: NullOrUndefined (Int), "WhitePointY" :: NullOrUndefined (Int) } -> { "BluePrimaryX" :: NullOrUndefined (Int), "BluePrimaryY" :: NullOrUndefined (Int), "GreenPrimaryX" :: NullOrUndefined (Int), "GreenPrimaryY" :: NullOrUndefined (Int), "MaxContentLightLevel" :: NullOrUndefined (Int), "MaxFrameAverageLightLevel" :: NullOrUndefined (Int), "MaxLuminance" :: NullOrUndefined (Int), "MinLuminance" :: NullOrUndefined (Int), "RedPrimaryX" :: NullOrUndefined (Int), "RedPrimaryY" :: NullOrUndefined (Int), "WhitePointX" :: NullOrUndefined (Int), "WhitePointY" :: NullOrUndefined (Int) }) -> Hdr10Metadata
```

Constructs Hdr10Metadata's fields from required parameters

#### `HlsAdMarkers`

``` purescript
newtype HlsAdMarkers
  = HlsAdMarkers String
```

##### Instances
``` purescript
Newtype HlsAdMarkers _
Generic HlsAdMarkers _
Show HlsAdMarkers
Decode HlsAdMarkers
Encode HlsAdMarkers
```

#### `HlsAudioTrackType`

``` purescript
newtype HlsAudioTrackType
  = HlsAudioTrackType String
```

Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO

##### Instances
``` purescript
Newtype HlsAudioTrackType _
Generic HlsAudioTrackType _
Show HlsAudioTrackType
Decode HlsAudioTrackType
Encode HlsAudioTrackType
```

#### `HlsCaptionLanguageMapping`

``` purescript
newtype HlsCaptionLanguageMapping
  = HlsCaptionLanguageMapping { "CaptionChannel" :: NullOrUndefined (Int), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageDescription" :: NullOrUndefined (String) }
```

Caption Language Mapping

##### Instances
``` purescript
Newtype HlsCaptionLanguageMapping _
Generic HlsCaptionLanguageMapping _
Show HlsCaptionLanguageMapping
Decode HlsCaptionLanguageMapping
Encode HlsCaptionLanguageMapping
```

#### `newHlsCaptionLanguageMapping`

``` purescript
newHlsCaptionLanguageMapping :: HlsCaptionLanguageMapping
```

Constructs HlsCaptionLanguageMapping from required parameters

#### `newHlsCaptionLanguageMapping'`

``` purescript
newHlsCaptionLanguageMapping' :: ({ "CaptionChannel" :: NullOrUndefined (Int), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageDescription" :: NullOrUndefined (String) } -> { "CaptionChannel" :: NullOrUndefined (Int), "LanguageCode" :: NullOrUndefined (LanguageCode), "LanguageDescription" :: NullOrUndefined (String) }) -> HlsCaptionLanguageMapping
```

Constructs HlsCaptionLanguageMapping's fields from required parameters

#### `HlsCaptionLanguageSetting`

``` purescript
newtype HlsCaptionLanguageSetting
  = HlsCaptionLanguageSetting String
```

Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest.

##### Instances
``` purescript
Newtype HlsCaptionLanguageSetting _
Generic HlsCaptionLanguageSetting _
Show HlsCaptionLanguageSetting
Decode HlsCaptionLanguageSetting
Encode HlsCaptionLanguageSetting
```

#### `HlsClientCache`

``` purescript
newtype HlsClientCache
  = HlsClientCache String
```

When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents client from saving media segments for later replay.

##### Instances
``` purescript
Newtype HlsClientCache _
Generic HlsClientCache _
Show HlsClientCache
Decode HlsClientCache
Encode HlsClientCache
```

#### `HlsCodecSpecification`

``` purescript
newtype HlsCodecSpecification
  = HlsCodecSpecification String
```

Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.

##### Instances
``` purescript
Newtype HlsCodecSpecification _
Generic HlsCodecSpecification _
Show HlsCodecSpecification
Decode HlsCodecSpecification
Encode HlsCodecSpecification
```

#### `HlsDirectoryStructure`

``` purescript
newtype HlsDirectoryStructure
  = HlsDirectoryStructure String
```

Indicates whether segments should be placed in subdirectories.

##### Instances
``` purescript
Newtype HlsDirectoryStructure _
Generic HlsDirectoryStructure _
Show HlsDirectoryStructure
Decode HlsDirectoryStructure
Encode HlsDirectoryStructure
```

#### `HlsEncryptionSettings`

``` purescript
newtype HlsEncryptionSettings
  = HlsEncryptionSettings { "ConstantInitializationVector" :: NullOrUndefined (String), "EncryptionMethod" :: NullOrUndefined (HlsEncryptionType), "InitializationVectorInManifest" :: NullOrUndefined (HlsInitializationVectorInManifest), "SpekeKeyProvider" :: NullOrUndefined (SpekeKeyProvider), "StaticKeyProvider" :: NullOrUndefined (StaticKeyProvider), "Type" :: NullOrUndefined (HlsKeyProviderType) }
```

Settings for HLS encryption

##### Instances
``` purescript
Newtype HlsEncryptionSettings _
Generic HlsEncryptionSettings _
Show HlsEncryptionSettings
Decode HlsEncryptionSettings
Encode HlsEncryptionSettings
```

#### `newHlsEncryptionSettings`

``` purescript
newHlsEncryptionSettings :: HlsEncryptionSettings
```

Constructs HlsEncryptionSettings from required parameters

#### `newHlsEncryptionSettings'`

``` purescript
newHlsEncryptionSettings' :: ({ "ConstantInitializationVector" :: NullOrUndefined (String), "EncryptionMethod" :: NullOrUndefined (HlsEncryptionType), "InitializationVectorInManifest" :: NullOrUndefined (HlsInitializationVectorInManifest), "SpekeKeyProvider" :: NullOrUndefined (SpekeKeyProvider), "StaticKeyProvider" :: NullOrUndefined (StaticKeyProvider), "Type" :: NullOrUndefined (HlsKeyProviderType) } -> { "ConstantInitializationVector" :: NullOrUndefined (String), "EncryptionMethod" :: NullOrUndefined (HlsEncryptionType), "InitializationVectorInManifest" :: NullOrUndefined (HlsInitializationVectorInManifest), "SpekeKeyProvider" :: NullOrUndefined (SpekeKeyProvider), "StaticKeyProvider" :: NullOrUndefined (StaticKeyProvider), "Type" :: NullOrUndefined (HlsKeyProviderType) }) -> HlsEncryptionSettings
```

Constructs HlsEncryptionSettings's fields from required parameters

#### `HlsEncryptionType`

``` purescript
newtype HlsEncryptionType
  = HlsEncryptionType String
```

Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption.

##### Instances
``` purescript
Newtype HlsEncryptionType _
Generic HlsEncryptionType _
Show HlsEncryptionType
Decode HlsEncryptionType
Encode HlsEncryptionType
```

#### `HlsGroupSettings`

``` purescript
newtype HlsGroupSettings
  = HlsGroupSettings { "AdMarkers" :: NullOrUndefined (ListOfHlsAdMarkers), "BaseUrl" :: NullOrUndefined (String), "CaptionLanguageMappings" :: NullOrUndefined (ListOfHlsCaptionLanguageMapping), "CaptionLanguageSetting" :: NullOrUndefined (HlsCaptionLanguageSetting), "ClientCache" :: NullOrUndefined (HlsClientCache), "CodecSpecification" :: NullOrUndefined (HlsCodecSpecification), "Destination" :: NullOrUndefined (String), "DirectoryStructure" :: NullOrUndefined (HlsDirectoryStructure), "Encryption" :: NullOrUndefined (HlsEncryptionSettings), "ManifestCompression" :: NullOrUndefined (HlsManifestCompression), "ManifestDurationFormat" :: NullOrUndefined (HlsManifestDurationFormat), "MinSegmentLength" :: NullOrUndefined (Int), "OutputSelection" :: NullOrUndefined (HlsOutputSelection), "ProgramDateTime" :: NullOrUndefined (HlsProgramDateTime), "ProgramDateTimePeriod" :: NullOrUndefined (Int), "SegmentControl" :: NullOrUndefined (HlsSegmentControl), "SegmentLength" :: NullOrUndefined (Int), "SegmentsPerSubdirectory" :: NullOrUndefined (Int), "StreamInfResolution" :: NullOrUndefined (HlsStreamInfResolution), "TimedMetadataId3Frame" :: NullOrUndefined (HlsTimedMetadataId3Frame), "TimedMetadataId3Period" :: NullOrUndefined (Int), "TimestampDeltaMilliseconds" :: NullOrUndefined (Int) }
```

Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to HLS_GROUP_SETTINGS.

##### Instances
``` purescript
Newtype HlsGroupSettings _
Generic HlsGroupSettings _
Show HlsGroupSettings
Decode HlsGroupSettings
Encode HlsGroupSettings
```

#### `newHlsGroupSettings`

``` purescript
newHlsGroupSettings :: HlsGroupSettings
```

Constructs HlsGroupSettings from required parameters

#### `newHlsGroupSettings'`

``` purescript
newHlsGroupSettings' :: ({ "AdMarkers" :: NullOrUndefined (ListOfHlsAdMarkers), "BaseUrl" :: NullOrUndefined (String), "CaptionLanguageMappings" :: NullOrUndefined (ListOfHlsCaptionLanguageMapping), "CaptionLanguageSetting" :: NullOrUndefined (HlsCaptionLanguageSetting), "ClientCache" :: NullOrUndefined (HlsClientCache), "CodecSpecification" :: NullOrUndefined (HlsCodecSpecification), "Destination" :: NullOrUndefined (String), "DirectoryStructure" :: NullOrUndefined (HlsDirectoryStructure), "Encryption" :: NullOrUndefined (HlsEncryptionSettings), "ManifestCompression" :: NullOrUndefined (HlsManifestCompression), "ManifestDurationFormat" :: NullOrUndefined (HlsManifestDurationFormat), "MinSegmentLength" :: NullOrUndefined (Int), "OutputSelection" :: NullOrUndefined (HlsOutputSelection), "ProgramDateTime" :: NullOrUndefined (HlsProgramDateTime), "ProgramDateTimePeriod" :: NullOrUndefined (Int), "SegmentControl" :: NullOrUndefined (HlsSegmentControl), "SegmentLength" :: NullOrUndefined (Int), "SegmentsPerSubdirectory" :: NullOrUndefined (Int), "StreamInfResolution" :: NullOrUndefined (HlsStreamInfResolution), "TimedMetadataId3Frame" :: NullOrUndefined (HlsTimedMetadataId3Frame), "TimedMetadataId3Period" :: NullOrUndefined (Int), "TimestampDeltaMilliseconds" :: NullOrUndefined (Int) } -> { "AdMarkers" :: NullOrUndefined (ListOfHlsAdMarkers), "BaseUrl" :: NullOrUndefined (String), "CaptionLanguageMappings" :: NullOrUndefined (ListOfHlsCaptionLanguageMapping), "CaptionLanguageSetting" :: NullOrUndefined (HlsCaptionLanguageSetting), "ClientCache" :: NullOrUndefined (HlsClientCache), "CodecSpecification" :: NullOrUndefined (HlsCodecSpecification), "Destination" :: NullOrUndefined (String), "DirectoryStructure" :: NullOrUndefined (HlsDirectoryStructure), "Encryption" :: NullOrUndefined (HlsEncryptionSettings), "ManifestCompression" :: NullOrUndefined (HlsManifestCompression), "ManifestDurationFormat" :: NullOrUndefined (HlsManifestDurationFormat), "MinSegmentLength" :: NullOrUndefined (Int), "OutputSelection" :: NullOrUndefined (HlsOutputSelection), "ProgramDateTime" :: NullOrUndefined (HlsProgramDateTime), "ProgramDateTimePeriod" :: NullOrUndefined (Int), "SegmentControl" :: NullOrUndefined (HlsSegmentControl), "SegmentLength" :: NullOrUndefined (Int), "SegmentsPerSubdirectory" :: NullOrUndefined (Int), "StreamInfResolution" :: NullOrUndefined (HlsStreamInfResolution), "TimedMetadataId3Frame" :: NullOrUndefined (HlsTimedMetadataId3Frame), "TimedMetadataId3Period" :: NullOrUndefined (Int), "TimestampDeltaMilliseconds" :: NullOrUndefined (Int) }) -> HlsGroupSettings
```

Constructs HlsGroupSettings's fields from required parameters

#### `HlsIFrameOnlyManifest`

``` purescript
newtype HlsIFrameOnlyManifest
  = HlsIFrameOnlyManifest String
```

When set to INCLUDE, writes I-Frame Only Manifest in addition to the HLS manifest

##### Instances
``` purescript
Newtype HlsIFrameOnlyManifest _
Generic HlsIFrameOnlyManifest _
Show HlsIFrameOnlyManifest
Decode HlsIFrameOnlyManifest
Encode HlsIFrameOnlyManifest
```

#### `HlsInitializationVectorInManifest`

``` purescript
newtype HlsInitializationVectorInManifest
  = HlsInitializationVectorInManifest String
```

The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest.

##### Instances
``` purescript
Newtype HlsInitializationVectorInManifest _
Generic HlsInitializationVectorInManifest _
Show HlsInitializationVectorInManifest
Decode HlsInitializationVectorInManifest
Encode HlsInitializationVectorInManifest
```

#### `HlsKeyProviderType`

``` purescript
newtype HlsKeyProviderType
  = HlsKeyProviderType String
```

Indicates which type of key provider is used for encryption.

##### Instances
``` purescript
Newtype HlsKeyProviderType _
Generic HlsKeyProviderType _
Show HlsKeyProviderType
Decode HlsKeyProviderType
Encode HlsKeyProviderType
```

#### `HlsManifestCompression`

``` purescript
newtype HlsManifestCompression
  = HlsManifestCompression String
```

When set to GZIP, compresses HLS playlist.

##### Instances
``` purescript
Newtype HlsManifestCompression _
Generic HlsManifestCompression _
Show HlsManifestCompression
Decode HlsManifestCompression
Encode HlsManifestCompression
```

#### `HlsManifestDurationFormat`

``` purescript
newtype HlsManifestDurationFormat
  = HlsManifestDurationFormat String
```

Indicates whether the output manifest should use floating point values for segment duration.

##### Instances
``` purescript
Newtype HlsManifestDurationFormat _
Generic HlsManifestDurationFormat _
Show HlsManifestDurationFormat
Decode HlsManifestDurationFormat
Encode HlsManifestDurationFormat
```

#### `HlsOutputSelection`

``` purescript
newtype HlsOutputSelection
  = HlsOutputSelection String
```

Indicates whether the .m3u8 manifest file should be generated for this HLS output group.

##### Instances
``` purescript
Newtype HlsOutputSelection _
Generic HlsOutputSelection _
Show HlsOutputSelection
Decode HlsOutputSelection
Encode HlsOutputSelection
```

#### `HlsProgramDateTime`

``` purescript
newtype HlsProgramDateTime
  = HlsProgramDateTime String
```

Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset.

##### Instances
``` purescript
Newtype HlsProgramDateTime _
Generic HlsProgramDateTime _
Show HlsProgramDateTime
Decode HlsProgramDateTime
Encode HlsProgramDateTime
```

#### `HlsSegmentControl`

``` purescript
newtype HlsSegmentControl
  = HlsSegmentControl String
```

When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback.

##### Instances
``` purescript
Newtype HlsSegmentControl _
Generic HlsSegmentControl _
Show HlsSegmentControl
Decode HlsSegmentControl
Encode HlsSegmentControl
```

#### `HlsSettings`

``` purescript
newtype HlsSettings
  = HlsSettings { "AudioGroupId" :: NullOrUndefined (String), "AudioRenditionSets" :: NullOrUndefined (String), "AudioTrackType" :: NullOrUndefined (HlsAudioTrackType), "IFrameOnlyManifest" :: NullOrUndefined (HlsIFrameOnlyManifest), "SegmentModifier" :: NullOrUndefined (String) }
```

Settings for HLS output groups

##### Instances
``` purescript
Newtype HlsSettings _
Generic HlsSettings _
Show HlsSettings
Decode HlsSettings
Encode HlsSettings
```

#### `newHlsSettings`

``` purescript
newHlsSettings :: HlsSettings
```

Constructs HlsSettings from required parameters

#### `newHlsSettings'`

``` purescript
newHlsSettings' :: ({ "AudioGroupId" :: NullOrUndefined (String), "AudioRenditionSets" :: NullOrUndefined (String), "AudioTrackType" :: NullOrUndefined (HlsAudioTrackType), "IFrameOnlyManifest" :: NullOrUndefined (HlsIFrameOnlyManifest), "SegmentModifier" :: NullOrUndefined (String) } -> { "AudioGroupId" :: NullOrUndefined (String), "AudioRenditionSets" :: NullOrUndefined (String), "AudioTrackType" :: NullOrUndefined (HlsAudioTrackType), "IFrameOnlyManifest" :: NullOrUndefined (HlsIFrameOnlyManifest), "SegmentModifier" :: NullOrUndefined (String) }) -> HlsSettings
```

Constructs HlsSettings's fields from required parameters

#### `HlsStreamInfResolution`

``` purescript
newtype HlsStreamInfResolution
  = HlsStreamInfResolution String
```

Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.

##### Instances
``` purescript
Newtype HlsStreamInfResolution _
Generic HlsStreamInfResolution _
Show HlsStreamInfResolution
Decode HlsStreamInfResolution
Encode HlsStreamInfResolution
```

#### `HlsTimedMetadataId3Frame`

``` purescript
newtype HlsTimedMetadataId3Frame
  = HlsTimedMetadataId3Frame String
```

Indicates ID3 frame that has the timecode.

##### Instances
``` purescript
Newtype HlsTimedMetadataId3Frame _
Generic HlsTimedMetadataId3Frame _
Show HlsTimedMetadataId3Frame
Decode HlsTimedMetadataId3Frame
Encode HlsTimedMetadataId3Frame
```

#### `Id3Insertion`

``` purescript
newtype Id3Insertion
  = Id3Insertion { "Id3" :: NullOrUndefined (String), "Timecode" :: NullOrUndefined (String) }
```

To insert ID3 tags in your output, specify two values. Use ID3 tag (Id3) to specify the base 64 encoded string and use Timecode (TimeCode) to specify the time when the tag should be inserted. To insert multiple ID3 tags in your output, create mulitple instances of ID3 insertion (Id3Insertion).

##### Instances
``` purescript
Newtype Id3Insertion _
Generic Id3Insertion _
Show Id3Insertion
Decode Id3Insertion
Encode Id3Insertion
```

#### `newId3Insertion`

``` purescript
newId3Insertion :: Id3Insertion
```

Constructs Id3Insertion from required parameters

#### `newId3Insertion'`

``` purescript
newId3Insertion' :: ({ "Id3" :: NullOrUndefined (String), "Timecode" :: NullOrUndefined (String) } -> { "Id3" :: NullOrUndefined (String), "Timecode" :: NullOrUndefined (String) }) -> Id3Insertion
```

Constructs Id3Insertion's fields from required parameters

#### `ImageInserter`

``` purescript
newtype ImageInserter
  = ImageInserter { "InsertableImages" :: NullOrUndefined (ListOfInsertableImage) }
```

Enable the Image inserter (ImageInserter) feature to include a graphic overlay on your video. Enable or disable this feature for each output individually. This setting is disabled by default.

##### Instances
``` purescript
Newtype ImageInserter _
Generic ImageInserter _
Show ImageInserter
Decode ImageInserter
Encode ImageInserter
```

#### `newImageInserter`

``` purescript
newImageInserter :: ImageInserter
```

Constructs ImageInserter from required parameters

#### `newImageInserter'`

``` purescript
newImageInserter' :: ({ "InsertableImages" :: NullOrUndefined (ListOfInsertableImage) } -> { "InsertableImages" :: NullOrUndefined (ListOfInsertableImage) }) -> ImageInserter
```

Constructs ImageInserter's fields from required parameters

#### `Input`

``` purescript
newtype Input
  = Input { "AudioSelectorGroups" :: NullOrUndefined (MapOfAudioSelectorGroup), "AudioSelectors" :: NullOrUndefined (MapOfAudioSelector), "CaptionSelectors" :: NullOrUndefined (MapOfCaptionSelector), "DeblockFilter" :: NullOrUndefined (InputDeblockFilter), "DenoiseFilter" :: NullOrUndefined (InputDenoiseFilter), "FileInput" :: NullOrUndefined (String), "FilterEnable" :: NullOrUndefined (InputFilterEnable), "FilterStrength" :: NullOrUndefined (Int), "InputClippings" :: NullOrUndefined (ListOfInputClipping), "ProgramNumber" :: NullOrUndefined (Int), "PsiControl" :: NullOrUndefined (InputPsiControl), "TimecodeSource" :: NullOrUndefined (InputTimecodeSource), "VideoSelector" :: NullOrUndefined (VideoSelector) }
```

Specifies media input

##### Instances
``` purescript
Newtype Input _
Generic Input _
Show Input
Decode Input
Encode Input
```

#### `newInput`

``` purescript
newInput :: Input
```

Constructs Input from required parameters

#### `newInput'`

``` purescript
newInput' :: ({ "AudioSelectorGroups" :: NullOrUndefined (MapOfAudioSelectorGroup), "AudioSelectors" :: NullOrUndefined (MapOfAudioSelector), "CaptionSelectors" :: NullOrUndefined (MapOfCaptionSelector), "DeblockFilter" :: NullOrUndefined (InputDeblockFilter), "DenoiseFilter" :: NullOrUndefined (InputDenoiseFilter), "FileInput" :: NullOrUndefined (String), "FilterEnable" :: NullOrUndefined (InputFilterEnable), "FilterStrength" :: NullOrUndefined (Int), "InputClippings" :: NullOrUndefined (ListOfInputClipping), "ProgramNumber" :: NullOrUndefined (Int), "PsiControl" :: NullOrUndefined (InputPsiControl), "TimecodeSource" :: NullOrUndefined (InputTimecodeSource), "VideoSelector" :: NullOrUndefined (VideoSelector) } -> { "AudioSelectorGroups" :: NullOrUndefined (MapOfAudioSelectorGroup), "AudioSelectors" :: NullOrUndefined (MapOfAudioSelector), "CaptionSelectors" :: NullOrUndefined (MapOfCaptionSelector), "DeblockFilter" :: NullOrUndefined (InputDeblockFilter), "DenoiseFilter" :: NullOrUndefined (InputDenoiseFilter), "FileInput" :: NullOrUndefined (String), "FilterEnable" :: NullOrUndefined (InputFilterEnable), "FilterStrength" :: NullOrUndefined (Int), "InputClippings" :: NullOrUndefined (ListOfInputClipping), "ProgramNumber" :: NullOrUndefined (Int), "PsiControl" :: NullOrUndefined (InputPsiControl), "TimecodeSource" :: NullOrUndefined (InputTimecodeSource), "VideoSelector" :: NullOrUndefined (VideoSelector) }) -> Input
```

Constructs Input's fields from required parameters

#### `InputClipping`

``` purescript
newtype InputClipping
  = InputClipping { "EndTimecode" :: NullOrUndefined (String), "StartTimecode" :: NullOrUndefined (String) }
```

Include one instance of (InputClipping) for each input clip.

##### Instances
``` purescript
Newtype InputClipping _
Generic InputClipping _
Show InputClipping
Decode InputClipping
Encode InputClipping
```

#### `newInputClipping`

``` purescript
newInputClipping :: InputClipping
```

Constructs InputClipping from required parameters

#### `newInputClipping'`

``` purescript
newInputClipping' :: ({ "EndTimecode" :: NullOrUndefined (String), "StartTimecode" :: NullOrUndefined (String) } -> { "EndTimecode" :: NullOrUndefined (String), "StartTimecode" :: NullOrUndefined (String) }) -> InputClipping
```

Constructs InputClipping's fields from required parameters

#### `InputDeblockFilter`

``` purescript
newtype InputDeblockFilter
  = InputDeblockFilter String
```

Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manaully controllable for MPEG2 and uncompressed video inputs.

##### Instances
``` purescript
Newtype InputDeblockFilter _
Generic InputDeblockFilter _
Show InputDeblockFilter
Decode InputDeblockFilter
Encode InputDeblockFilter
```

#### `InputDenoiseFilter`

``` purescript
newtype InputDenoiseFilter
  = InputDenoiseFilter String
```

Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.

##### Instances
``` purescript
Newtype InputDenoiseFilter _
Generic InputDenoiseFilter _
Show InputDenoiseFilter
Decode InputDenoiseFilter
Encode InputDenoiseFilter
```

#### `InputFilterEnable`

``` purescript
newtype InputFilterEnable
  = InputFilterEnable String
```

Use Filter enable (InputFilterEnable) to specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The in put is filtered regardless of input type.

##### Instances
``` purescript
Newtype InputFilterEnable _
Generic InputFilterEnable _
Show InputFilterEnable
Decode InputFilterEnable
Encode InputFilterEnable
```

#### `InputPsiControl`

``` purescript
newtype InputPsiControl
  = InputPsiControl String
```

Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data.

##### Instances
``` purescript
Newtype InputPsiControl _
Generic InputPsiControl _
Show InputPsiControl
Decode InputPsiControl
Encode InputPsiControl
```

#### `InputTemplate`

``` purescript
newtype InputTemplate
  = InputTemplate { "AudioSelectorGroups" :: NullOrUndefined (MapOfAudioSelectorGroup), "AudioSelectors" :: NullOrUndefined (MapOfAudioSelector), "CaptionSelectors" :: NullOrUndefined (MapOfCaptionSelector), "DeblockFilter" :: NullOrUndefined (InputDeblockFilter), "DenoiseFilter" :: NullOrUndefined (InputDenoiseFilter), "FilterEnable" :: NullOrUndefined (InputFilterEnable), "FilterStrength" :: NullOrUndefined (Int), "InputClippings" :: NullOrUndefined (ListOfInputClipping), "ProgramNumber" :: NullOrUndefined (Int), "PsiControl" :: NullOrUndefined (InputPsiControl), "TimecodeSource" :: NullOrUndefined (InputTimecodeSource), "VideoSelector" :: NullOrUndefined (VideoSelector) }
```

Specified video input in a template.

##### Instances
``` purescript
Newtype InputTemplate _
Generic InputTemplate _
Show InputTemplate
Decode InputTemplate
Encode InputTemplate
```

#### `newInputTemplate`

``` purescript
newInputTemplate :: InputTemplate
```

Constructs InputTemplate from required parameters

#### `newInputTemplate'`

``` purescript
newInputTemplate' :: ({ "AudioSelectorGroups" :: NullOrUndefined (MapOfAudioSelectorGroup), "AudioSelectors" :: NullOrUndefined (MapOfAudioSelector), "CaptionSelectors" :: NullOrUndefined (MapOfCaptionSelector), "DeblockFilter" :: NullOrUndefined (InputDeblockFilter), "DenoiseFilter" :: NullOrUndefined (InputDenoiseFilter), "FilterEnable" :: NullOrUndefined (InputFilterEnable), "FilterStrength" :: NullOrUndefined (Int), "InputClippings" :: NullOrUndefined (ListOfInputClipping), "ProgramNumber" :: NullOrUndefined (Int), "PsiControl" :: NullOrUndefined (InputPsiControl), "TimecodeSource" :: NullOrUndefined (InputTimecodeSource), "VideoSelector" :: NullOrUndefined (VideoSelector) } -> { "AudioSelectorGroups" :: NullOrUndefined (MapOfAudioSelectorGroup), "AudioSelectors" :: NullOrUndefined (MapOfAudioSelector), "CaptionSelectors" :: NullOrUndefined (MapOfCaptionSelector), "DeblockFilter" :: NullOrUndefined (InputDeblockFilter), "DenoiseFilter" :: NullOrUndefined (InputDenoiseFilter), "FilterEnable" :: NullOrUndefined (InputFilterEnable), "FilterStrength" :: NullOrUndefined (Int), "InputClippings" :: NullOrUndefined (ListOfInputClipping), "ProgramNumber" :: NullOrUndefined (Int), "PsiControl" :: NullOrUndefined (InputPsiControl), "TimecodeSource" :: NullOrUndefined (InputTimecodeSource), "VideoSelector" :: NullOrUndefined (VideoSelector) }) -> InputTemplate
```

Constructs InputTemplate's fields from required parameters

#### `InputTimecodeSource`

``` purescript
newtype InputTimecodeSource
  = InputTimecodeSource String
```

Use Timecode source (InputTimecodeSource) to specify how timecode information from your input is adjusted and encoded in all outputs for the job. Default is embedded. Set to Embedded (EMBEDDED) to use the timecode that is in the input video. If no embedded timecode is in the source, will set the timecode for the first frame to 00:00:00:00. Set to Start at 0 (ZEROBASED) to set the timecode of the initial frame to 00:00:00:00. Set to Specified start (SPECIFIEDSTART) to provide the initial timecode yourself the setting (Start).

##### Instances
``` purescript
Newtype InputTimecodeSource _
Generic InputTimecodeSource _
Show InputTimecodeSource
Decode InputTimecodeSource
Encode InputTimecodeSource
```

#### `InsertableImage`

``` purescript
newtype InsertableImage
  = InsertableImage { "Duration" :: NullOrUndefined (Int), "FadeIn" :: NullOrUndefined (Int), "FadeOut" :: NullOrUndefined (Int), "Height" :: NullOrUndefined (Int), "ImageInserterInput" :: NullOrUndefined (String), "ImageX" :: NullOrUndefined (Int), "ImageY" :: NullOrUndefined (Int), "Layer" :: NullOrUndefined (Int), "Opacity" :: NullOrUndefined (Int), "StartTime" :: NullOrUndefined (String), "Width" :: NullOrUndefined (Int) }
```

Settings for Insertable Image

##### Instances
``` purescript
Newtype InsertableImage _
Generic InsertableImage _
Show InsertableImage
Decode InsertableImage
Encode InsertableImage
```

#### `newInsertableImage`

``` purescript
newInsertableImage :: InsertableImage
```

Constructs InsertableImage from required parameters

#### `newInsertableImage'`

``` purescript
newInsertableImage' :: ({ "Duration" :: NullOrUndefined (Int), "FadeIn" :: NullOrUndefined (Int), "FadeOut" :: NullOrUndefined (Int), "Height" :: NullOrUndefined (Int), "ImageInserterInput" :: NullOrUndefined (String), "ImageX" :: NullOrUndefined (Int), "ImageY" :: NullOrUndefined (Int), "Layer" :: NullOrUndefined (Int), "Opacity" :: NullOrUndefined (Int), "StartTime" :: NullOrUndefined (String), "Width" :: NullOrUndefined (Int) } -> { "Duration" :: NullOrUndefined (Int), "FadeIn" :: NullOrUndefined (Int), "FadeOut" :: NullOrUndefined (Int), "Height" :: NullOrUndefined (Int), "ImageInserterInput" :: NullOrUndefined (String), "ImageX" :: NullOrUndefined (Int), "ImageY" :: NullOrUndefined (Int), "Layer" :: NullOrUndefined (Int), "Opacity" :: NullOrUndefined (Int), "StartTime" :: NullOrUndefined (String), "Width" :: NullOrUndefined (Int) }) -> InsertableImage
```

Constructs InsertableImage's fields from required parameters

#### `InternalServerErrorException`

``` purescript
newtype InternalServerErrorException
  = InternalServerErrorException { "Message" :: NullOrUndefined (String) }
```

The service encountered an unexpected condition and cannot fulfill your request.

##### Instances
``` purescript
Newtype InternalServerErrorException _
Generic InternalServerErrorException _
Show InternalServerErrorException
Decode InternalServerErrorException
Encode InternalServerErrorException
```

#### `newInternalServerErrorException`

``` purescript
newInternalServerErrorException :: InternalServerErrorException
```

Constructs InternalServerErrorException from required parameters

#### `newInternalServerErrorException'`

``` purescript
newInternalServerErrorException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InternalServerErrorException
```

Constructs InternalServerErrorException's fields from required parameters

#### `Job`

``` purescript
newtype Job
  = Job { "Arn" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "ErrorCode" :: NullOrUndefined (Int), "ErrorMessage" :: NullOrUndefined (String), "Id" :: NullOrUndefined (String), "JobTemplate" :: NullOrUndefined (String), "OutputGroupDetails" :: NullOrUndefined (ListOfOutputGroupDetail), "Queue" :: NullOrUndefined (String), "Role" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobSettings), "Status" :: NullOrUndefined (JobStatus), "Timing" :: NullOrUndefined (Timing), "UserMetadata" :: NullOrUndefined (MapOf__string) }
```

Each job converts an input file into an output file or files. For more information, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

##### Instances
``` purescript
Newtype Job _
Generic Job _
Show Job
Decode Job
Encode Job
```

#### `newJob`

``` purescript
newJob :: Job
```

Constructs Job from required parameters

#### `newJob'`

``` purescript
newJob' :: ({ "Arn" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "ErrorCode" :: NullOrUndefined (Int), "ErrorMessage" :: NullOrUndefined (String), "Id" :: NullOrUndefined (String), "JobTemplate" :: NullOrUndefined (String), "OutputGroupDetails" :: NullOrUndefined (ListOfOutputGroupDetail), "Queue" :: NullOrUndefined (String), "Role" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobSettings), "Status" :: NullOrUndefined (JobStatus), "Timing" :: NullOrUndefined (Timing), "UserMetadata" :: NullOrUndefined (MapOf__string) } -> { "Arn" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "ErrorCode" :: NullOrUndefined (Int), "ErrorMessage" :: NullOrUndefined (String), "Id" :: NullOrUndefined (String), "JobTemplate" :: NullOrUndefined (String), "OutputGroupDetails" :: NullOrUndefined (ListOfOutputGroupDetail), "Queue" :: NullOrUndefined (String), "Role" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobSettings), "Status" :: NullOrUndefined (JobStatus), "Timing" :: NullOrUndefined (Timing), "UserMetadata" :: NullOrUndefined (MapOf__string) }) -> Job
```

Constructs Job's fields from required parameters

#### `JobSettings`

``` purescript
newtype JobSettings
  = JobSettings { "AdAvailOffset" :: NullOrUndefined (Int), "AvailBlanking" :: NullOrUndefined (AvailBlanking), "Inputs" :: NullOrUndefined (ListOfInput), "NielsenConfiguration" :: NullOrUndefined (NielsenConfiguration), "OutputGroups" :: NullOrUndefined (ListOfOutputGroup), "TimecodeConfig" :: NullOrUndefined (TimecodeConfig), "TimedMetadataInsertion" :: NullOrUndefined (TimedMetadataInsertion) }
```

JobSettings contains all the transcode settings for a job.

##### Instances
``` purescript
Newtype JobSettings _
Generic JobSettings _
Show JobSettings
Decode JobSettings
Encode JobSettings
```

#### `newJobSettings`

``` purescript
newJobSettings :: JobSettings
```

Constructs JobSettings from required parameters

#### `newJobSettings'`

``` purescript
newJobSettings' :: ({ "AdAvailOffset" :: NullOrUndefined (Int), "AvailBlanking" :: NullOrUndefined (AvailBlanking), "Inputs" :: NullOrUndefined (ListOfInput), "NielsenConfiguration" :: NullOrUndefined (NielsenConfiguration), "OutputGroups" :: NullOrUndefined (ListOfOutputGroup), "TimecodeConfig" :: NullOrUndefined (TimecodeConfig), "TimedMetadataInsertion" :: NullOrUndefined (TimedMetadataInsertion) } -> { "AdAvailOffset" :: NullOrUndefined (Int), "AvailBlanking" :: NullOrUndefined (AvailBlanking), "Inputs" :: NullOrUndefined (ListOfInput), "NielsenConfiguration" :: NullOrUndefined (NielsenConfiguration), "OutputGroups" :: NullOrUndefined (ListOfOutputGroup), "TimecodeConfig" :: NullOrUndefined (TimecodeConfig), "TimedMetadataInsertion" :: NullOrUndefined (TimedMetadataInsertion) }) -> JobSettings
```

Constructs JobSettings's fields from required parameters

#### `JobStatus`

``` purescript
newtype JobStatus
  = JobStatus String
```

A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.

##### Instances
``` purescript
Newtype JobStatus _
Generic JobStatus _
Show JobStatus
Decode JobStatus
Encode JobStatus
```

#### `JobTemplate`

``` purescript
newtype JobTemplate
  = JobTemplate { "Arn" :: NullOrUndefined (String), "Category" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "LastUpdated" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Queue" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobTemplateSettings), "Type" :: NullOrUndefined (Type) }
```

A job template is a pre-made set of encoding instructions that you can use to quickly create a job.

##### Instances
``` purescript
Newtype JobTemplate _
Generic JobTemplate _
Show JobTemplate
Decode JobTemplate
Encode JobTemplate
```

#### `newJobTemplate`

``` purescript
newJobTemplate :: JobTemplate
```

Constructs JobTemplate from required parameters

#### `newJobTemplate'`

``` purescript
newJobTemplate' :: ({ "Arn" :: NullOrUndefined (String), "Category" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "LastUpdated" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Queue" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobTemplateSettings), "Type" :: NullOrUndefined (Type) } -> { "Arn" :: NullOrUndefined (String), "Category" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "LastUpdated" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Queue" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobTemplateSettings), "Type" :: NullOrUndefined (Type) }) -> JobTemplate
```

Constructs JobTemplate's fields from required parameters

#### `JobTemplateListBy`

``` purescript
newtype JobTemplateListBy
  = JobTemplateListBy String
```

Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.

##### Instances
``` purescript
Newtype JobTemplateListBy _
Generic JobTemplateListBy _
Show JobTemplateListBy
Decode JobTemplateListBy
Encode JobTemplateListBy
```

#### `JobTemplateSettings`

``` purescript
newtype JobTemplateSettings
  = JobTemplateSettings { "AdAvailOffset" :: NullOrUndefined (Int), "AvailBlanking" :: NullOrUndefined (AvailBlanking), "Inputs" :: NullOrUndefined (ListOfInputTemplate), "NielsenConfiguration" :: NullOrUndefined (NielsenConfiguration), "OutputGroups" :: NullOrUndefined (ListOfOutputGroup), "TimecodeConfig" :: NullOrUndefined (TimecodeConfig), "TimedMetadataInsertion" :: NullOrUndefined (TimedMetadataInsertion) }
```

JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.

##### Instances
``` purescript
Newtype JobTemplateSettings _
Generic JobTemplateSettings _
Show JobTemplateSettings
Decode JobTemplateSettings
Encode JobTemplateSettings
```

#### `newJobTemplateSettings`

``` purescript
newJobTemplateSettings :: JobTemplateSettings
```

Constructs JobTemplateSettings from required parameters

#### `newJobTemplateSettings'`

``` purescript
newJobTemplateSettings' :: ({ "AdAvailOffset" :: NullOrUndefined (Int), "AvailBlanking" :: NullOrUndefined (AvailBlanking), "Inputs" :: NullOrUndefined (ListOfInputTemplate), "NielsenConfiguration" :: NullOrUndefined (NielsenConfiguration), "OutputGroups" :: NullOrUndefined (ListOfOutputGroup), "TimecodeConfig" :: NullOrUndefined (TimecodeConfig), "TimedMetadataInsertion" :: NullOrUndefined (TimedMetadataInsertion) } -> { "AdAvailOffset" :: NullOrUndefined (Int), "AvailBlanking" :: NullOrUndefined (AvailBlanking), "Inputs" :: NullOrUndefined (ListOfInputTemplate), "NielsenConfiguration" :: NullOrUndefined (NielsenConfiguration), "OutputGroups" :: NullOrUndefined (ListOfOutputGroup), "TimecodeConfig" :: NullOrUndefined (TimecodeConfig), "TimedMetadataInsertion" :: NullOrUndefined (TimedMetadataInsertion) }) -> JobTemplateSettings
```

Constructs JobTemplateSettings's fields from required parameters

#### `LanguageCode`

``` purescript
newtype LanguageCode
  = LanguageCode String
```

Code to specify the language, following the specification "ISO 639-2 three-digit code":http://www.loc.gov/standards/iso639-2/

##### Instances
``` purescript
Newtype LanguageCode _
Generic LanguageCode _
Show LanguageCode
Decode LanguageCode
Encode LanguageCode
```

#### `ListJobTemplatesRequest`

``` purescript
newtype ListJobTemplatesRequest
  = ListJobTemplatesRequest { "Category" :: NullOrUndefined (String), "ListBy" :: NullOrUndefined (JobTemplateListBy), "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order) }
```

##### Instances
``` purescript
Newtype ListJobTemplatesRequest _
Generic ListJobTemplatesRequest _
Show ListJobTemplatesRequest
Decode ListJobTemplatesRequest
Encode ListJobTemplatesRequest
```

#### `newListJobTemplatesRequest`

``` purescript
newListJobTemplatesRequest :: ListJobTemplatesRequest
```

Constructs ListJobTemplatesRequest from required parameters

#### `newListJobTemplatesRequest'`

``` purescript
newListJobTemplatesRequest' :: ({ "Category" :: NullOrUndefined (String), "ListBy" :: NullOrUndefined (JobTemplateListBy), "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order) } -> { "Category" :: NullOrUndefined (String), "ListBy" :: NullOrUndefined (JobTemplateListBy), "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order) }) -> ListJobTemplatesRequest
```

Constructs ListJobTemplatesRequest's fields from required parameters

#### `ListJobTemplatesResponse`

``` purescript
newtype ListJobTemplatesResponse
  = ListJobTemplatesResponse { "JobTemplates" :: NullOrUndefined (ListOfJobTemplate), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListJobTemplatesResponse _
Generic ListJobTemplatesResponse _
Show ListJobTemplatesResponse
Decode ListJobTemplatesResponse
Encode ListJobTemplatesResponse
```

#### `newListJobTemplatesResponse`

``` purescript
newListJobTemplatesResponse :: ListJobTemplatesResponse
```

Constructs ListJobTemplatesResponse from required parameters

#### `newListJobTemplatesResponse'`

``` purescript
newListJobTemplatesResponse' :: ({ "JobTemplates" :: NullOrUndefined (ListOfJobTemplate), "NextToken" :: NullOrUndefined (String) } -> { "JobTemplates" :: NullOrUndefined (ListOfJobTemplate), "NextToken" :: NullOrUndefined (String) }) -> ListJobTemplatesResponse
```

Constructs ListJobTemplatesResponse's fields from required parameters

#### `ListJobsRequest`

``` purescript
newtype ListJobsRequest
  = ListJobsRequest { "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order), "Queue" :: NullOrUndefined (String), "Status" :: NullOrUndefined (JobStatus) }
```

##### Instances
``` purescript
Newtype ListJobsRequest _
Generic ListJobsRequest _
Show ListJobsRequest
Decode ListJobsRequest
Encode ListJobsRequest
```

#### `newListJobsRequest`

``` purescript
newListJobsRequest :: ListJobsRequest
```

Constructs ListJobsRequest from required parameters

#### `newListJobsRequest'`

``` purescript
newListJobsRequest' :: ({ "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order), "Queue" :: NullOrUndefined (String), "Status" :: NullOrUndefined (JobStatus) } -> { "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order), "Queue" :: NullOrUndefined (String), "Status" :: NullOrUndefined (JobStatus) }) -> ListJobsRequest
```

Constructs ListJobsRequest's fields from required parameters

#### `ListJobsResponse`

``` purescript
newtype ListJobsResponse
  = ListJobsResponse { "Jobs" :: NullOrUndefined (ListOfJob), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListJobsResponse _
Generic ListJobsResponse _
Show ListJobsResponse
Decode ListJobsResponse
Encode ListJobsResponse
```

#### `newListJobsResponse`

``` purescript
newListJobsResponse :: ListJobsResponse
```

Constructs ListJobsResponse from required parameters

#### `newListJobsResponse'`

``` purescript
newListJobsResponse' :: ({ "Jobs" :: NullOrUndefined (ListOfJob), "NextToken" :: NullOrUndefined (String) } -> { "Jobs" :: NullOrUndefined (ListOfJob), "NextToken" :: NullOrUndefined (String) }) -> ListJobsResponse
```

Constructs ListJobsResponse's fields from required parameters

#### `ListOfAudioDescription`

``` purescript
newtype ListOfAudioDescription
  = ListOfAudioDescription (Array AudioDescription)
```

##### Instances
``` purescript
Newtype ListOfAudioDescription _
Generic ListOfAudioDescription _
Show ListOfAudioDescription
Decode ListOfAudioDescription
Encode ListOfAudioDescription
```

#### `ListOfCaptionDescription`

``` purescript
newtype ListOfCaptionDescription
  = ListOfCaptionDescription (Array CaptionDescription)
```

##### Instances
``` purescript
Newtype ListOfCaptionDescription _
Generic ListOfCaptionDescription _
Show ListOfCaptionDescription
Decode ListOfCaptionDescription
Encode ListOfCaptionDescription
```

#### `ListOfCaptionDescriptionPreset`

``` purescript
newtype ListOfCaptionDescriptionPreset
  = ListOfCaptionDescriptionPreset (Array CaptionDescriptionPreset)
```

##### Instances
``` purescript
Newtype ListOfCaptionDescriptionPreset _
Generic ListOfCaptionDescriptionPreset _
Show ListOfCaptionDescriptionPreset
Decode ListOfCaptionDescriptionPreset
Encode ListOfCaptionDescriptionPreset
```

#### `ListOfEndpoint`

``` purescript
newtype ListOfEndpoint
  = ListOfEndpoint (Array Endpoint)
```

##### Instances
``` purescript
Newtype ListOfEndpoint _
Generic ListOfEndpoint _
Show ListOfEndpoint
Decode ListOfEndpoint
Encode ListOfEndpoint
```

#### `ListOfHlsAdMarkers`

``` purescript
newtype ListOfHlsAdMarkers
  = ListOfHlsAdMarkers (Array HlsAdMarkers)
```

##### Instances
``` purescript
Newtype ListOfHlsAdMarkers _
Generic ListOfHlsAdMarkers _
Show ListOfHlsAdMarkers
Decode ListOfHlsAdMarkers
Encode ListOfHlsAdMarkers
```

#### `ListOfHlsCaptionLanguageMapping`

``` purescript
newtype ListOfHlsCaptionLanguageMapping
  = ListOfHlsCaptionLanguageMapping (Array HlsCaptionLanguageMapping)
```

##### Instances
``` purescript
Newtype ListOfHlsCaptionLanguageMapping _
Generic ListOfHlsCaptionLanguageMapping _
Show ListOfHlsCaptionLanguageMapping
Decode ListOfHlsCaptionLanguageMapping
Encode ListOfHlsCaptionLanguageMapping
```

#### `ListOfId3Insertion`

``` purescript
newtype ListOfId3Insertion
  = ListOfId3Insertion (Array Id3Insertion)
```

##### Instances
``` purescript
Newtype ListOfId3Insertion _
Generic ListOfId3Insertion _
Show ListOfId3Insertion
Decode ListOfId3Insertion
Encode ListOfId3Insertion
```

#### `ListOfInput`

``` purescript
newtype ListOfInput
  = ListOfInput (Array Input)
```

##### Instances
``` purescript
Newtype ListOfInput _
Generic ListOfInput _
Show ListOfInput
Decode ListOfInput
Encode ListOfInput
```

#### `ListOfInputClipping`

``` purescript
newtype ListOfInputClipping
  = ListOfInputClipping (Array InputClipping)
```

##### Instances
``` purescript
Newtype ListOfInputClipping _
Generic ListOfInputClipping _
Show ListOfInputClipping
Decode ListOfInputClipping
Encode ListOfInputClipping
```

#### `ListOfInputTemplate`

``` purescript
newtype ListOfInputTemplate
  = ListOfInputTemplate (Array InputTemplate)
```

##### Instances
``` purescript
Newtype ListOfInputTemplate _
Generic ListOfInputTemplate _
Show ListOfInputTemplate
Decode ListOfInputTemplate
Encode ListOfInputTemplate
```

#### `ListOfInsertableImage`

``` purescript
newtype ListOfInsertableImage
  = ListOfInsertableImage (Array InsertableImage)
```

##### Instances
``` purescript
Newtype ListOfInsertableImage _
Generic ListOfInsertableImage _
Show ListOfInsertableImage
Decode ListOfInsertableImage
Encode ListOfInsertableImage
```

#### `ListOfJob`

``` purescript
newtype ListOfJob
  = ListOfJob (Array Job)
```

##### Instances
``` purescript
Newtype ListOfJob _
Generic ListOfJob _
Show ListOfJob
Decode ListOfJob
Encode ListOfJob
```

#### `ListOfJobTemplate`

``` purescript
newtype ListOfJobTemplate
  = ListOfJobTemplate (Array JobTemplate)
```

##### Instances
``` purescript
Newtype ListOfJobTemplate _
Generic ListOfJobTemplate _
Show ListOfJobTemplate
Decode ListOfJobTemplate
Encode ListOfJobTemplate
```

#### `ListOfOutput`

``` purescript
newtype ListOfOutput
  = ListOfOutput (Array Output)
```

##### Instances
``` purescript
Newtype ListOfOutput _
Generic ListOfOutput _
Show ListOfOutput
Decode ListOfOutput
Encode ListOfOutput
```

#### `ListOfOutputChannelMapping`

``` purescript
newtype ListOfOutputChannelMapping
  = ListOfOutputChannelMapping (Array OutputChannelMapping)
```

##### Instances
``` purescript
Newtype ListOfOutputChannelMapping _
Generic ListOfOutputChannelMapping _
Show ListOfOutputChannelMapping
Decode ListOfOutputChannelMapping
Encode ListOfOutputChannelMapping
```

#### `ListOfOutputDetail`

``` purescript
newtype ListOfOutputDetail
  = ListOfOutputDetail (Array OutputDetail)
```

##### Instances
``` purescript
Newtype ListOfOutputDetail _
Generic ListOfOutputDetail _
Show ListOfOutputDetail
Decode ListOfOutputDetail
Encode ListOfOutputDetail
```

#### `ListOfOutputGroup`

``` purescript
newtype ListOfOutputGroup
  = ListOfOutputGroup (Array OutputGroup)
```

##### Instances
``` purescript
Newtype ListOfOutputGroup _
Generic ListOfOutputGroup _
Show ListOfOutputGroup
Decode ListOfOutputGroup
Encode ListOfOutputGroup
```

#### `ListOfOutputGroupDetail`

``` purescript
newtype ListOfOutputGroupDetail
  = ListOfOutputGroupDetail (Array OutputGroupDetail)
```

##### Instances
``` purescript
Newtype ListOfOutputGroupDetail _
Generic ListOfOutputGroupDetail _
Show ListOfOutputGroupDetail
Decode ListOfOutputGroupDetail
Encode ListOfOutputGroupDetail
```

#### `ListOfPreset`

``` purescript
newtype ListOfPreset
  = ListOfPreset (Array Preset)
```

##### Instances
``` purescript
Newtype ListOfPreset _
Generic ListOfPreset _
Show ListOfPreset
Decode ListOfPreset
Encode ListOfPreset
```

#### `ListOfQueue`

``` purescript
newtype ListOfQueue
  = ListOfQueue (Array Queue)
```

##### Instances
``` purescript
Newtype ListOfQueue _
Generic ListOfQueue _
Show ListOfQueue
Decode ListOfQueue
Encode ListOfQueue
```

#### `ListOf__integer`

``` purescript
newtype ListOf__integer
  = ListOf__integer (Array Int)
```

##### Instances
``` purescript
Newtype ListOf__integer _
Generic ListOf__integer _
Show ListOf__integer
Decode ListOf__integer
Encode ListOf__integer
```

#### `ListOf__string`

``` purescript
newtype ListOf__string
  = ListOf__string (Array String)
```

##### Instances
``` purescript
Newtype ListOf__string _
Generic ListOf__string _
Show ListOf__string
Decode ListOf__string
Encode ListOf__string
```

#### `ListPresetsRequest`

``` purescript
newtype ListPresetsRequest
  = ListPresetsRequest { "Category" :: NullOrUndefined (String), "ListBy" :: NullOrUndefined (PresetListBy), "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order) }
```

##### Instances
``` purescript
Newtype ListPresetsRequest _
Generic ListPresetsRequest _
Show ListPresetsRequest
Decode ListPresetsRequest
Encode ListPresetsRequest
```

#### `newListPresetsRequest`

``` purescript
newListPresetsRequest :: ListPresetsRequest
```

Constructs ListPresetsRequest from required parameters

#### `newListPresetsRequest'`

``` purescript
newListPresetsRequest' :: ({ "Category" :: NullOrUndefined (String), "ListBy" :: NullOrUndefined (PresetListBy), "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order) } -> { "Category" :: NullOrUndefined (String), "ListBy" :: NullOrUndefined (PresetListBy), "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order) }) -> ListPresetsRequest
```

Constructs ListPresetsRequest's fields from required parameters

#### `ListPresetsResponse`

``` purescript
newtype ListPresetsResponse
  = ListPresetsResponse { "NextToken" :: NullOrUndefined (String), "Presets" :: NullOrUndefined (ListOfPreset) }
```

##### Instances
``` purescript
Newtype ListPresetsResponse _
Generic ListPresetsResponse _
Show ListPresetsResponse
Decode ListPresetsResponse
Encode ListPresetsResponse
```

#### `newListPresetsResponse`

``` purescript
newListPresetsResponse :: ListPresetsResponse
```

Constructs ListPresetsResponse from required parameters

#### `newListPresetsResponse'`

``` purescript
newListPresetsResponse' :: ({ "NextToken" :: NullOrUndefined (String), "Presets" :: NullOrUndefined (ListOfPreset) } -> { "NextToken" :: NullOrUndefined (String), "Presets" :: NullOrUndefined (ListOfPreset) }) -> ListPresetsResponse
```

Constructs ListPresetsResponse's fields from required parameters

#### `ListQueuesRequest`

``` purescript
newtype ListQueuesRequest
  = ListQueuesRequest { "ListBy" :: NullOrUndefined (QueueListBy), "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order) }
```

##### Instances
``` purescript
Newtype ListQueuesRequest _
Generic ListQueuesRequest _
Show ListQueuesRequest
Decode ListQueuesRequest
Encode ListQueuesRequest
```

#### `newListQueuesRequest`

``` purescript
newListQueuesRequest :: ListQueuesRequest
```

Constructs ListQueuesRequest from required parameters

#### `newListQueuesRequest'`

``` purescript
newListQueuesRequest' :: ({ "ListBy" :: NullOrUndefined (QueueListBy), "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order) } -> { "ListBy" :: NullOrUndefined (QueueListBy), "MaxResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String), "Order" :: NullOrUndefined (Order) }) -> ListQueuesRequest
```

Constructs ListQueuesRequest's fields from required parameters

#### `ListQueuesResponse`

``` purescript
newtype ListQueuesResponse
  = ListQueuesResponse { "NextToken" :: NullOrUndefined (String), "Queues" :: NullOrUndefined (ListOfQueue) }
```

##### Instances
``` purescript
Newtype ListQueuesResponse _
Generic ListQueuesResponse _
Show ListQueuesResponse
Decode ListQueuesResponse
Encode ListQueuesResponse
```

#### `newListQueuesResponse`

``` purescript
newListQueuesResponse :: ListQueuesResponse
```

Constructs ListQueuesResponse from required parameters

#### `newListQueuesResponse'`

``` purescript
newListQueuesResponse' :: ({ "NextToken" :: NullOrUndefined (String), "Queues" :: NullOrUndefined (ListOfQueue) } -> { "NextToken" :: NullOrUndefined (String), "Queues" :: NullOrUndefined (ListOfQueue) }) -> ListQueuesResponse
```

Constructs ListQueuesResponse's fields from required parameters

#### `M2tsAudioBufferModel`

``` purescript
newtype M2tsAudioBufferModel
  = M2tsAudioBufferModel String
```

Selects between the DVB and ATSC buffer models for Dolby Digital audio.

##### Instances
``` purescript
Newtype M2tsAudioBufferModel _
Generic M2tsAudioBufferModel _
Show M2tsAudioBufferModel
Decode M2tsAudioBufferModel
Encode M2tsAudioBufferModel
```

#### `M2tsBufferModel`

``` purescript
newtype M2tsBufferModel
  = M2tsBufferModel String
```

Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.

##### Instances
``` purescript
Newtype M2tsBufferModel _
Generic M2tsBufferModel _
Show M2tsBufferModel
Decode M2tsBufferModel
Encode M2tsBufferModel
```

#### `M2tsEbpAudioInterval`

``` purescript
newtype M2tsEbpAudioInterval
  = M2tsEbpAudioInterval String
```

When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).

##### Instances
``` purescript
Newtype M2tsEbpAudioInterval _
Generic M2tsEbpAudioInterval _
Show M2tsEbpAudioInterval
Decode M2tsEbpAudioInterval
Encode M2tsEbpAudioInterval
```

#### `M2tsEbpPlacement`

``` purescript
newtype M2tsEbpPlacement
  = M2tsEbpPlacement String
```

Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).

##### Instances
``` purescript
Newtype M2tsEbpPlacement _
Generic M2tsEbpPlacement _
Show M2tsEbpPlacement
Decode M2tsEbpPlacement
Encode M2tsEbpPlacement
```

#### `M2tsEsRateInPes`

``` purescript
newtype M2tsEsRateInPes
  = M2tsEsRateInPes String
```

Controls whether to include the ES Rate field in the PES header.

##### Instances
``` purescript
Newtype M2tsEsRateInPes _
Generic M2tsEsRateInPes _
Show M2tsEsRateInPes
Decode M2tsEsRateInPes
Encode M2tsEsRateInPes
```

#### `M2tsNielsenId3`

``` purescript
newtype M2tsNielsenId3
  = M2tsNielsenId3 String
```

If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.

##### Instances
``` purescript
Newtype M2tsNielsenId3 _
Generic M2tsNielsenId3 _
Show M2tsNielsenId3
Decode M2tsNielsenId3
Encode M2tsNielsenId3
```

#### `M2tsPcrControl`

``` purescript
newtype M2tsPcrControl
  = M2tsPcrControl String
```

When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream.

##### Instances
``` purescript
Newtype M2tsPcrControl _
Generic M2tsPcrControl _
Show M2tsPcrControl
Decode M2tsPcrControl
Encode M2tsPcrControl
```

#### `M2tsRateMode`

``` purescript
newtype M2tsRateMode
  = M2tsRateMode String
```

When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.

##### Instances
``` purescript
Newtype M2tsRateMode _
Generic M2tsRateMode _
Show M2tsRateMode
Decode M2tsRateMode
Encode M2tsRateMode
```

#### `M2tsScte35Source`

``` purescript
newtype M2tsScte35Source
  = M2tsScte35Source String
```

Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals from input to output.

##### Instances
``` purescript
Newtype M2tsScte35Source _
Generic M2tsScte35Source _
Show M2tsScte35Source
Decode M2tsScte35Source
Encode M2tsScte35Source
```

#### `M2tsSegmentationMarkers`

``` purescript
newtype M2tsSegmentationMarkers
  = M2tsSegmentationMarkers String
```

Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.

##### Instances
``` purescript
Newtype M2tsSegmentationMarkers _
Generic M2tsSegmentationMarkers _
Show M2tsSegmentationMarkers
Decode M2tsSegmentationMarkers
Encode M2tsSegmentationMarkers
```

#### `M2tsSegmentationStyle`

``` purescript
newtype M2tsSegmentationStyle
  = M2tsSegmentationStyle String
```

The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "reset_cadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of "maintain_cadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule.

##### Instances
``` purescript
Newtype M2tsSegmentationStyle _
Generic M2tsSegmentationStyle _
Show M2tsSegmentationStyle
Decode M2tsSegmentationStyle
Encode M2tsSegmentationStyle
```

#### `M2tsSettings`

``` purescript
newtype M2tsSettings
  = M2tsSettings { "AudioBufferModel" :: NullOrUndefined (M2tsAudioBufferModel), "AudioFramesPerPes" :: NullOrUndefined (Int), "AudioPids" :: NullOrUndefined (ListOf__integer), "Bitrate" :: NullOrUndefined (Int), "BufferModel" :: NullOrUndefined (M2tsBufferModel), "DvbNitSettings" :: NullOrUndefined (DvbNitSettings), "DvbSdtSettings" :: NullOrUndefined (DvbSdtSettings), "DvbSubPids" :: NullOrUndefined (ListOf__integer), "DvbTdtSettings" :: NullOrUndefined (DvbTdtSettings), "DvbTeletextPid" :: NullOrUndefined (Int), "EbpAudioInterval" :: NullOrUndefined (M2tsEbpAudioInterval), "EbpPlacement" :: NullOrUndefined (M2tsEbpPlacement), "EsRateInPes" :: NullOrUndefined (M2tsEsRateInPes), "FragmentTime" :: NullOrUndefined (Number), "MaxPcrInterval" :: NullOrUndefined (Int), "MinEbpInterval" :: NullOrUndefined (Int), "NielsenId3" :: NullOrUndefined (M2tsNielsenId3), "NullPacketBitrate" :: NullOrUndefined (Number), "PatInterval" :: NullOrUndefined (Int), "PcrControl" :: NullOrUndefined (M2tsPcrControl), "PcrPid" :: NullOrUndefined (Int), "PmtInterval" :: NullOrUndefined (Int), "PmtPid" :: NullOrUndefined (Int), "PrivateMetadataPid" :: NullOrUndefined (Int), "ProgramNumber" :: NullOrUndefined (Int), "RateMode" :: NullOrUndefined (M2tsRateMode), "Scte35Pid" :: NullOrUndefined (Int), "Scte35Source" :: NullOrUndefined (M2tsScte35Source), "SegmentationMarkers" :: NullOrUndefined (M2tsSegmentationMarkers), "SegmentationStyle" :: NullOrUndefined (M2tsSegmentationStyle), "SegmentationTime" :: NullOrUndefined (Number), "TimedMetadataPid" :: NullOrUndefined (Int), "TransportStreamId" :: NullOrUndefined (Int), "VideoPid" :: NullOrUndefined (Int) }
```

Settings for M2TS Container.

##### Instances
``` purescript
Newtype M2tsSettings _
Generic M2tsSettings _
Show M2tsSettings
Decode M2tsSettings
Encode M2tsSettings
```

#### `newM2tsSettings`

``` purescript
newM2tsSettings :: M2tsSettings
```

Constructs M2tsSettings from required parameters

#### `newM2tsSettings'`

``` purescript
newM2tsSettings' :: ({ "AudioBufferModel" :: NullOrUndefined (M2tsAudioBufferModel), "AudioFramesPerPes" :: NullOrUndefined (Int), "AudioPids" :: NullOrUndefined (ListOf__integer), "Bitrate" :: NullOrUndefined (Int), "BufferModel" :: NullOrUndefined (M2tsBufferModel), "DvbNitSettings" :: NullOrUndefined (DvbNitSettings), "DvbSdtSettings" :: NullOrUndefined (DvbSdtSettings), "DvbSubPids" :: NullOrUndefined (ListOf__integer), "DvbTdtSettings" :: NullOrUndefined (DvbTdtSettings), "DvbTeletextPid" :: NullOrUndefined (Int), "EbpAudioInterval" :: NullOrUndefined (M2tsEbpAudioInterval), "EbpPlacement" :: NullOrUndefined (M2tsEbpPlacement), "EsRateInPes" :: NullOrUndefined (M2tsEsRateInPes), "FragmentTime" :: NullOrUndefined (Number), "MaxPcrInterval" :: NullOrUndefined (Int), "MinEbpInterval" :: NullOrUndefined (Int), "NielsenId3" :: NullOrUndefined (M2tsNielsenId3), "NullPacketBitrate" :: NullOrUndefined (Number), "PatInterval" :: NullOrUndefined (Int), "PcrControl" :: NullOrUndefined (M2tsPcrControl), "PcrPid" :: NullOrUndefined (Int), "PmtInterval" :: NullOrUndefined (Int), "PmtPid" :: NullOrUndefined (Int), "PrivateMetadataPid" :: NullOrUndefined (Int), "ProgramNumber" :: NullOrUndefined (Int), "RateMode" :: NullOrUndefined (M2tsRateMode), "Scte35Pid" :: NullOrUndefined (Int), "Scte35Source" :: NullOrUndefined (M2tsScte35Source), "SegmentationMarkers" :: NullOrUndefined (M2tsSegmentationMarkers), "SegmentationStyle" :: NullOrUndefined (M2tsSegmentationStyle), "SegmentationTime" :: NullOrUndefined (Number), "TimedMetadataPid" :: NullOrUndefined (Int), "TransportStreamId" :: NullOrUndefined (Int), "VideoPid" :: NullOrUndefined (Int) } -> { "AudioBufferModel" :: NullOrUndefined (M2tsAudioBufferModel), "AudioFramesPerPes" :: NullOrUndefined (Int), "AudioPids" :: NullOrUndefined (ListOf__integer), "Bitrate" :: NullOrUndefined (Int), "BufferModel" :: NullOrUndefined (M2tsBufferModel), "DvbNitSettings" :: NullOrUndefined (DvbNitSettings), "DvbSdtSettings" :: NullOrUndefined (DvbSdtSettings), "DvbSubPids" :: NullOrUndefined (ListOf__integer), "DvbTdtSettings" :: NullOrUndefined (DvbTdtSettings), "DvbTeletextPid" :: NullOrUndefined (Int), "EbpAudioInterval" :: NullOrUndefined (M2tsEbpAudioInterval), "EbpPlacement" :: NullOrUndefined (M2tsEbpPlacement), "EsRateInPes" :: NullOrUndefined (M2tsEsRateInPes), "FragmentTime" :: NullOrUndefined (Number), "MaxPcrInterval" :: NullOrUndefined (Int), "MinEbpInterval" :: NullOrUndefined (Int), "NielsenId3" :: NullOrUndefined (M2tsNielsenId3), "NullPacketBitrate" :: NullOrUndefined (Number), "PatInterval" :: NullOrUndefined (Int), "PcrControl" :: NullOrUndefined (M2tsPcrControl), "PcrPid" :: NullOrUndefined (Int), "PmtInterval" :: NullOrUndefined (Int), "PmtPid" :: NullOrUndefined (Int), "PrivateMetadataPid" :: NullOrUndefined (Int), "ProgramNumber" :: NullOrUndefined (Int), "RateMode" :: NullOrUndefined (M2tsRateMode), "Scte35Pid" :: NullOrUndefined (Int), "Scte35Source" :: NullOrUndefined (M2tsScte35Source), "SegmentationMarkers" :: NullOrUndefined (M2tsSegmentationMarkers), "SegmentationStyle" :: NullOrUndefined (M2tsSegmentationStyle), "SegmentationTime" :: NullOrUndefined (Number), "TimedMetadataPid" :: NullOrUndefined (Int), "TransportStreamId" :: NullOrUndefined (Int), "VideoPid" :: NullOrUndefined (Int) }) -> M2tsSettings
```

Constructs M2tsSettings's fields from required parameters

#### `M3u8NielsenId3`

``` purescript
newtype M3u8NielsenId3
  = M3u8NielsenId3 String
```

If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.

##### Instances
``` purescript
Newtype M3u8NielsenId3 _
Generic M3u8NielsenId3 _
Show M3u8NielsenId3
Decode M3u8NielsenId3
Encode M3u8NielsenId3
```

#### `M3u8PcrControl`

``` purescript
newtype M3u8PcrControl
  = M3u8PcrControl String
```

When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.

##### Instances
``` purescript
Newtype M3u8PcrControl _
Generic M3u8PcrControl _
Show M3u8PcrControl
Decode M3u8PcrControl
Encode M3u8PcrControl
```

#### `M3u8Scte35Source`

``` purescript
newtype M3u8Scte35Source
  = M3u8Scte35Source String
```

Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals from input to output.

##### Instances
``` purescript
Newtype M3u8Scte35Source _
Generic M3u8Scte35Source _
Show M3u8Scte35Source
Decode M3u8Scte35Source
Encode M3u8Scte35Source
```

#### `M3u8Settings`

``` purescript
newtype M3u8Settings
  = M3u8Settings { "AudioFramesPerPes" :: NullOrUndefined (Int), "AudioPids" :: NullOrUndefined (ListOf__integer), "NielsenId3" :: NullOrUndefined (M3u8NielsenId3), "PatInterval" :: NullOrUndefined (Int), "PcrControl" :: NullOrUndefined (M3u8PcrControl), "PcrPid" :: NullOrUndefined (Int), "PmtInterval" :: NullOrUndefined (Int), "PmtPid" :: NullOrUndefined (Int), "PrivateMetadataPid" :: NullOrUndefined (Int), "ProgramNumber" :: NullOrUndefined (Int), "Scte35Pid" :: NullOrUndefined (Int), "Scte35Source" :: NullOrUndefined (M3u8Scte35Source), "TimedMetadata" :: NullOrUndefined (TimedMetadata), "TimedMetadataPid" :: NullOrUndefined (Int), "TransportStreamId" :: NullOrUndefined (Int), "VideoPid" :: NullOrUndefined (Int) }
```

Settings for TS segments in HLS

##### Instances
``` purescript
Newtype M3u8Settings _
Generic M3u8Settings _
Show M3u8Settings
Decode M3u8Settings
Encode M3u8Settings
```

#### `newM3u8Settings`

``` purescript
newM3u8Settings :: M3u8Settings
```

Constructs M3u8Settings from required parameters

#### `newM3u8Settings'`

``` purescript
newM3u8Settings' :: ({ "AudioFramesPerPes" :: NullOrUndefined (Int), "AudioPids" :: NullOrUndefined (ListOf__integer), "NielsenId3" :: NullOrUndefined (M3u8NielsenId3), "PatInterval" :: NullOrUndefined (Int), "PcrControl" :: NullOrUndefined (M3u8PcrControl), "PcrPid" :: NullOrUndefined (Int), "PmtInterval" :: NullOrUndefined (Int), "PmtPid" :: NullOrUndefined (Int), "PrivateMetadataPid" :: NullOrUndefined (Int), "ProgramNumber" :: NullOrUndefined (Int), "Scte35Pid" :: NullOrUndefined (Int), "Scte35Source" :: NullOrUndefined (M3u8Scte35Source), "TimedMetadata" :: NullOrUndefined (TimedMetadata), "TimedMetadataPid" :: NullOrUndefined (Int), "TransportStreamId" :: NullOrUndefined (Int), "VideoPid" :: NullOrUndefined (Int) } -> { "AudioFramesPerPes" :: NullOrUndefined (Int), "AudioPids" :: NullOrUndefined (ListOf__integer), "NielsenId3" :: NullOrUndefined (M3u8NielsenId3), "PatInterval" :: NullOrUndefined (Int), "PcrControl" :: NullOrUndefined (M3u8PcrControl), "PcrPid" :: NullOrUndefined (Int), "PmtInterval" :: NullOrUndefined (Int), "PmtPid" :: NullOrUndefined (Int), "PrivateMetadataPid" :: NullOrUndefined (Int), "ProgramNumber" :: NullOrUndefined (Int), "Scte35Pid" :: NullOrUndefined (Int), "Scte35Source" :: NullOrUndefined (M3u8Scte35Source), "TimedMetadata" :: NullOrUndefined (TimedMetadata), "TimedMetadataPid" :: NullOrUndefined (Int), "TransportStreamId" :: NullOrUndefined (Int), "VideoPid" :: NullOrUndefined (Int) }) -> M3u8Settings
```

Constructs M3u8Settings's fields from required parameters

#### `MapOfAudioSelector`

``` purescript
newtype MapOfAudioSelector
  = MapOfAudioSelector (StrMap AudioSelector)
```

##### Instances
``` purescript
Newtype MapOfAudioSelector _
Generic MapOfAudioSelector _
Show MapOfAudioSelector
Decode MapOfAudioSelector
Encode MapOfAudioSelector
```

#### `MapOfAudioSelectorGroup`

``` purescript
newtype MapOfAudioSelectorGroup
  = MapOfAudioSelectorGroup (StrMap AudioSelectorGroup)
```

##### Instances
``` purescript
Newtype MapOfAudioSelectorGroup _
Generic MapOfAudioSelectorGroup _
Show MapOfAudioSelectorGroup
Decode MapOfAudioSelectorGroup
Encode MapOfAudioSelectorGroup
```

#### `MapOfCaptionSelector`

``` purescript
newtype MapOfCaptionSelector
  = MapOfCaptionSelector (StrMap CaptionSelector)
```

##### Instances
``` purescript
Newtype MapOfCaptionSelector _
Generic MapOfCaptionSelector _
Show MapOfCaptionSelector
Decode MapOfCaptionSelector
Encode MapOfCaptionSelector
```

#### `MapOf__string`

``` purescript
newtype MapOf__string
  = MapOf__string (StrMap String)
```

##### Instances
``` purescript
Newtype MapOf__string _
Generic MapOf__string _
Show MapOf__string
Decode MapOf__string
Encode MapOf__string
```

#### `MovClapAtom`

``` purescript
newtype MovClapAtom
  = MovClapAtom String
```

When enabled, include 'clap' atom if appropriate for the video output settings.

##### Instances
``` purescript
Newtype MovClapAtom _
Generic MovClapAtom _
Show MovClapAtom
Decode MovClapAtom
Encode MovClapAtom
```

#### `MovCslgAtom`

``` purescript
newtype MovCslgAtom
  = MovCslgAtom String
```

When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.

##### Instances
``` purescript
Newtype MovCslgAtom _
Generic MovCslgAtom _
Show MovCslgAtom
Decode MovCslgAtom
Encode MovCslgAtom
```

#### `MovMpeg2FourCCControl`

``` purescript
newtype MovMpeg2FourCCControl
  = MovMpeg2FourCCControl String
```

When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.

##### Instances
``` purescript
Newtype MovMpeg2FourCCControl _
Generic MovMpeg2FourCCControl _
Show MovMpeg2FourCCControl
Decode MovMpeg2FourCCControl
Encode MovMpeg2FourCCControl
```

#### `MovPaddingControl`

``` purescript
newtype MovPaddingControl
  = MovPaddingControl String
```

If set to OMNEON, inserts Omneon-compatible padding

##### Instances
``` purescript
Newtype MovPaddingControl _
Generic MovPaddingControl _
Show MovPaddingControl
Decode MovPaddingControl
Encode MovPaddingControl
```

#### `MovReference`

``` purescript
newtype MovReference
  = MovReference String
```

A value of 'external' creates separate media files and the wrapper file (.mov) contains references to these media files. A value of 'self_contained' creates only a wrapper (.mov) file and this file contains all of the media.

##### Instances
``` purescript
Newtype MovReference _
Generic MovReference _
Show MovReference
Decode MovReference
Encode MovReference
```

#### `MovSettings`

``` purescript
newtype MovSettings
  = MovSettings { "ClapAtom" :: NullOrUndefined (MovClapAtom), "CslgAtom" :: NullOrUndefined (MovCslgAtom), "Mpeg2FourCCControl" :: NullOrUndefined (MovMpeg2FourCCControl), "PaddingControl" :: NullOrUndefined (MovPaddingControl), "Reference" :: NullOrUndefined (MovReference) }
```

Settings for MOV Container.

##### Instances
``` purescript
Newtype MovSettings _
Generic MovSettings _
Show MovSettings
Decode MovSettings
Encode MovSettings
```

#### `newMovSettings`

``` purescript
newMovSettings :: MovSettings
```

Constructs MovSettings from required parameters

#### `newMovSettings'`

``` purescript
newMovSettings' :: ({ "ClapAtom" :: NullOrUndefined (MovClapAtom), "CslgAtom" :: NullOrUndefined (MovCslgAtom), "Mpeg2FourCCControl" :: NullOrUndefined (MovMpeg2FourCCControl), "PaddingControl" :: NullOrUndefined (MovPaddingControl), "Reference" :: NullOrUndefined (MovReference) } -> { "ClapAtom" :: NullOrUndefined (MovClapAtom), "CslgAtom" :: NullOrUndefined (MovCslgAtom), "Mpeg2FourCCControl" :: NullOrUndefined (MovMpeg2FourCCControl), "PaddingControl" :: NullOrUndefined (MovPaddingControl), "Reference" :: NullOrUndefined (MovReference) }) -> MovSettings
```

Constructs MovSettings's fields from required parameters

#### `Mp2Settings`

``` purescript
newtype Mp2Settings
  = Mp2Settings { "Bitrate" :: NullOrUndefined (Int), "Channels" :: NullOrUndefined (Int), "SampleRate" :: NullOrUndefined (Int) }
```

Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2.

##### Instances
``` purescript
Newtype Mp2Settings _
Generic Mp2Settings _
Show Mp2Settings
Decode Mp2Settings
Encode Mp2Settings
```

#### `newMp2Settings`

``` purescript
newMp2Settings :: Mp2Settings
```

Constructs Mp2Settings from required parameters

#### `newMp2Settings'`

``` purescript
newMp2Settings' :: ({ "Bitrate" :: NullOrUndefined (Int), "Channels" :: NullOrUndefined (Int), "SampleRate" :: NullOrUndefined (Int) } -> { "Bitrate" :: NullOrUndefined (Int), "Channels" :: NullOrUndefined (Int), "SampleRate" :: NullOrUndefined (Int) }) -> Mp2Settings
```

Constructs Mp2Settings's fields from required parameters

#### `Mp4CslgAtom`

``` purescript
newtype Mp4CslgAtom
  = Mp4CslgAtom String
```

When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.

##### Instances
``` purescript
Newtype Mp4CslgAtom _
Generic Mp4CslgAtom _
Show Mp4CslgAtom
Decode Mp4CslgAtom
Encode Mp4CslgAtom
```

#### `Mp4FreeSpaceBox`

``` purescript
newtype Mp4FreeSpaceBox
  = Mp4FreeSpaceBox String
```

Inserts a free-space box immediately after the moov box.

##### Instances
``` purescript
Newtype Mp4FreeSpaceBox _
Generic Mp4FreeSpaceBox _
Show Mp4FreeSpaceBox
Decode Mp4FreeSpaceBox
Encode Mp4FreeSpaceBox
```

#### `Mp4MoovPlacement`

``` purescript
newtype Mp4MoovPlacement
  = Mp4MoovPlacement String
```

If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.

##### Instances
``` purescript
Newtype Mp4MoovPlacement _
Generic Mp4MoovPlacement _
Show Mp4MoovPlacement
Decode Mp4MoovPlacement
Encode Mp4MoovPlacement
```

#### `Mp4Settings`

``` purescript
newtype Mp4Settings
  = Mp4Settings { "CslgAtom" :: NullOrUndefined (Mp4CslgAtom), "FreeSpaceBox" :: NullOrUndefined (Mp4FreeSpaceBox), "MoovPlacement" :: NullOrUndefined (Mp4MoovPlacement), "Mp4MajorBrand" :: NullOrUndefined (String) }
```

Settings for MP4 Container

##### Instances
``` purescript
Newtype Mp4Settings _
Generic Mp4Settings _
Show Mp4Settings
Decode Mp4Settings
Encode Mp4Settings
```

#### `newMp4Settings`

``` purescript
newMp4Settings :: Mp4Settings
```

Constructs Mp4Settings from required parameters

#### `newMp4Settings'`

``` purescript
newMp4Settings' :: ({ "CslgAtom" :: NullOrUndefined (Mp4CslgAtom), "FreeSpaceBox" :: NullOrUndefined (Mp4FreeSpaceBox), "MoovPlacement" :: NullOrUndefined (Mp4MoovPlacement), "Mp4MajorBrand" :: NullOrUndefined (String) } -> { "CslgAtom" :: NullOrUndefined (Mp4CslgAtom), "FreeSpaceBox" :: NullOrUndefined (Mp4FreeSpaceBox), "MoovPlacement" :: NullOrUndefined (Mp4MoovPlacement), "Mp4MajorBrand" :: NullOrUndefined (String) }) -> Mp4Settings
```

Constructs Mp4Settings's fields from required parameters

#### `Mpeg2AdaptiveQuantization`

``` purescript
newtype Mpeg2AdaptiveQuantization
  = Mpeg2AdaptiveQuantization String
```

Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.

##### Instances
``` purescript
Newtype Mpeg2AdaptiveQuantization _
Generic Mpeg2AdaptiveQuantization _
Show Mpeg2AdaptiveQuantization
Decode Mpeg2AdaptiveQuantization
Encode Mpeg2AdaptiveQuantization
```

#### `Mpeg2CodecLevel`

``` purescript
newtype Mpeg2CodecLevel
  = Mpeg2CodecLevel String
```

Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.

##### Instances
``` purescript
Newtype Mpeg2CodecLevel _
Generic Mpeg2CodecLevel _
Show Mpeg2CodecLevel
Decode Mpeg2CodecLevel
Encode Mpeg2CodecLevel
```

#### `Mpeg2CodecProfile`

``` purescript
newtype Mpeg2CodecProfile
  = Mpeg2CodecProfile String
```

Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.

##### Instances
``` purescript
Newtype Mpeg2CodecProfile _
Generic Mpeg2CodecProfile _
Show Mpeg2CodecProfile
Decode Mpeg2CodecProfile
Encode Mpeg2CodecProfile
```

#### `Mpeg2FramerateControl`

``` purescript
newtype Mpeg2FramerateControl
  = Mpeg2FramerateControl String
```

Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.

##### Instances
``` purescript
Newtype Mpeg2FramerateControl _
Generic Mpeg2FramerateControl _
Show Mpeg2FramerateControl
Decode Mpeg2FramerateControl
Encode Mpeg2FramerateControl
```

#### `Mpeg2FramerateConversionAlgorithm`

``` purescript
newtype Mpeg2FramerateConversionAlgorithm
  = Mpeg2FramerateConversionAlgorithm String
```

When set to INTERPOLATE, produces smoother motion during framerate conversion.

##### Instances
``` purescript
Newtype Mpeg2FramerateConversionAlgorithm _
Generic Mpeg2FramerateConversionAlgorithm _
Show Mpeg2FramerateConversionAlgorithm
Decode Mpeg2FramerateConversionAlgorithm
Encode Mpeg2FramerateConversionAlgorithm
```

#### `Mpeg2GopSizeUnits`

``` purescript
newtype Mpeg2GopSizeUnits
  = Mpeg2GopSizeUnits String
```

Indicates if the GOP Size in MPEG2 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.

##### Instances
``` purescript
Newtype Mpeg2GopSizeUnits _
Generic Mpeg2GopSizeUnits _
Show Mpeg2GopSizeUnits
Decode Mpeg2GopSizeUnits
Encode Mpeg2GopSizeUnits
```

#### `Mpeg2InterlaceMode`

``` purescript
newtype Mpeg2InterlaceMode
  = Mpeg2InterlaceMode String
```

Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.

##### Instances
``` purescript
Newtype Mpeg2InterlaceMode _
Generic Mpeg2InterlaceMode _
Show Mpeg2InterlaceMode
Decode Mpeg2InterlaceMode
Encode Mpeg2InterlaceMode
```

#### `Mpeg2IntraDcPrecision`

``` purescript
newtype Mpeg2IntraDcPrecision
  = Mpeg2IntraDcPrecision String
```

Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.

##### Instances
``` purescript
Newtype Mpeg2IntraDcPrecision _
Generic Mpeg2IntraDcPrecision _
Show Mpeg2IntraDcPrecision
Decode Mpeg2IntraDcPrecision
Encode Mpeg2IntraDcPrecision
```

#### `Mpeg2ParControl`

``` purescript
newtype Mpeg2ParControl
  = Mpeg2ParControl String
```

Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.

##### Instances
``` purescript
Newtype Mpeg2ParControl _
Generic Mpeg2ParControl _
Show Mpeg2ParControl
Decode Mpeg2ParControl
Encode Mpeg2ParControl
```

#### `Mpeg2QualityTuningLevel`

``` purescript
newtype Mpeg2QualityTuningLevel
  = Mpeg2QualityTuningLevel String
```

Use Quality tuning level (Mpeg2QualityTuningLevel) to specifiy whether to use single-pass or multipass video encoding.

##### Instances
``` purescript
Newtype Mpeg2QualityTuningLevel _
Generic Mpeg2QualityTuningLevel _
Show Mpeg2QualityTuningLevel
Decode Mpeg2QualityTuningLevel
Encode Mpeg2QualityTuningLevel
```

#### `Mpeg2RateControlMode`

``` purescript
newtype Mpeg2RateControlMode
  = Mpeg2RateControlMode String
```

Use Rate control mode (Mpeg2RateControlMode) to specifiy whether the bitrate is variable (vbr) or constant (cbr).

##### Instances
``` purescript
Newtype Mpeg2RateControlMode _
Generic Mpeg2RateControlMode _
Show Mpeg2RateControlMode
Decode Mpeg2RateControlMode
Encode Mpeg2RateControlMode
```

#### `Mpeg2SceneChangeDetect`

``` purescript
newtype Mpeg2SceneChangeDetect
  = Mpeg2SceneChangeDetect String
```

Scene change detection (inserts I-frames on scene changes).

##### Instances
``` purescript
Newtype Mpeg2SceneChangeDetect _
Generic Mpeg2SceneChangeDetect _
Show Mpeg2SceneChangeDetect
Decode Mpeg2SceneChangeDetect
Encode Mpeg2SceneChangeDetect
```

#### `Mpeg2Settings`

``` purescript
newtype Mpeg2Settings
  = Mpeg2Settings { "AdaptiveQuantization" :: NullOrUndefined (Mpeg2AdaptiveQuantization), "Bitrate" :: NullOrUndefined (Int), "CodecLevel" :: NullOrUndefined (Mpeg2CodecLevel), "CodecProfile" :: NullOrUndefined (Mpeg2CodecProfile), "FramerateControl" :: NullOrUndefined (Mpeg2FramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (Mpeg2FramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "GopClosedCadence" :: NullOrUndefined (Int), "GopSize" :: NullOrUndefined (Number), "GopSizeUnits" :: NullOrUndefined (Mpeg2GopSizeUnits), "HrdBufferInitialFillPercentage" :: NullOrUndefined (Int), "HrdBufferSize" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (Mpeg2InterlaceMode), "IntraDcPrecision" :: NullOrUndefined (Mpeg2IntraDcPrecision), "MaxBitrate" :: NullOrUndefined (Int), "MinIInterval" :: NullOrUndefined (Int), "NumberBFramesBetweenReferenceFrames" :: NullOrUndefined (Int), "ParControl" :: NullOrUndefined (Mpeg2ParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "QualityTuningLevel" :: NullOrUndefined (Mpeg2QualityTuningLevel), "RateControlMode" :: NullOrUndefined (Mpeg2RateControlMode), "SceneChangeDetect" :: NullOrUndefined (Mpeg2SceneChangeDetect), "SlowPal" :: NullOrUndefined (Mpeg2SlowPal), "Softness" :: NullOrUndefined (Int), "SpatialAdaptiveQuantization" :: NullOrUndefined (Mpeg2SpatialAdaptiveQuantization), "Syntax" :: NullOrUndefined (Mpeg2Syntax), "Telecine" :: NullOrUndefined (Mpeg2Telecine), "TemporalAdaptiveQuantization" :: NullOrUndefined (Mpeg2TemporalAdaptiveQuantization) }
```

Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2.

##### Instances
``` purescript
Newtype Mpeg2Settings _
Generic Mpeg2Settings _
Show Mpeg2Settings
Decode Mpeg2Settings
Encode Mpeg2Settings
```

#### `newMpeg2Settings`

``` purescript
newMpeg2Settings :: Mpeg2Settings
```

Constructs Mpeg2Settings from required parameters

#### `newMpeg2Settings'`

``` purescript
newMpeg2Settings' :: ({ "AdaptiveQuantization" :: NullOrUndefined (Mpeg2AdaptiveQuantization), "Bitrate" :: NullOrUndefined (Int), "CodecLevel" :: NullOrUndefined (Mpeg2CodecLevel), "CodecProfile" :: NullOrUndefined (Mpeg2CodecProfile), "FramerateControl" :: NullOrUndefined (Mpeg2FramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (Mpeg2FramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "GopClosedCadence" :: NullOrUndefined (Int), "GopSize" :: NullOrUndefined (Number), "GopSizeUnits" :: NullOrUndefined (Mpeg2GopSizeUnits), "HrdBufferInitialFillPercentage" :: NullOrUndefined (Int), "HrdBufferSize" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (Mpeg2InterlaceMode), "IntraDcPrecision" :: NullOrUndefined (Mpeg2IntraDcPrecision), "MaxBitrate" :: NullOrUndefined (Int), "MinIInterval" :: NullOrUndefined (Int), "NumberBFramesBetweenReferenceFrames" :: NullOrUndefined (Int), "ParControl" :: NullOrUndefined (Mpeg2ParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "QualityTuningLevel" :: NullOrUndefined (Mpeg2QualityTuningLevel), "RateControlMode" :: NullOrUndefined (Mpeg2RateControlMode), "SceneChangeDetect" :: NullOrUndefined (Mpeg2SceneChangeDetect), "SlowPal" :: NullOrUndefined (Mpeg2SlowPal), "Softness" :: NullOrUndefined (Int), "SpatialAdaptiveQuantization" :: NullOrUndefined (Mpeg2SpatialAdaptiveQuantization), "Syntax" :: NullOrUndefined (Mpeg2Syntax), "Telecine" :: NullOrUndefined (Mpeg2Telecine), "TemporalAdaptiveQuantization" :: NullOrUndefined (Mpeg2TemporalAdaptiveQuantization) } -> { "AdaptiveQuantization" :: NullOrUndefined (Mpeg2AdaptiveQuantization), "Bitrate" :: NullOrUndefined (Int), "CodecLevel" :: NullOrUndefined (Mpeg2CodecLevel), "CodecProfile" :: NullOrUndefined (Mpeg2CodecProfile), "FramerateControl" :: NullOrUndefined (Mpeg2FramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (Mpeg2FramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "GopClosedCadence" :: NullOrUndefined (Int), "GopSize" :: NullOrUndefined (Number), "GopSizeUnits" :: NullOrUndefined (Mpeg2GopSizeUnits), "HrdBufferInitialFillPercentage" :: NullOrUndefined (Int), "HrdBufferSize" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (Mpeg2InterlaceMode), "IntraDcPrecision" :: NullOrUndefined (Mpeg2IntraDcPrecision), "MaxBitrate" :: NullOrUndefined (Int), "MinIInterval" :: NullOrUndefined (Int), "NumberBFramesBetweenReferenceFrames" :: NullOrUndefined (Int), "ParControl" :: NullOrUndefined (Mpeg2ParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "QualityTuningLevel" :: NullOrUndefined (Mpeg2QualityTuningLevel), "RateControlMode" :: NullOrUndefined (Mpeg2RateControlMode), "SceneChangeDetect" :: NullOrUndefined (Mpeg2SceneChangeDetect), "SlowPal" :: NullOrUndefined (Mpeg2SlowPal), "Softness" :: NullOrUndefined (Int), "SpatialAdaptiveQuantization" :: NullOrUndefined (Mpeg2SpatialAdaptiveQuantization), "Syntax" :: NullOrUndefined (Mpeg2Syntax), "Telecine" :: NullOrUndefined (Mpeg2Telecine), "TemporalAdaptiveQuantization" :: NullOrUndefined (Mpeg2TemporalAdaptiveQuantization) }) -> Mpeg2Settings
```

Constructs Mpeg2Settings's fields from required parameters

#### `Mpeg2SlowPal`

``` purescript
newtype Mpeg2SlowPal
  = Mpeg2SlowPal String
```

Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.

##### Instances
``` purescript
Newtype Mpeg2SlowPal _
Generic Mpeg2SlowPal _
Show Mpeg2SlowPal
Decode Mpeg2SlowPal
Encode Mpeg2SlowPal
```

#### `Mpeg2SpatialAdaptiveQuantization`

``` purescript
newtype Mpeg2SpatialAdaptiveQuantization
  = Mpeg2SpatialAdaptiveQuantization String
```

Adjust quantization within each frame based on spatial variation of content complexity.

##### Instances
``` purescript
Newtype Mpeg2SpatialAdaptiveQuantization _
Generic Mpeg2SpatialAdaptiveQuantization _
Show Mpeg2SpatialAdaptiveQuantization
Decode Mpeg2SpatialAdaptiveQuantization
Encode Mpeg2SpatialAdaptiveQuantization
```

#### `Mpeg2Syntax`

``` purescript
newtype Mpeg2Syntax
  = Mpeg2Syntax String
```

Produces a Type D-10 compatible bitstream (SMPTE 356M-2001).

##### Instances
``` purescript
Newtype Mpeg2Syntax _
Generic Mpeg2Syntax _
Show Mpeg2Syntax
Decode Mpeg2Syntax
Encode Mpeg2Syntax
```

#### `Mpeg2Telecine`

``` purescript
newtype Mpeg2Telecine
  = Mpeg2Telecine String
```

Only use Telecine (Mpeg2Telecine) when you set Framerate (Framerate) to 29.970. Set Telecine (Mpeg2Telecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player.

##### Instances
``` purescript
Newtype Mpeg2Telecine _
Generic Mpeg2Telecine _
Show Mpeg2Telecine
Decode Mpeg2Telecine
Encode Mpeg2Telecine
```

#### `Mpeg2TemporalAdaptiveQuantization`

``` purescript
newtype Mpeg2TemporalAdaptiveQuantization
  = Mpeg2TemporalAdaptiveQuantization String
```

Adjust quantization within each frame based on temporal variation of content complexity.

##### Instances
``` purescript
Newtype Mpeg2TemporalAdaptiveQuantization _
Generic Mpeg2TemporalAdaptiveQuantization _
Show Mpeg2TemporalAdaptiveQuantization
Decode Mpeg2TemporalAdaptiveQuantization
Encode Mpeg2TemporalAdaptiveQuantization
```

#### `MsSmoothAudioDeduplication`

``` purescript
newtype MsSmoothAudioDeduplication
  = MsSmoothAudioDeduplication String
```

COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.

##### Instances
``` purescript
Newtype MsSmoothAudioDeduplication _
Generic MsSmoothAudioDeduplication _
Show MsSmoothAudioDeduplication
Decode MsSmoothAudioDeduplication
Encode MsSmoothAudioDeduplication
```

#### `MsSmoothEncryptionSettings`

``` purescript
newtype MsSmoothEncryptionSettings
  = MsSmoothEncryptionSettings { "SpekeKeyProvider" :: NullOrUndefined (SpekeKeyProvider) }
```

If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider.

##### Instances
``` purescript
Newtype MsSmoothEncryptionSettings _
Generic MsSmoothEncryptionSettings _
Show MsSmoothEncryptionSettings
Decode MsSmoothEncryptionSettings
Encode MsSmoothEncryptionSettings
```

#### `newMsSmoothEncryptionSettings`

``` purescript
newMsSmoothEncryptionSettings :: MsSmoothEncryptionSettings
```

Constructs MsSmoothEncryptionSettings from required parameters

#### `newMsSmoothEncryptionSettings'`

``` purescript
newMsSmoothEncryptionSettings' :: ({ "SpekeKeyProvider" :: NullOrUndefined (SpekeKeyProvider) } -> { "SpekeKeyProvider" :: NullOrUndefined (SpekeKeyProvider) }) -> MsSmoothEncryptionSettings
```

Constructs MsSmoothEncryptionSettings's fields from required parameters

#### `MsSmoothGroupSettings`

``` purescript
newtype MsSmoothGroupSettings
  = MsSmoothGroupSettings { "AudioDeduplication" :: NullOrUndefined (MsSmoothAudioDeduplication), "Destination" :: NullOrUndefined (String), "Encryption" :: NullOrUndefined (MsSmoothEncryptionSettings), "FragmentLength" :: NullOrUndefined (Int), "ManifestEncoding" :: NullOrUndefined (MsSmoothManifestEncoding) }
```

Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS.

##### Instances
``` purescript
Newtype MsSmoothGroupSettings _
Generic MsSmoothGroupSettings _
Show MsSmoothGroupSettings
Decode MsSmoothGroupSettings
Encode MsSmoothGroupSettings
```

#### `newMsSmoothGroupSettings`

``` purescript
newMsSmoothGroupSettings :: MsSmoothGroupSettings
```

Constructs MsSmoothGroupSettings from required parameters

#### `newMsSmoothGroupSettings'`

``` purescript
newMsSmoothGroupSettings' :: ({ "AudioDeduplication" :: NullOrUndefined (MsSmoothAudioDeduplication), "Destination" :: NullOrUndefined (String), "Encryption" :: NullOrUndefined (MsSmoothEncryptionSettings), "FragmentLength" :: NullOrUndefined (Int), "ManifestEncoding" :: NullOrUndefined (MsSmoothManifestEncoding) } -> { "AudioDeduplication" :: NullOrUndefined (MsSmoothAudioDeduplication), "Destination" :: NullOrUndefined (String), "Encryption" :: NullOrUndefined (MsSmoothEncryptionSettings), "FragmentLength" :: NullOrUndefined (Int), "ManifestEncoding" :: NullOrUndefined (MsSmoothManifestEncoding) }) -> MsSmoothGroupSettings
```

Constructs MsSmoothGroupSettings's fields from required parameters

#### `MsSmoothManifestEncoding`

``` purescript
newtype MsSmoothManifestEncoding
  = MsSmoothManifestEncoding String
```

Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.

##### Instances
``` purescript
Newtype MsSmoothManifestEncoding _
Generic MsSmoothManifestEncoding _
Show MsSmoothManifestEncoding
Decode MsSmoothManifestEncoding
Encode MsSmoothManifestEncoding
```

#### `NielsenConfiguration`

``` purescript
newtype NielsenConfiguration
  = NielsenConfiguration { "BreakoutCode" :: NullOrUndefined (Int), "DistributorId" :: NullOrUndefined (String) }
```

Settings for Nielsen Configuration

##### Instances
``` purescript
Newtype NielsenConfiguration _
Generic NielsenConfiguration _
Show NielsenConfiguration
Decode NielsenConfiguration
Encode NielsenConfiguration
```

#### `newNielsenConfiguration`

``` purescript
newNielsenConfiguration :: NielsenConfiguration
```

Constructs NielsenConfiguration from required parameters

#### `newNielsenConfiguration'`

``` purescript
newNielsenConfiguration' :: ({ "BreakoutCode" :: NullOrUndefined (Int), "DistributorId" :: NullOrUndefined (String) } -> { "BreakoutCode" :: NullOrUndefined (Int), "DistributorId" :: NullOrUndefined (String) }) -> NielsenConfiguration
```

Constructs NielsenConfiguration's fields from required parameters

#### `NoiseReducer`

``` purescript
newtype NoiseReducer
  = NoiseReducer { "Filter" :: NullOrUndefined (NoiseReducerFilter), "FilterSettings" :: NullOrUndefined (NoiseReducerFilterSettings), "SpatialFilterSettings" :: NullOrUndefined (NoiseReducerSpatialFilterSettings) }
```

Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default. When you enable Noise reducer (NoiseReducer), you must also select a value for Noise reducer filter (NoiseReducerFilter).

##### Instances
``` purescript
Newtype NoiseReducer _
Generic NoiseReducer _
Show NoiseReducer
Decode NoiseReducer
Encode NoiseReducer
```

#### `newNoiseReducer`

``` purescript
newNoiseReducer :: NoiseReducer
```

Constructs NoiseReducer from required parameters

#### `newNoiseReducer'`

``` purescript
newNoiseReducer' :: ({ "Filter" :: NullOrUndefined (NoiseReducerFilter), "FilterSettings" :: NullOrUndefined (NoiseReducerFilterSettings), "SpatialFilterSettings" :: NullOrUndefined (NoiseReducerSpatialFilterSettings) } -> { "Filter" :: NullOrUndefined (NoiseReducerFilter), "FilterSettings" :: NullOrUndefined (NoiseReducerFilterSettings), "SpatialFilterSettings" :: NullOrUndefined (NoiseReducerSpatialFilterSettings) }) -> NoiseReducer
```

Constructs NoiseReducer's fields from required parameters

#### `NoiseReducerFilter`

``` purescript
newtype NoiseReducerFilter
  = NoiseReducerFilter String
```

Use Noise reducer filter (NoiseReducerFilter) to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer (NoiseReducer). * Bilateral is an edge preserving noise reduction filter * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) are convolution filters * Conserve is a min/max noise reduction filter * Spatial is frequency-domain filter based on JND principles.

##### Instances
``` purescript
Newtype NoiseReducerFilter _
Generic NoiseReducerFilter _
Show NoiseReducerFilter
Decode NoiseReducerFilter
Encode NoiseReducerFilter
```

#### `NoiseReducerFilterSettings`

``` purescript
newtype NoiseReducerFilterSettings
  = NoiseReducerFilterSettings { "Strength" :: NullOrUndefined (Int) }
```

Settings for a noise reducer filter

##### Instances
``` purescript
Newtype NoiseReducerFilterSettings _
Generic NoiseReducerFilterSettings _
Show NoiseReducerFilterSettings
Decode NoiseReducerFilterSettings
Encode NoiseReducerFilterSettings
```

#### `newNoiseReducerFilterSettings`

``` purescript
newNoiseReducerFilterSettings :: NoiseReducerFilterSettings
```

Constructs NoiseReducerFilterSettings from required parameters

#### `newNoiseReducerFilterSettings'`

``` purescript
newNoiseReducerFilterSettings' :: ({ "Strength" :: NullOrUndefined (Int) } -> { "Strength" :: NullOrUndefined (Int) }) -> NoiseReducerFilterSettings
```

Constructs NoiseReducerFilterSettings's fields from required parameters

#### `NoiseReducerSpatialFilterSettings`

``` purescript
newtype NoiseReducerSpatialFilterSettings
  = NoiseReducerSpatialFilterSettings { "PostFilterSharpenStrength" :: NullOrUndefined (Int), "Speed" :: NullOrUndefined (Int), "Strength" :: NullOrUndefined (Int) }
```

Noise reducer filter settings for spatial filter.

##### Instances
``` purescript
Newtype NoiseReducerSpatialFilterSettings _
Generic NoiseReducerSpatialFilterSettings _
Show NoiseReducerSpatialFilterSettings
Decode NoiseReducerSpatialFilterSettings
Encode NoiseReducerSpatialFilterSettings
```

#### `newNoiseReducerSpatialFilterSettings`

``` purescript
newNoiseReducerSpatialFilterSettings :: NoiseReducerSpatialFilterSettings
```

Constructs NoiseReducerSpatialFilterSettings from required parameters

#### `newNoiseReducerSpatialFilterSettings'`

``` purescript
newNoiseReducerSpatialFilterSettings' :: ({ "PostFilterSharpenStrength" :: NullOrUndefined (Int), "Speed" :: NullOrUndefined (Int), "Strength" :: NullOrUndefined (Int) } -> { "PostFilterSharpenStrength" :: NullOrUndefined (Int), "Speed" :: NullOrUndefined (Int), "Strength" :: NullOrUndefined (Int) }) -> NoiseReducerSpatialFilterSettings
```

Constructs NoiseReducerSpatialFilterSettings's fields from required parameters

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { "Message" :: NullOrUndefined (String) }
```

The resource you requested does not exist.

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `Order`

``` purescript
newtype Order
  = Order String
```

When you request lists of resources, you can optionally specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.

##### Instances
``` purescript
Newtype Order _
Generic Order _
Show Order
Decode Order
Encode Order
```

#### `Output`

``` purescript
newtype Output
  = Output { "AudioDescriptions" :: NullOrUndefined (ListOfAudioDescription), "CaptionDescriptions" :: NullOrUndefined (ListOfCaptionDescription), "ContainerSettings" :: NullOrUndefined (ContainerSettings), "Extension" :: NullOrUndefined (String), "NameModifier" :: NullOrUndefined (String), "OutputSettings" :: NullOrUndefined (OutputSettings), "Preset" :: NullOrUndefined (String), "VideoDescription" :: NullOrUndefined (VideoDescription) }
```

An output object describes the settings for a single output file or stream in an output group.

##### Instances
``` purescript
Newtype Output _
Generic Output _
Show Output
Decode Output
Encode Output
```

#### `newOutput`

``` purescript
newOutput :: Output
```

Constructs Output from required parameters

#### `newOutput'`

``` purescript
newOutput' :: ({ "AudioDescriptions" :: NullOrUndefined (ListOfAudioDescription), "CaptionDescriptions" :: NullOrUndefined (ListOfCaptionDescription), "ContainerSettings" :: NullOrUndefined (ContainerSettings), "Extension" :: NullOrUndefined (String), "NameModifier" :: NullOrUndefined (String), "OutputSettings" :: NullOrUndefined (OutputSettings), "Preset" :: NullOrUndefined (String), "VideoDescription" :: NullOrUndefined (VideoDescription) } -> { "AudioDescriptions" :: NullOrUndefined (ListOfAudioDescription), "CaptionDescriptions" :: NullOrUndefined (ListOfCaptionDescription), "ContainerSettings" :: NullOrUndefined (ContainerSettings), "Extension" :: NullOrUndefined (String), "NameModifier" :: NullOrUndefined (String), "OutputSettings" :: NullOrUndefined (OutputSettings), "Preset" :: NullOrUndefined (String), "VideoDescription" :: NullOrUndefined (VideoDescription) }) -> Output
```

Constructs Output's fields from required parameters

#### `OutputChannelMapping`

``` purescript
newtype OutputChannelMapping
  = OutputChannelMapping { "InputChannels" :: NullOrUndefined (ListOf__integer) }
```

OutputChannel mapping settings.

##### Instances
``` purescript
Newtype OutputChannelMapping _
Generic OutputChannelMapping _
Show OutputChannelMapping
Decode OutputChannelMapping
Encode OutputChannelMapping
```

#### `newOutputChannelMapping`

``` purescript
newOutputChannelMapping :: OutputChannelMapping
```

Constructs OutputChannelMapping from required parameters

#### `newOutputChannelMapping'`

``` purescript
newOutputChannelMapping' :: ({ "InputChannels" :: NullOrUndefined (ListOf__integer) } -> { "InputChannels" :: NullOrUndefined (ListOf__integer) }) -> OutputChannelMapping
```

Constructs OutputChannelMapping's fields from required parameters

#### `OutputDetail`

``` purescript
newtype OutputDetail
  = OutputDetail { "DurationInMs" :: NullOrUndefined (Int), "VideoDetails" :: NullOrUndefined (VideoDetail) }
```

Details regarding output

##### Instances
``` purescript
Newtype OutputDetail _
Generic OutputDetail _
Show OutputDetail
Decode OutputDetail
Encode OutputDetail
```

#### `newOutputDetail`

``` purescript
newOutputDetail :: OutputDetail
```

Constructs OutputDetail from required parameters

#### `newOutputDetail'`

``` purescript
newOutputDetail' :: ({ "DurationInMs" :: NullOrUndefined (Int), "VideoDetails" :: NullOrUndefined (VideoDetail) } -> { "DurationInMs" :: NullOrUndefined (Int), "VideoDetails" :: NullOrUndefined (VideoDetail) }) -> OutputDetail
```

Constructs OutputDetail's fields from required parameters

#### `OutputGroup`

``` purescript
newtype OutputGroup
  = OutputGroup { "CustomName" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "OutputGroupSettings" :: NullOrUndefined (OutputGroupSettings), "Outputs" :: NullOrUndefined (ListOfOutput) }
```

Group of outputs

##### Instances
``` purescript
Newtype OutputGroup _
Generic OutputGroup _
Show OutputGroup
Decode OutputGroup
Encode OutputGroup
```

#### `newOutputGroup`

``` purescript
newOutputGroup :: OutputGroup
```

Constructs OutputGroup from required parameters

#### `newOutputGroup'`

``` purescript
newOutputGroup' :: ({ "CustomName" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "OutputGroupSettings" :: NullOrUndefined (OutputGroupSettings), "Outputs" :: NullOrUndefined (ListOfOutput) } -> { "CustomName" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "OutputGroupSettings" :: NullOrUndefined (OutputGroupSettings), "Outputs" :: NullOrUndefined (ListOfOutput) }) -> OutputGroup
```

Constructs OutputGroup's fields from required parameters

#### `OutputGroupDetail`

``` purescript
newtype OutputGroupDetail
  = OutputGroupDetail { "OutputDetails" :: NullOrUndefined (ListOfOutputDetail) }
```

Contains details about the output groups specified in the job settings.

##### Instances
``` purescript
Newtype OutputGroupDetail _
Generic OutputGroupDetail _
Show OutputGroupDetail
Decode OutputGroupDetail
Encode OutputGroupDetail
```

#### `newOutputGroupDetail`

``` purescript
newOutputGroupDetail :: OutputGroupDetail
```

Constructs OutputGroupDetail from required parameters

#### `newOutputGroupDetail'`

``` purescript
newOutputGroupDetail' :: ({ "OutputDetails" :: NullOrUndefined (ListOfOutputDetail) } -> { "OutputDetails" :: NullOrUndefined (ListOfOutputDetail) }) -> OutputGroupDetail
```

Constructs OutputGroupDetail's fields from required parameters

#### `OutputGroupSettings`

``` purescript
newtype OutputGroupSettings
  = OutputGroupSettings { "DashIsoGroupSettings" :: NullOrUndefined (DashIsoGroupSettings), "FileGroupSettings" :: NullOrUndefined (FileGroupSettings), "HlsGroupSettings" :: NullOrUndefined (HlsGroupSettings), "MsSmoothGroupSettings" :: NullOrUndefined (MsSmoothGroupSettings), "Type" :: NullOrUndefined (OutputGroupType) }
```

Output Group settings, including type

##### Instances
``` purescript
Newtype OutputGroupSettings _
Generic OutputGroupSettings _
Show OutputGroupSettings
Decode OutputGroupSettings
Encode OutputGroupSettings
```

#### `newOutputGroupSettings`

``` purescript
newOutputGroupSettings :: OutputGroupSettings
```

Constructs OutputGroupSettings from required parameters

#### `newOutputGroupSettings'`

``` purescript
newOutputGroupSettings' :: ({ "DashIsoGroupSettings" :: NullOrUndefined (DashIsoGroupSettings), "FileGroupSettings" :: NullOrUndefined (FileGroupSettings), "HlsGroupSettings" :: NullOrUndefined (HlsGroupSettings), "MsSmoothGroupSettings" :: NullOrUndefined (MsSmoothGroupSettings), "Type" :: NullOrUndefined (OutputGroupType) } -> { "DashIsoGroupSettings" :: NullOrUndefined (DashIsoGroupSettings), "FileGroupSettings" :: NullOrUndefined (FileGroupSettings), "HlsGroupSettings" :: NullOrUndefined (HlsGroupSettings), "MsSmoothGroupSettings" :: NullOrUndefined (MsSmoothGroupSettings), "Type" :: NullOrUndefined (OutputGroupType) }) -> OutputGroupSettings
```

Constructs OutputGroupSettings's fields from required parameters

#### `OutputGroupType`

``` purescript
newtype OutputGroupType
  = OutputGroupType String
```

Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming)

##### Instances
``` purescript
Newtype OutputGroupType _
Generic OutputGroupType _
Show OutputGroupType
Decode OutputGroupType
Encode OutputGroupType
```

#### `OutputSdt`

``` purescript
newtype OutputSdt
  = OutputSdt String
```

Selects method of inserting SDT information into output stream.  "Follow input SDT" copies SDT information from input stream to  output stream. "Follow input SDT if present" copies SDT information from  input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter "SDT  Manually" means user will enter the SDT information. "No SDT" means output  stream will not contain SDT information.

##### Instances
``` purescript
Newtype OutputSdt _
Generic OutputSdt _
Show OutputSdt
Decode OutputSdt
Encode OutputSdt
```

#### `OutputSettings`

``` purescript
newtype OutputSettings
  = OutputSettings { "HlsSettings" :: NullOrUndefined (HlsSettings) }
```

Specific settings for this type of output.

##### Instances
``` purescript
Newtype OutputSettings _
Generic OutputSettings _
Show OutputSettings
Decode OutputSettings
Encode OutputSettings
```

#### `newOutputSettings`

``` purescript
newOutputSettings :: OutputSettings
```

Constructs OutputSettings from required parameters

#### `newOutputSettings'`

``` purescript
newOutputSettings' :: ({ "HlsSettings" :: NullOrUndefined (HlsSettings) } -> { "HlsSettings" :: NullOrUndefined (HlsSettings) }) -> OutputSettings
```

Constructs OutputSettings's fields from required parameters

#### `Preset`

``` purescript
newtype Preset
  = Preset { "Arn" :: NullOrUndefined (String), "Category" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "LastUpdated" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (PresetSettings), "Type" :: NullOrUndefined (Type) }
```

A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.

##### Instances
``` purescript
Newtype Preset _
Generic Preset _
Show Preset
Decode Preset
Encode Preset
```

#### `newPreset`

``` purescript
newPreset :: Preset
```

Constructs Preset from required parameters

#### `newPreset'`

``` purescript
newPreset' :: ({ "Arn" :: NullOrUndefined (String), "Category" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "LastUpdated" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (PresetSettings), "Type" :: NullOrUndefined (Type) } -> { "Arn" :: NullOrUndefined (String), "Category" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "LastUpdated" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (PresetSettings), "Type" :: NullOrUndefined (Type) }) -> Preset
```

Constructs Preset's fields from required parameters

#### `PresetListBy`

``` purescript
newtype PresetListBy
  = PresetListBy String
```

Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.

##### Instances
``` purescript
Newtype PresetListBy _
Generic PresetListBy _
Show PresetListBy
Decode PresetListBy
Encode PresetListBy
```

#### `PresetSettings`

``` purescript
newtype PresetSettings
  = PresetSettings { "AudioDescriptions" :: NullOrUndefined (ListOfAudioDescription), "CaptionDescriptions" :: NullOrUndefined (ListOfCaptionDescriptionPreset), "ContainerSettings" :: NullOrUndefined (ContainerSettings), "VideoDescription" :: NullOrUndefined (VideoDescription) }
```

Settings for preset

##### Instances
``` purescript
Newtype PresetSettings _
Generic PresetSettings _
Show PresetSettings
Decode PresetSettings
Encode PresetSettings
```

#### `newPresetSettings`

``` purescript
newPresetSettings :: PresetSettings
```

Constructs PresetSettings from required parameters

#### `newPresetSettings'`

``` purescript
newPresetSettings' :: ({ "AudioDescriptions" :: NullOrUndefined (ListOfAudioDescription), "CaptionDescriptions" :: NullOrUndefined (ListOfCaptionDescriptionPreset), "ContainerSettings" :: NullOrUndefined (ContainerSettings), "VideoDescription" :: NullOrUndefined (VideoDescription) } -> { "AudioDescriptions" :: NullOrUndefined (ListOfAudioDescription), "CaptionDescriptions" :: NullOrUndefined (ListOfCaptionDescriptionPreset), "ContainerSettings" :: NullOrUndefined (ContainerSettings), "VideoDescription" :: NullOrUndefined (VideoDescription) }) -> PresetSettings
```

Constructs PresetSettings's fields from required parameters

#### `ProresCodecProfile`

``` purescript
newtype ProresCodecProfile
  = ProresCodecProfile String
```

Use Profile (ProResCodecProfile) to specifiy the type of Apple ProRes codec to use for this output.

##### Instances
``` purescript
Newtype ProresCodecProfile _
Generic ProresCodecProfile _
Show ProresCodecProfile
Decode ProresCodecProfile
Encode ProresCodecProfile
```

#### `ProresFramerateControl`

``` purescript
newtype ProresFramerateControl
  = ProresFramerateControl String
```

Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.

##### Instances
``` purescript
Newtype ProresFramerateControl _
Generic ProresFramerateControl _
Show ProresFramerateControl
Decode ProresFramerateControl
Encode ProresFramerateControl
```

#### `ProresFramerateConversionAlgorithm`

``` purescript
newtype ProresFramerateConversionAlgorithm
  = ProresFramerateConversionAlgorithm String
```

When set to INTERPOLATE, produces smoother motion during framerate conversion.

##### Instances
``` purescript
Newtype ProresFramerateConversionAlgorithm _
Generic ProresFramerateConversionAlgorithm _
Show ProresFramerateConversionAlgorithm
Decode ProresFramerateConversionAlgorithm
Encode ProresFramerateConversionAlgorithm
```

#### `ProresInterlaceMode`

``` purescript
newtype ProresInterlaceMode
  = ProresInterlaceMode String
```

Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.

##### Instances
``` purescript
Newtype ProresInterlaceMode _
Generic ProresInterlaceMode _
Show ProresInterlaceMode
Decode ProresInterlaceMode
Encode ProresInterlaceMode
```

#### `ProresParControl`

``` purescript
newtype ProresParControl
  = ProresParControl String
```

Use (ProresParControl) to specify how the service determines the pixel aspect ratio. Set to Follow source (INITIALIZE_FROM_SOURCE) to use the pixel aspect ratio from the input.  To specify a different pixel aspect ratio: Using the console, choose it from the dropdown menu. Using the API, set ProresParControl to (SPECIFIED) and provide  for (ParNumerator) and (ParDenominator).

##### Instances
``` purescript
Newtype ProresParControl _
Generic ProresParControl _
Show ProresParControl
Decode ProresParControl
Encode ProresParControl
```

#### `ProresSettings`

``` purescript
newtype ProresSettings
  = ProresSettings { "CodecProfile" :: NullOrUndefined (ProresCodecProfile), "FramerateControl" :: NullOrUndefined (ProresFramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (ProresFramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (ProresInterlaceMode), "ParControl" :: NullOrUndefined (ProresParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "SlowPal" :: NullOrUndefined (ProresSlowPal), "Telecine" :: NullOrUndefined (ProresTelecine) }
```

Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES.

##### Instances
``` purescript
Newtype ProresSettings _
Generic ProresSettings _
Show ProresSettings
Decode ProresSettings
Encode ProresSettings
```

#### `newProresSettings`

``` purescript
newProresSettings :: ProresSettings
```

Constructs ProresSettings from required parameters

#### `newProresSettings'`

``` purescript
newProresSettings' :: ({ "CodecProfile" :: NullOrUndefined (ProresCodecProfile), "FramerateControl" :: NullOrUndefined (ProresFramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (ProresFramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (ProresInterlaceMode), "ParControl" :: NullOrUndefined (ProresParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "SlowPal" :: NullOrUndefined (ProresSlowPal), "Telecine" :: NullOrUndefined (ProresTelecine) } -> { "CodecProfile" :: NullOrUndefined (ProresCodecProfile), "FramerateControl" :: NullOrUndefined (ProresFramerateControl), "FramerateConversionAlgorithm" :: NullOrUndefined (ProresFramerateConversionAlgorithm), "FramerateDenominator" :: NullOrUndefined (Int), "FramerateNumerator" :: NullOrUndefined (Int), "InterlaceMode" :: NullOrUndefined (ProresInterlaceMode), "ParControl" :: NullOrUndefined (ProresParControl), "ParDenominator" :: NullOrUndefined (Int), "ParNumerator" :: NullOrUndefined (Int), "SlowPal" :: NullOrUndefined (ProresSlowPal), "Telecine" :: NullOrUndefined (ProresTelecine) }) -> ProresSettings
```

Constructs ProresSettings's fields from required parameters

#### `ProresSlowPal`

``` purescript
newtype ProresSlowPal
  = ProresSlowPal String
```

Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.

##### Instances
``` purescript
Newtype ProresSlowPal _
Generic ProresSlowPal _
Show ProresSlowPal
Decode ProresSlowPal
Encode ProresSlowPal
```

#### `ProresTelecine`

``` purescript
newtype ProresTelecine
  = ProresTelecine String
```

Only use Telecine (ProresTelecine) when you set Framerate (Framerate) to 29.970. Set Telecine (ProresTelecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player.

##### Instances
``` purescript
Newtype ProresTelecine _
Generic ProresTelecine _
Show ProresTelecine
Decode ProresTelecine
Encode ProresTelecine
```

#### `Queue`

``` purescript
newtype Queue
  = Queue { "Arn" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "LastUpdated" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Status" :: NullOrUndefined (QueueStatus), "Type" :: NullOrUndefined (Type) }
```

MediaConvert jobs are submitted to a queue. Unless specified otherwise jobs are submitted to a built-in default queue. User can create additional queues to separate the jobs of different categories or priority.

##### Instances
``` purescript
Newtype Queue _
Generic Queue _
Show Queue
Decode Queue
Encode Queue
```

#### `newQueue`

``` purescript
newQueue :: Queue
```

Constructs Queue from required parameters

#### `newQueue'`

``` purescript
newQueue' :: ({ "Arn" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "LastUpdated" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Status" :: NullOrUndefined (QueueStatus), "Type" :: NullOrUndefined (Type) } -> { "Arn" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String), "LastUpdated" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Status" :: NullOrUndefined (QueueStatus), "Type" :: NullOrUndefined (Type) }) -> Queue
```

Constructs Queue's fields from required parameters

#### `QueueListBy`

``` purescript
newtype QueueListBy
  = QueueListBy String
```

Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.

##### Instances
``` purescript
Newtype QueueListBy _
Generic QueueListBy _
Show QueueListBy
Decode QueueListBy
Encode QueueListBy
```

#### `QueueStatus`

``` purescript
newtype QueueStatus
  = QueueStatus String
```

Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that queue will not begin. Jobs running when a queue is paused continue to run until they finish or error out.

##### Instances
``` purescript
Newtype QueueStatus _
Generic QueueStatus _
Show QueueStatus
Decode QueueStatus
Encode QueueStatus
```

#### `Rectangle`

``` purescript
newtype Rectangle
  = Rectangle { "Height" :: NullOrUndefined (Int), "Width" :: NullOrUndefined (Int), "X" :: NullOrUndefined (Int), "Y" :: NullOrUndefined (Int) }
```

Use Rectangle to identify a specific area of the video frame.

##### Instances
``` purescript
Newtype Rectangle _
Generic Rectangle _
Show Rectangle
Decode Rectangle
Encode Rectangle
```

#### `newRectangle`

``` purescript
newRectangle :: Rectangle
```

Constructs Rectangle from required parameters

#### `newRectangle'`

``` purescript
newRectangle' :: ({ "Height" :: NullOrUndefined (Int), "Width" :: NullOrUndefined (Int), "X" :: NullOrUndefined (Int), "Y" :: NullOrUndefined (Int) } -> { "Height" :: NullOrUndefined (Int), "Width" :: NullOrUndefined (Int), "X" :: NullOrUndefined (Int), "Y" :: NullOrUndefined (Int) }) -> Rectangle
```

Constructs Rectangle's fields from required parameters

#### `RemixSettings`

``` purescript
newtype RemixSettings
  = RemixSettings { "ChannelMapping" :: NullOrUndefined (ChannelMapping), "ChannelsIn" :: NullOrUndefined (Int), "ChannelsOut" :: NullOrUndefined (Int) }
```

Use Manual audio remixing (RemixSettings) to adjust audio levels for each output channel. With audio remixing, you can output more or fewer audio channels than your input audio source provides.

##### Instances
``` purescript
Newtype RemixSettings _
Generic RemixSettings _
Show RemixSettings
Decode RemixSettings
Encode RemixSettings
```

#### `newRemixSettings`

``` purescript
newRemixSettings :: RemixSettings
```

Constructs RemixSettings from required parameters

#### `newRemixSettings'`

``` purescript
newRemixSettings' :: ({ "ChannelMapping" :: NullOrUndefined (ChannelMapping), "ChannelsIn" :: NullOrUndefined (Int), "ChannelsOut" :: NullOrUndefined (Int) } -> { "ChannelMapping" :: NullOrUndefined (ChannelMapping), "ChannelsIn" :: NullOrUndefined (Int), "ChannelsOut" :: NullOrUndefined (Int) }) -> RemixSettings
```

Constructs RemixSettings's fields from required parameters

#### `RespondToAfd`

``` purescript
newtype RespondToAfd
  = RespondToAfd String
```

Use Respond to AFD (RespondToAfd) to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to (NONE). A preferred implementation of this workflow is to set RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to remove all input AFD values from this output.

##### Instances
``` purescript
Newtype RespondToAfd _
Generic RespondToAfd _
Show RespondToAfd
Decode RespondToAfd
Encode RespondToAfd
```

#### `ScalingBehavior`

``` purescript
newtype ScalingBehavior
  = ScalingBehavior String
```

Applies only if your input aspect ratio is different from your output aspect ratio. Enable Stretch to output (StretchToOutput) to have the service stretch your video image to fit. Leave this setting disabled to allow the service to letterbox your video instead. This setting overrides any positioning value you specify elsewhere in the job.

##### Instances
``` purescript
Newtype ScalingBehavior _
Generic ScalingBehavior _
Show ScalingBehavior
Decode ScalingBehavior
Encode ScalingBehavior
```

#### `SccDestinationFramerate`

``` purescript
newtype SccDestinationFramerate
  = SccDestinationFramerate String
```

Set Framerate (SccDestinationFramerate) to make sure that the captions and the video are synchronized in the output. Specify a framerate that matches the framerate of the associated video. If the video framerate is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME).

##### Instances
``` purescript
Newtype SccDestinationFramerate _
Generic SccDestinationFramerate _
Show SccDestinationFramerate
Decode SccDestinationFramerate
Encode SccDestinationFramerate
```

#### `SccDestinationSettings`

``` purescript
newtype SccDestinationSettings
  = SccDestinationSettings { "Framerate" :: NullOrUndefined (SccDestinationFramerate) }
```

Settings for SCC caption output.

##### Instances
``` purescript
Newtype SccDestinationSettings _
Generic SccDestinationSettings _
Show SccDestinationSettings
Decode SccDestinationSettings
Encode SccDestinationSettings
```

#### `newSccDestinationSettings`

``` purescript
newSccDestinationSettings :: SccDestinationSettings
```

Constructs SccDestinationSettings from required parameters

#### `newSccDestinationSettings'`

``` purescript
newSccDestinationSettings' :: ({ "Framerate" :: NullOrUndefined (SccDestinationFramerate) } -> { "Framerate" :: NullOrUndefined (SccDestinationFramerate) }) -> SccDestinationSettings
```

Constructs SccDestinationSettings's fields from required parameters

#### `SpekeKeyProvider`

``` purescript
newtype SpekeKeyProvider
  = SpekeKeyProvider { "ResourceId" :: NullOrUndefined (String), "SystemIds" :: NullOrUndefined (ListOf__string), "Url" :: NullOrUndefined (String) }
```

Settings for use with a SPEKE key provider

##### Instances
``` purescript
Newtype SpekeKeyProvider _
Generic SpekeKeyProvider _
Show SpekeKeyProvider
Decode SpekeKeyProvider
Encode SpekeKeyProvider
```

#### `newSpekeKeyProvider`

``` purescript
newSpekeKeyProvider :: SpekeKeyProvider
```

Constructs SpekeKeyProvider from required parameters

#### `newSpekeKeyProvider'`

``` purescript
newSpekeKeyProvider' :: ({ "ResourceId" :: NullOrUndefined (String), "SystemIds" :: NullOrUndefined (ListOf__string), "Url" :: NullOrUndefined (String) } -> { "ResourceId" :: NullOrUndefined (String), "SystemIds" :: NullOrUndefined (ListOf__string), "Url" :: NullOrUndefined (String) }) -> SpekeKeyProvider
```

Constructs SpekeKeyProvider's fields from required parameters

#### `StaticKeyProvider`

``` purescript
newtype StaticKeyProvider
  = StaticKeyProvider { "KeyFormat" :: NullOrUndefined (String), "KeyFormatVersions" :: NullOrUndefined (String), "StaticKeyValue" :: NullOrUndefined (String), "Url" :: NullOrUndefined (String) }
```

Settings for use with a SPEKE key provider.

##### Instances
``` purescript
Newtype StaticKeyProvider _
Generic StaticKeyProvider _
Show StaticKeyProvider
Decode StaticKeyProvider
Encode StaticKeyProvider
```

#### `newStaticKeyProvider`

``` purescript
newStaticKeyProvider :: StaticKeyProvider
```

Constructs StaticKeyProvider from required parameters

#### `newStaticKeyProvider'`

``` purescript
newStaticKeyProvider' :: ({ "KeyFormat" :: NullOrUndefined (String), "KeyFormatVersions" :: NullOrUndefined (String), "StaticKeyValue" :: NullOrUndefined (String), "Url" :: NullOrUndefined (String) } -> { "KeyFormat" :: NullOrUndefined (String), "KeyFormatVersions" :: NullOrUndefined (String), "StaticKeyValue" :: NullOrUndefined (String), "Url" :: NullOrUndefined (String) }) -> StaticKeyProvider
```

Constructs StaticKeyProvider's fields from required parameters

#### `TeletextDestinationSettings`

``` purescript
newtype TeletextDestinationSettings
  = TeletextDestinationSettings { "PageNumber" :: NullOrUndefined (String) }
```

Settings for Teletext caption output

##### Instances
``` purescript
Newtype TeletextDestinationSettings _
Generic TeletextDestinationSettings _
Show TeletextDestinationSettings
Decode TeletextDestinationSettings
Encode TeletextDestinationSettings
```

#### `newTeletextDestinationSettings`

``` purescript
newTeletextDestinationSettings :: TeletextDestinationSettings
```

Constructs TeletextDestinationSettings from required parameters

#### `newTeletextDestinationSettings'`

``` purescript
newTeletextDestinationSettings' :: ({ "PageNumber" :: NullOrUndefined (String) } -> { "PageNumber" :: NullOrUndefined (String) }) -> TeletextDestinationSettings
```

Constructs TeletextDestinationSettings's fields from required parameters

#### `TeletextSourceSettings`

``` purescript
newtype TeletextSourceSettings
  = TeletextSourceSettings { "PageNumber" :: NullOrUndefined (String) }
```

Settings specific to Teletext caption sources, including Page number.

##### Instances
``` purescript
Newtype TeletextSourceSettings _
Generic TeletextSourceSettings _
Show TeletextSourceSettings
Decode TeletextSourceSettings
Encode TeletextSourceSettings
```

#### `newTeletextSourceSettings`

``` purescript
newTeletextSourceSettings :: TeletextSourceSettings
```

Constructs TeletextSourceSettings from required parameters

#### `newTeletextSourceSettings'`

``` purescript
newTeletextSourceSettings' :: ({ "PageNumber" :: NullOrUndefined (String) } -> { "PageNumber" :: NullOrUndefined (String) }) -> TeletextSourceSettings
```

Constructs TeletextSourceSettings's fields from required parameters

#### `TimecodeBurnin`

``` purescript
newtype TimecodeBurnin
  = TimecodeBurnin { "FontSize" :: NullOrUndefined (Int), "Position" :: NullOrUndefined (TimecodeBurninPosition), "Prefix" :: NullOrUndefined (String) }
```

Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and specified prefix into the output.

##### Instances
``` purescript
Newtype TimecodeBurnin _
Generic TimecodeBurnin _
Show TimecodeBurnin
Decode TimecodeBurnin
Encode TimecodeBurnin
```

#### `newTimecodeBurnin`

``` purescript
newTimecodeBurnin :: TimecodeBurnin
```

Constructs TimecodeBurnin from required parameters

#### `newTimecodeBurnin'`

``` purescript
newTimecodeBurnin' :: ({ "FontSize" :: NullOrUndefined (Int), "Position" :: NullOrUndefined (TimecodeBurninPosition), "Prefix" :: NullOrUndefined (String) } -> { "FontSize" :: NullOrUndefined (Int), "Position" :: NullOrUndefined (TimecodeBurninPosition), "Prefix" :: NullOrUndefined (String) }) -> TimecodeBurnin
```

Constructs TimecodeBurnin's fields from required parameters

#### `TimecodeBurninPosition`

``` purescript
newtype TimecodeBurninPosition
  = TimecodeBurninPosition String
```

Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to specify the location the burned-in timecode on output video.

##### Instances
``` purescript
Newtype TimecodeBurninPosition _
Generic TimecodeBurninPosition _
Show TimecodeBurninPosition
Decode TimecodeBurninPosition
Encode TimecodeBurninPosition
```

#### `TimecodeConfig`

``` purescript
newtype TimecodeConfig
  = TimecodeConfig { "Anchor" :: NullOrUndefined (String), "Source" :: NullOrUndefined (TimecodeSource), "Start" :: NullOrUndefined (String), "TimestampOffset" :: NullOrUndefined (String) }
```

Contains settings used to acquire and adjust timecode information from inputs.

##### Instances
``` purescript
Newtype TimecodeConfig _
Generic TimecodeConfig _
Show TimecodeConfig
Decode TimecodeConfig
Encode TimecodeConfig
```

#### `newTimecodeConfig`

``` purescript
newTimecodeConfig :: TimecodeConfig
```

Constructs TimecodeConfig from required parameters

#### `newTimecodeConfig'`

``` purescript
newTimecodeConfig' :: ({ "Anchor" :: NullOrUndefined (String), "Source" :: NullOrUndefined (TimecodeSource), "Start" :: NullOrUndefined (String), "TimestampOffset" :: NullOrUndefined (String) } -> { "Anchor" :: NullOrUndefined (String), "Source" :: NullOrUndefined (TimecodeSource), "Start" :: NullOrUndefined (String), "TimestampOffset" :: NullOrUndefined (String) }) -> TimecodeConfig
```

Constructs TimecodeConfig's fields from required parameters

#### `TimecodeSource`

``` purescript
newtype TimecodeSource
  = TimecodeSource String
```

Use Timecode source (TimecodeSource) to set how timecodes are handled within this input. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded (EMBEDDED) - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 (ZEROBASED) instead. * Start at 0 (ZEROBASED) - Set the timecode of the initial frame to 00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set the timecode of the initial frame to a value other than zero. You use Start timecode (Start) to provide this value.

##### Instances
``` purescript
Newtype TimecodeSource _
Generic TimecodeSource _
Show TimecodeSource
Decode TimecodeSource
Encode TimecodeSource
```

#### `TimedMetadata`

``` purescript
newtype TimedMetadata
  = TimedMetadata String
```

If PASSTHROUGH, inserts ID3 timed metadata from the timed_metadata REST command into this output.

##### Instances
``` purescript
Newtype TimedMetadata _
Generic TimedMetadata _
Show TimedMetadata
Decode TimedMetadata
Encode TimedMetadata
```

#### `TimedMetadataInsertion`

``` purescript
newtype TimedMetadataInsertion
  = TimedMetadataInsertion { "Id3Insertions" :: NullOrUndefined (ListOfId3Insertion) }
```

Enable Timed metadata insertion (TimedMetadataInsertion) to include ID3 tags in your job. To include timed metadata, you must enable it here, enable it in each output container, and specify tags and timecodes in ID3 insertion (Id3Insertion) objects.

##### Instances
``` purescript
Newtype TimedMetadataInsertion _
Generic TimedMetadataInsertion _
Show TimedMetadataInsertion
Decode TimedMetadataInsertion
Encode TimedMetadataInsertion
```

#### `newTimedMetadataInsertion`

``` purescript
newTimedMetadataInsertion :: TimedMetadataInsertion
```

Constructs TimedMetadataInsertion from required parameters

#### `newTimedMetadataInsertion'`

``` purescript
newTimedMetadataInsertion' :: ({ "Id3Insertions" :: NullOrUndefined (ListOfId3Insertion) } -> { "Id3Insertions" :: NullOrUndefined (ListOfId3Insertion) }) -> TimedMetadataInsertion
```

Constructs TimedMetadataInsertion's fields from required parameters

#### `Timing`

``` purescript
newtype Timing
  = Timing { "FinishTime" :: NullOrUndefined (Timestamp), "StartTime" :: NullOrUndefined (Timestamp), "SubmitTime" :: NullOrUndefined (Timestamp) }
```

Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds.

##### Instances
``` purescript
Newtype Timing _
Generic Timing _
Show Timing
Decode Timing
Encode Timing
```

#### `newTiming`

``` purescript
newTiming :: Timing
```

Constructs Timing from required parameters

#### `newTiming'`

``` purescript
newTiming' :: ({ "FinishTime" :: NullOrUndefined (Timestamp), "StartTime" :: NullOrUndefined (Timestamp), "SubmitTime" :: NullOrUndefined (Timestamp) } -> { "FinishTime" :: NullOrUndefined (Timestamp), "StartTime" :: NullOrUndefined (Timestamp), "SubmitTime" :: NullOrUndefined (Timestamp) }) -> Timing
```

Constructs Timing's fields from required parameters

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { "Message" :: NullOrUndefined (String) }
```

Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests.

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `TtmlDestinationSettings`

``` purescript
newtype TtmlDestinationSettings
  = TtmlDestinationSettings { "StylePassthrough" :: NullOrUndefined (TtmlStylePassthrough) }
```

Settings specific to TTML caption outputs, including Pass style information (TtmlStylePassthrough).

##### Instances
``` purescript
Newtype TtmlDestinationSettings _
Generic TtmlDestinationSettings _
Show TtmlDestinationSettings
Decode TtmlDestinationSettings
Encode TtmlDestinationSettings
```

#### `newTtmlDestinationSettings`

``` purescript
newTtmlDestinationSettings :: TtmlDestinationSettings
```

Constructs TtmlDestinationSettings from required parameters

#### `newTtmlDestinationSettings'`

``` purescript
newTtmlDestinationSettings' :: ({ "StylePassthrough" :: NullOrUndefined (TtmlStylePassthrough) } -> { "StylePassthrough" :: NullOrUndefined (TtmlStylePassthrough) }) -> TtmlDestinationSettings
```

Constructs TtmlDestinationSettings's fields from required parameters

#### `TtmlStylePassthrough`

``` purescript
newtype TtmlStylePassthrough
  = TtmlStylePassthrough String
```

Pass through style and position information from a TTML-like input source (TTML, SMPTE-TT, CFF-TT) to the CFF-TT output or TTML output.

##### Instances
``` purescript
Newtype TtmlStylePassthrough _
Generic TtmlStylePassthrough _
Show TtmlStylePassthrough
Decode TtmlStylePassthrough
Encode TtmlStylePassthrough
```

#### `Type`

``` purescript
newtype Type
  = Type String
```

##### Instances
``` purescript
Newtype Type _
Generic Type _
Show Type
Decode Type
Encode Type
```

#### `UpdateJobTemplateRequest`

``` purescript
newtype UpdateJobTemplateRequest
  = UpdateJobTemplateRequest { "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: String, "Queue" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobTemplateSettings) }
```

##### Instances
``` purescript
Newtype UpdateJobTemplateRequest _
Generic UpdateJobTemplateRequest _
Show UpdateJobTemplateRequest
Decode UpdateJobTemplateRequest
Encode UpdateJobTemplateRequest
```

#### `newUpdateJobTemplateRequest`

``` purescript
newUpdateJobTemplateRequest :: String -> UpdateJobTemplateRequest
```

Constructs UpdateJobTemplateRequest from required parameters

#### `newUpdateJobTemplateRequest'`

``` purescript
newUpdateJobTemplateRequest' :: String -> ({ "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: String, "Queue" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobTemplateSettings) } -> { "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: String, "Queue" :: NullOrUndefined (String), "Settings" :: NullOrUndefined (JobTemplateSettings) }) -> UpdateJobTemplateRequest
```

Constructs UpdateJobTemplateRequest's fields from required parameters

#### `UpdateJobTemplateResponse`

``` purescript
newtype UpdateJobTemplateResponse
  = UpdateJobTemplateResponse { "JobTemplate" :: NullOrUndefined (JobTemplate) }
```

##### Instances
``` purescript
Newtype UpdateJobTemplateResponse _
Generic UpdateJobTemplateResponse _
Show UpdateJobTemplateResponse
Decode UpdateJobTemplateResponse
Encode UpdateJobTemplateResponse
```

#### `newUpdateJobTemplateResponse`

``` purescript
newUpdateJobTemplateResponse :: UpdateJobTemplateResponse
```

Constructs UpdateJobTemplateResponse from required parameters

#### `newUpdateJobTemplateResponse'`

``` purescript
newUpdateJobTemplateResponse' :: ({ "JobTemplate" :: NullOrUndefined (JobTemplate) } -> { "JobTemplate" :: NullOrUndefined (JobTemplate) }) -> UpdateJobTemplateResponse
```

Constructs UpdateJobTemplateResponse's fields from required parameters

#### `UpdatePresetRequest`

``` purescript
newtype UpdatePresetRequest
  = UpdatePresetRequest { "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: String, "Settings" :: NullOrUndefined (PresetSettings) }
```

##### Instances
``` purescript
Newtype UpdatePresetRequest _
Generic UpdatePresetRequest _
Show UpdatePresetRequest
Decode UpdatePresetRequest
Encode UpdatePresetRequest
```

#### `newUpdatePresetRequest`

``` purescript
newUpdatePresetRequest :: String -> UpdatePresetRequest
```

Constructs UpdatePresetRequest from required parameters

#### `newUpdatePresetRequest'`

``` purescript
newUpdatePresetRequest' :: String -> ({ "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: String, "Settings" :: NullOrUndefined (PresetSettings) } -> { "Category" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Name" :: String, "Settings" :: NullOrUndefined (PresetSettings) }) -> UpdatePresetRequest
```

Constructs UpdatePresetRequest's fields from required parameters

#### `UpdatePresetResponse`

``` purescript
newtype UpdatePresetResponse
  = UpdatePresetResponse { "Preset" :: NullOrUndefined (Preset) }
```

##### Instances
``` purescript
Newtype UpdatePresetResponse _
Generic UpdatePresetResponse _
Show UpdatePresetResponse
Decode UpdatePresetResponse
Encode UpdatePresetResponse
```

#### `newUpdatePresetResponse`

``` purescript
newUpdatePresetResponse :: UpdatePresetResponse
```

Constructs UpdatePresetResponse from required parameters

#### `newUpdatePresetResponse'`

``` purescript
newUpdatePresetResponse' :: ({ "Preset" :: NullOrUndefined (Preset) } -> { "Preset" :: NullOrUndefined (Preset) }) -> UpdatePresetResponse
```

Constructs UpdatePresetResponse's fields from required parameters

#### `UpdateQueueRequest`

``` purescript
newtype UpdateQueueRequest
  = UpdateQueueRequest { "Description" :: NullOrUndefined (String), "Name" :: String, "Status" :: NullOrUndefined (QueueStatus) }
```

##### Instances
``` purescript
Newtype UpdateQueueRequest _
Generic UpdateQueueRequest _
Show UpdateQueueRequest
Decode UpdateQueueRequest
Encode UpdateQueueRequest
```

#### `newUpdateQueueRequest`

``` purescript
newUpdateQueueRequest :: String -> UpdateQueueRequest
```

Constructs UpdateQueueRequest from required parameters

#### `newUpdateQueueRequest'`

``` purescript
newUpdateQueueRequest' :: String -> ({ "Description" :: NullOrUndefined (String), "Name" :: String, "Status" :: NullOrUndefined (QueueStatus) } -> { "Description" :: NullOrUndefined (String), "Name" :: String, "Status" :: NullOrUndefined (QueueStatus) }) -> UpdateQueueRequest
```

Constructs UpdateQueueRequest's fields from required parameters

#### `UpdateQueueResponse`

``` purescript
newtype UpdateQueueResponse
  = UpdateQueueResponse { "Queue" :: NullOrUndefined (Queue) }
```

##### Instances
``` purescript
Newtype UpdateQueueResponse _
Generic UpdateQueueResponse _
Show UpdateQueueResponse
Decode UpdateQueueResponse
Encode UpdateQueueResponse
```

#### `newUpdateQueueResponse`

``` purescript
newUpdateQueueResponse :: UpdateQueueResponse
```

Constructs UpdateQueueResponse from required parameters

#### `newUpdateQueueResponse'`

``` purescript
newUpdateQueueResponse' :: ({ "Queue" :: NullOrUndefined (Queue) } -> { "Queue" :: NullOrUndefined (Queue) }) -> UpdateQueueResponse
```

Constructs UpdateQueueResponse's fields from required parameters

#### `VideoCodec`

``` purescript
newtype VideoCodec
  = VideoCodec String
```

Type of video codec

##### Instances
``` purescript
Newtype VideoCodec _
Generic VideoCodec _
Show VideoCodec
Decode VideoCodec
Encode VideoCodec
```

#### `VideoCodecSettings`

``` purescript
newtype VideoCodecSettings
  = VideoCodecSettings { "Codec" :: NullOrUndefined (VideoCodec), "FrameCaptureSettings" :: NullOrUndefined (FrameCaptureSettings), "H264Settings" :: NullOrUndefined (H264Settings), "H265Settings" :: NullOrUndefined (H265Settings), "Mpeg2Settings" :: NullOrUndefined (Mpeg2Settings), "ProresSettings" :: NullOrUndefined (ProresSettings) }
```

Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value you choose for Video codec (Codec). For each codec enum you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * FRAME_CAPTURE, FrameCaptureSettings

##### Instances
``` purescript
Newtype VideoCodecSettings _
Generic VideoCodecSettings _
Show VideoCodecSettings
Decode VideoCodecSettings
Encode VideoCodecSettings
```

#### `newVideoCodecSettings`

``` purescript
newVideoCodecSettings :: VideoCodecSettings
```

Constructs VideoCodecSettings from required parameters

#### `newVideoCodecSettings'`

``` purescript
newVideoCodecSettings' :: ({ "Codec" :: NullOrUndefined (VideoCodec), "FrameCaptureSettings" :: NullOrUndefined (FrameCaptureSettings), "H264Settings" :: NullOrUndefined (H264Settings), "H265Settings" :: NullOrUndefined (H265Settings), "Mpeg2Settings" :: NullOrUndefined (Mpeg2Settings), "ProresSettings" :: NullOrUndefined (ProresSettings) } -> { "Codec" :: NullOrUndefined (VideoCodec), "FrameCaptureSettings" :: NullOrUndefined (FrameCaptureSettings), "H264Settings" :: NullOrUndefined (H264Settings), "H265Settings" :: NullOrUndefined (H265Settings), "Mpeg2Settings" :: NullOrUndefined (Mpeg2Settings), "ProresSettings" :: NullOrUndefined (ProresSettings) }) -> VideoCodecSettings
```

Constructs VideoCodecSettings's fields from required parameters

#### `VideoDescription`

``` purescript
newtype VideoDescription
  = VideoDescription { "AfdSignaling" :: NullOrUndefined (AfdSignaling), "AntiAlias" :: NullOrUndefined (AntiAlias), "CodecSettings" :: NullOrUndefined (VideoCodecSettings), "ColorMetadata" :: NullOrUndefined (ColorMetadata), "Crop" :: NullOrUndefined (Rectangle), "DropFrameTimecode" :: NullOrUndefined (DropFrameTimecode), "FixedAfd" :: NullOrUndefined (Int), "Height" :: NullOrUndefined (Int), "Position" :: NullOrUndefined (Rectangle), "RespondToAfd" :: NullOrUndefined (RespondToAfd), "ScalingBehavior" :: NullOrUndefined (ScalingBehavior), "Sharpness" :: NullOrUndefined (Int), "TimecodeInsertion" :: NullOrUndefined (VideoTimecodeInsertion), "VideoPreprocessors" :: NullOrUndefined (VideoPreprocessor), "Width" :: NullOrUndefined (Int) }
```

Settings for video outputs

##### Instances
``` purescript
Newtype VideoDescription _
Generic VideoDescription _
Show VideoDescription
Decode VideoDescription
Encode VideoDescription
```

#### `newVideoDescription`

``` purescript
newVideoDescription :: VideoDescription
```

Constructs VideoDescription from required parameters

#### `newVideoDescription'`

``` purescript
newVideoDescription' :: ({ "AfdSignaling" :: NullOrUndefined (AfdSignaling), "AntiAlias" :: NullOrUndefined (AntiAlias), "CodecSettings" :: NullOrUndefined (VideoCodecSettings), "ColorMetadata" :: NullOrUndefined (ColorMetadata), "Crop" :: NullOrUndefined (Rectangle), "DropFrameTimecode" :: NullOrUndefined (DropFrameTimecode), "FixedAfd" :: NullOrUndefined (Int), "Height" :: NullOrUndefined (Int), "Position" :: NullOrUndefined (Rectangle), "RespondToAfd" :: NullOrUndefined (RespondToAfd), "ScalingBehavior" :: NullOrUndefined (ScalingBehavior), "Sharpness" :: NullOrUndefined (Int), "TimecodeInsertion" :: NullOrUndefined (VideoTimecodeInsertion), "VideoPreprocessors" :: NullOrUndefined (VideoPreprocessor), "Width" :: NullOrUndefined (Int) } -> { "AfdSignaling" :: NullOrUndefined (AfdSignaling), "AntiAlias" :: NullOrUndefined (AntiAlias), "CodecSettings" :: NullOrUndefined (VideoCodecSettings), "ColorMetadata" :: NullOrUndefined (ColorMetadata), "Crop" :: NullOrUndefined (Rectangle), "DropFrameTimecode" :: NullOrUndefined (DropFrameTimecode), "FixedAfd" :: NullOrUndefined (Int), "Height" :: NullOrUndefined (Int), "Position" :: NullOrUndefined (Rectangle), "RespondToAfd" :: NullOrUndefined (RespondToAfd), "ScalingBehavior" :: NullOrUndefined (ScalingBehavior), "Sharpness" :: NullOrUndefined (Int), "TimecodeInsertion" :: NullOrUndefined (VideoTimecodeInsertion), "VideoPreprocessors" :: NullOrUndefined (VideoPreprocessor), "Width" :: NullOrUndefined (Int) }) -> VideoDescription
```

Constructs VideoDescription's fields from required parameters

#### `VideoDetail`

``` purescript
newtype VideoDetail
  = VideoDetail { "HeightInPx" :: NullOrUndefined (Int), "WidthInPx" :: NullOrUndefined (Int) }
```

Contains details about the output's video stream

##### Instances
``` purescript
Newtype VideoDetail _
Generic VideoDetail _
Show VideoDetail
Decode VideoDetail
Encode VideoDetail
```

#### `newVideoDetail`

``` purescript
newVideoDetail :: VideoDetail
```

Constructs VideoDetail from required parameters

#### `newVideoDetail'`

``` purescript
newVideoDetail' :: ({ "HeightInPx" :: NullOrUndefined (Int), "WidthInPx" :: NullOrUndefined (Int) } -> { "HeightInPx" :: NullOrUndefined (Int), "WidthInPx" :: NullOrUndefined (Int) }) -> VideoDetail
```

Constructs VideoDetail's fields from required parameters

#### `VideoPreprocessor`

``` purescript
newtype VideoPreprocessor
  = VideoPreprocessor { "ColorCorrector" :: NullOrUndefined (ColorCorrector), "Deinterlacer" :: NullOrUndefined (Deinterlacer), "ImageInserter" :: NullOrUndefined (ImageInserter), "NoiseReducer" :: NullOrUndefined (NoiseReducer), "TimecodeBurnin" :: NullOrUndefined (TimecodeBurnin) }
```

Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default.

##### Instances
``` purescript
Newtype VideoPreprocessor _
Generic VideoPreprocessor _
Show VideoPreprocessor
Decode VideoPreprocessor
Encode VideoPreprocessor
```

#### `newVideoPreprocessor`

``` purescript
newVideoPreprocessor :: VideoPreprocessor
```

Constructs VideoPreprocessor from required parameters

#### `newVideoPreprocessor'`

``` purescript
newVideoPreprocessor' :: ({ "ColorCorrector" :: NullOrUndefined (ColorCorrector), "Deinterlacer" :: NullOrUndefined (Deinterlacer), "ImageInserter" :: NullOrUndefined (ImageInserter), "NoiseReducer" :: NullOrUndefined (NoiseReducer), "TimecodeBurnin" :: NullOrUndefined (TimecodeBurnin) } -> { "ColorCorrector" :: NullOrUndefined (ColorCorrector), "Deinterlacer" :: NullOrUndefined (Deinterlacer), "ImageInserter" :: NullOrUndefined (ImageInserter), "NoiseReducer" :: NullOrUndefined (NoiseReducer), "TimecodeBurnin" :: NullOrUndefined (TimecodeBurnin) }) -> VideoPreprocessor
```

Constructs VideoPreprocessor's fields from required parameters

#### `VideoSelector`

``` purescript
newtype VideoSelector
  = VideoSelector { "ColorSpace" :: NullOrUndefined (ColorSpace), "ColorSpaceUsage" :: NullOrUndefined (ColorSpaceUsage), "Hdr10Metadata" :: NullOrUndefined (Hdr10Metadata), "Pid" :: NullOrUndefined (Int), "ProgramNumber" :: NullOrUndefined (Int) }
```

Selector for video.

##### Instances
``` purescript
Newtype VideoSelector _
Generic VideoSelector _
Show VideoSelector
Decode VideoSelector
Encode VideoSelector
```

#### `newVideoSelector`

``` purescript
newVideoSelector :: VideoSelector
```

Constructs VideoSelector from required parameters

#### `newVideoSelector'`

``` purescript
newVideoSelector' :: ({ "ColorSpace" :: NullOrUndefined (ColorSpace), "ColorSpaceUsage" :: NullOrUndefined (ColorSpaceUsage), "Hdr10Metadata" :: NullOrUndefined (Hdr10Metadata), "Pid" :: NullOrUndefined (Int), "ProgramNumber" :: NullOrUndefined (Int) } -> { "ColorSpace" :: NullOrUndefined (ColorSpace), "ColorSpaceUsage" :: NullOrUndefined (ColorSpaceUsage), "Hdr10Metadata" :: NullOrUndefined (Hdr10Metadata), "Pid" :: NullOrUndefined (Int), "ProgramNumber" :: NullOrUndefined (Int) }) -> VideoSelector
```

Constructs VideoSelector's fields from required parameters

#### `VideoTimecodeInsertion`

``` purescript
newtype VideoTimecodeInsertion
  = VideoTimecodeInsertion String
```

Enable Timecode insertion to include timecode information in this output. Do this in the API by setting (VideoTimecodeInsertion) to (PIC_TIMING_SEI). To get timecodes to appear correctly in your output, also set up the timecode configuration for your job in the input settings. Only enable Timecode insertion when the input framerate is identical to output framerate. Disable this setting to remove the timecode from the output. Default is disabled.

##### Instances
``` purescript
Newtype VideoTimecodeInsertion _
Generic VideoTimecodeInsertion _
Show VideoTimecodeInsertion
Decode VideoTimecodeInsertion
Encode VideoTimecodeInsertion
```

#### `WavSettings`

``` purescript
newtype WavSettings
  = WavSettings { "BitDepth" :: NullOrUndefined (Int), "Channels" :: NullOrUndefined (Int), "SampleRate" :: NullOrUndefined (Int) }
```

Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV.

##### Instances
``` purescript
Newtype WavSettings _
Generic WavSettings _
Show WavSettings
Decode WavSettings
Encode WavSettings
```

#### `newWavSettings`

``` purescript
newWavSettings :: WavSettings
```

Constructs WavSettings from required parameters

#### `newWavSettings'`

``` purescript
newWavSettings' :: ({ "BitDepth" :: NullOrUndefined (Int), "Channels" :: NullOrUndefined (Int), "SampleRate" :: NullOrUndefined (Int) } -> { "BitDepth" :: NullOrUndefined (Int), "Channels" :: NullOrUndefined (Int), "SampleRate" :: NullOrUndefined (Int) }) -> WavSettings
```

Constructs WavSettings's fields from required parameters


