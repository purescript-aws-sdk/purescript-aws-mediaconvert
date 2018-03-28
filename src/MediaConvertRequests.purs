
module AWS.MediaConvert.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.MediaConvert as MediaConvert
import AWS.MediaConvert.Types as MediaConvertTypes


-- | Permanently remove a job from a queue. Once you have canceled a job, you can't start it again. You can't delete a running job.
cancelJob :: forall eff. MediaConvert.Service -> MediaConvertTypes.CancelJobRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.CancelJobResponse
cancelJob (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelJob"


-- | Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
createJob :: forall eff. MediaConvert.Service -> MediaConvertTypes.CreateJobRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.CreateJobResponse
createJob (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createJob"


-- | Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
createJobTemplate :: forall eff. MediaConvert.Service -> MediaConvertTypes.CreateJobTemplateRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.CreateJobTemplateResponse
createJobTemplate (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createJobTemplate"


-- | Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
createPreset :: forall eff. MediaConvert.Service -> MediaConvertTypes.CreatePresetRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.CreatePresetResponse
createPreset (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPreset"


-- | Create a new transcoding queue. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
createQueue :: forall eff. MediaConvert.Service -> MediaConvertTypes.CreateQueueRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.CreateQueueResponse
createQueue (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createQueue"


-- | Permanently delete a job template you have created.
deleteJobTemplate :: forall eff. MediaConvert.Service -> MediaConvertTypes.DeleteJobTemplateRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.DeleteJobTemplateResponse
deleteJobTemplate (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteJobTemplate"


-- | Permanently delete a preset you have created.
deletePreset :: forall eff. MediaConvert.Service -> MediaConvertTypes.DeletePresetRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.DeletePresetResponse
deletePreset (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deletePreset"


-- | Permanently delete a queue you have created.
deleteQueue :: forall eff. MediaConvert.Service -> MediaConvertTypes.DeleteQueueRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.DeleteQueueResponse
deleteQueue (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteQueue"


-- | Send an request with an empty body to the regional API endpoint to get your account API endpoint.
describeEndpoints :: forall eff. MediaConvert.Service -> MediaConvertTypes.DescribeEndpointsRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.DescribeEndpointsResponse
describeEndpoints (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEndpoints"


-- | Retrieve the JSON for a specific completed transcoding job.
getJob :: forall eff. MediaConvert.Service -> MediaConvertTypes.GetJobRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.GetJobResponse
getJob (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getJob"


-- | Retrieve the JSON for a specific job template.
getJobTemplate :: forall eff. MediaConvert.Service -> MediaConvertTypes.GetJobTemplateRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.GetJobTemplateResponse
getJobTemplate (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getJobTemplate"


-- | Retrieve the JSON for a specific preset.
getPreset :: forall eff. MediaConvert.Service -> MediaConvertTypes.GetPresetRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.GetPresetResponse
getPreset (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getPreset"


-- | Retrieve the JSON for a specific queue.
getQueue :: forall eff. MediaConvert.Service -> MediaConvertTypes.GetQueueRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.GetQueueResponse
getQueue (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getQueue"


-- | Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
listJobTemplates :: forall eff. MediaConvert.Service -> MediaConvertTypes.ListJobTemplatesRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.ListJobTemplatesResponse
listJobTemplates (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listJobTemplates"


-- | Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
listJobs :: forall eff. MediaConvert.Service -> MediaConvertTypes.ListJobsRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.ListJobsResponse
listJobs (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listJobs"


-- | Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
listPresets :: forall eff. MediaConvert.Service -> MediaConvertTypes.ListPresetsRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.ListPresetsResponse
listPresets (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPresets"


-- | Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
listQueues :: forall eff. MediaConvert.Service -> MediaConvertTypes.ListQueuesRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.ListQueuesResponse
listQueues (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listQueues"


-- | Modify one of your existing job templates.
updateJobTemplate :: forall eff. MediaConvert.Service -> MediaConvertTypes.UpdateJobTemplateRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.UpdateJobTemplateResponse
updateJobTemplate (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateJobTemplate"


-- | Modify one of your existing presets.
updatePreset :: forall eff. MediaConvert.Service -> MediaConvertTypes.UpdatePresetRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.UpdatePresetResponse
updatePreset (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updatePreset"


-- | Modify one of your existing queues.
updateQueue :: forall eff. MediaConvert.Service -> MediaConvertTypes.UpdateQueueRequest -> Aff (exception :: EXCEPTION | eff) MediaConvertTypes.UpdateQueueResponse
updateQueue (MediaConvert.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateQueue"
