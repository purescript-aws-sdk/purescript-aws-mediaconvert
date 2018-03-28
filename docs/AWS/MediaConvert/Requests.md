## Module AWS.MediaConvert.Requests

#### `cancelJob`

``` purescript
cancelJob :: forall eff. Service -> CancelJobRequest -> Aff (exception :: EXCEPTION | eff) CancelJobResponse
```

Permanently remove a job from a queue. Once you have canceled a job, you can't start it again. You can't delete a running job.

#### `createJob`

``` purescript
createJob :: forall eff. Service -> CreateJobRequest -> Aff (exception :: EXCEPTION | eff) CreateJobResponse
```

Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

#### `createJobTemplate`

``` purescript
createJobTemplate :: forall eff. Service -> CreateJobTemplateRequest -> Aff (exception :: EXCEPTION | eff) CreateJobTemplateResponse
```

Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

#### `createPreset`

``` purescript
createPreset :: forall eff. Service -> CreatePresetRequest -> Aff (exception :: EXCEPTION | eff) CreatePresetResponse
```

Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

#### `createQueue`

``` purescript
createQueue :: forall eff. Service -> CreateQueueRequest -> Aff (exception :: EXCEPTION | eff) CreateQueueResponse
```

Create a new transcoding queue. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

#### `deleteJobTemplate`

``` purescript
deleteJobTemplate :: forall eff. Service -> DeleteJobTemplateRequest -> Aff (exception :: EXCEPTION | eff) DeleteJobTemplateResponse
```

Permanently delete a job template you have created.

#### `deletePreset`

``` purescript
deletePreset :: forall eff. Service -> DeletePresetRequest -> Aff (exception :: EXCEPTION | eff) DeletePresetResponse
```

Permanently delete a preset you have created.

#### `deleteQueue`

``` purescript
deleteQueue :: forall eff. Service -> DeleteQueueRequest -> Aff (exception :: EXCEPTION | eff) DeleteQueueResponse
```

Permanently delete a queue you have created.

#### `describeEndpoints`

``` purescript
describeEndpoints :: forall eff. Service -> DescribeEndpointsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEndpointsResponse
```

Send an request with an empty body to the regional API endpoint to get your account API endpoint.

#### `getJob`

``` purescript
getJob :: forall eff. Service -> GetJobRequest -> Aff (exception :: EXCEPTION | eff) GetJobResponse
```

Retrieve the JSON for a specific completed transcoding job.

#### `getJobTemplate`

``` purescript
getJobTemplate :: forall eff. Service -> GetJobTemplateRequest -> Aff (exception :: EXCEPTION | eff) GetJobTemplateResponse
```

Retrieve the JSON for a specific job template.

#### `getPreset`

``` purescript
getPreset :: forall eff. Service -> GetPresetRequest -> Aff (exception :: EXCEPTION | eff) GetPresetResponse
```

Retrieve the JSON for a specific preset.

#### `getQueue`

``` purescript
getQueue :: forall eff. Service -> GetQueueRequest -> Aff (exception :: EXCEPTION | eff) GetQueueResponse
```

Retrieve the JSON for a specific queue.

#### `listJobTemplates`

``` purescript
listJobTemplates :: forall eff. Service -> ListJobTemplatesRequest -> Aff (exception :: EXCEPTION | eff) ListJobTemplatesResponse
```

Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array

#### `listJobs`

``` purescript
listJobs :: forall eff. Service -> ListJobsRequest -> Aff (exception :: EXCEPTION | eff) ListJobsResponse
```

Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.

#### `listPresets`

``` purescript
listPresets :: forall eff. Service -> ListPresetsRequest -> Aff (exception :: EXCEPTION | eff) ListPresetsResponse
```

Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.

#### `listQueues`

``` purescript
listQueues :: forall eff. Service -> ListQueuesRequest -> Aff (exception :: EXCEPTION | eff) ListQueuesResponse
```

Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.

#### `updateJobTemplate`

``` purescript
updateJobTemplate :: forall eff. Service -> UpdateJobTemplateRequest -> Aff (exception :: EXCEPTION | eff) UpdateJobTemplateResponse
```

Modify one of your existing job templates.

#### `updatePreset`

``` purescript
updatePreset :: forall eff. Service -> UpdatePresetRequest -> Aff (exception :: EXCEPTION | eff) UpdatePresetResponse
```

Modify one of your existing presets.

#### `updateQueue`

``` purescript
updateQueue :: forall eff. Service -> UpdateQueueRequest -> Aff (exception :: EXCEPTION | eff) UpdateQueueResponse
```

Modify one of your existing queues.


