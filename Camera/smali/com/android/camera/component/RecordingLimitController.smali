.class final Lcom/android/camera/component/RecordingLimitController;
.super Lcom/android/camera/IRecordingLimitController;
.source "RecordingLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/RecordingLimitController$8;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL_QUICK:J = 0x64L

.field private static final CHECK_INTERVAL_STANDARD:J = 0x1f4L

.field private static final CHECK_THRESHOLD_QUICK:J = 0xaL

.field private static final CHECK_THRESHOLD_STANDARD:J = 0xfL

.field private static final KERNEL_FILE_IO_BUFFER_SIZE:J = 0x1400000L

.field private static final MIN_VIDEO_REMAIN_SPACE:J = 0x500000L

.field private static final MSG_CHECK_RECORDING_LIMIT_STATE:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Recording Limit Controller"


# instance fields
.field private final m_FullStorageSlots:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;"
        }
    .end annotation
.end field

.field private m_LastVideoContentUri:Landroid/net/Uri;

.field private m_LastVideoStorageSlot:Lcom/android/camera/io/StorageSlot;

.field private m_RecordingLimitStateCheckInterval:J

.field private m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

.field private m_SafetySpace:J


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 6

    const-string v1, "Recording Limit Controller"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/IRecordingLimitController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->enableLogs(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/RecordingLimitController;Lcom/android/camera/MediaRecorderInfoEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/RecordingLimitController;->onMediaRecorderInfoCallback(Lcom/android/camera/MediaRecorderInfoEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/RecordingLimitController;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/component/RecordingLimitController;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/component/RecordingLimitController;)Lcom/android/camera/io/StorageSlot;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/android/camera/io/StorageSlot;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/RecordingLimitController;Lcom/android/camera/io/StorageSlot;)Lcom/android/camera/io/StorageSlot;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/android/camera/io/StorageSlot;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/RecordingLimitController;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/RecordingLimitController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/RecordingLimitController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/RecordingLimitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/RecordingLimitController;->onStartingRecording()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/RecordingLimitController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/RecordingLimitController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    return-wide v0
.end method

.method private onMediaRecorderInfoCallback(Lcom/android/camera/MediaRecorderInfoEventArgs;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderInfoCallback("

    iget v2, p1, Lcom/android/camera/MediaRecorderInfoEventArgs;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    iget v4, p1, Lcom/android/camera/MediaRecorderInfoEventArgs;->extra:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderInfoCallback() - Current recording state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/android/camera/MediaRecorderInfoEventArgs;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingLimitState;->None:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingLimitState;->DurationLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingLimitState;->None:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/android/camera/property/Property;

    const-wide v1, 0xff800000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingLimitState;->FileSystemLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingLimitState;->FileSizeLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onStartingRecording()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/component/RecordingLimitController;->getRemainingRecordingDuration(J)Lcom/android/camera/Duration;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/component/RecordingLimitController;->updateRecordingLimitStateCheckInterval(Lcom/android/camera/Duration;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v5}, Lcom/android/camera/io/StorageSlot;->getFreeSpace()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    long-to-double v5, v1

    const-wide v7, 0x3fc999999999999aL

    mul-double/2addr v5, v7

    double-to-long v5, v5

    const-wide/32 v7, 0x500000

    add-long/2addr v5, v7

    const-wide/32 v7, 0x1400000

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/camera/component/RecordingLimitController;->m_SafetySpace:J

    return-void

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "onStartingRecording() - Cannot get free storage space"

    invoke-static {v5, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private updateRecordingLimitState()V
    .locals 8

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "updateRecordingLimitState()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/RecordingLimitController;->getRemainingRecordingDuration(J)Lcom/android/camera/Duration;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "updateRecordingLimitState() - remainingDuration is null"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "updateRecordingLimitState() - Remaining seconds : "

    invoke-virtual {v3}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "updateRecordingLimitState() - Storage space limit reached"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/RecordingLimitState;->StorageSpaceLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/RecordingLimitState;->None:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/android/camera/component/RecordingLimitController;->updateRecordingLimitStateCheckInterval(Lcom/android/camera/Duration;)V

    goto :goto_0
.end method

.method private updateRecordingLimitStateCheckInterval(Lcom/android/camera/Duration;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lcom/android/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    :goto_1
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/android/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x5

    div-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    goto :goto_1
.end method


# virtual methods
.method public getRemainingRecordingDuration(Lcom/android/camera/io/StorageSlot;J)Lcom/android/camera/Duration;
    .locals 12

    const-wide/16 v10, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->isRunning()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "getRemainingRecordingDuration() - Component is not running"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    iget-object v6, p0, Lcom/android/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "getRemainingRecordingDuration() - No ICaptureResolutionManager interface"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v6

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/io/StorageSlot;

    :cond_2
    iget-object v6, p0, Lcom/android/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v10, v11}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v6

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/io/StorageSlot;->getFreeSpace()J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v6, v6, Lcom/android/camera/ICaptureResolutionManager;->videoBitRate:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, p0, Lcom/android/camera/component/RecordingLimitController;->m_SafetySpace:J

    sub-long/2addr v1, v6

    :goto_1
    cmp-long v6, v1, v10

    if-lez v6, :cond_6

    add-int/lit16 v6, v5, 0x4e20

    div-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    div-long v3, v1, v6

    :goto_2
    cmp-long v6, v3, v10

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v3, v4}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :cond_5
    long-to-double v6, v1

    const-wide v8, 0x3fc999999999999aL

    mul-double/2addr v6, v8

    double-to-long v6, v6

    const-wide/32 v8, 0x500000

    add-long/2addr v6, v8

    const-wide/32 v8, 0x1400000

    add-long/2addr v6, v8

    sub-long/2addr v1, v6

    goto :goto_1

    :cond_6
    const-wide/16 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "getRemainingRecordingDuration() - Error"

    invoke-static {v6, v7, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v10, v11}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v6

    goto/16 :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/IRecordingLimitController;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/RecordingLimitController;->updateRecordingLimitState()V

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Check limit state after "

    iget-wide v2, p0, Lcom/android/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x2711

    iget-wide v1, p0, Lcom/android/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/camera/component/RecordingLimitController;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/IRecordingLimitController;->initializeOverride()V

    const-class v4, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v4}, Lcom/android/camera/component/RecordingLimitController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ICaptureResolutionManager;

    iput-object v4, p0, Lcom/android/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v4, v1, Lcom/android/camera/CameraThread;->mediaRecorderInfoCallbackEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/component/RecordingLimitController$1;

    invoke-direct {v5, p0}, Lcom/android/camera/component/RecordingLimitController$1;-><init>(Lcom/android/camera/component/RecordingLimitController;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v4, v1, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/component/RecordingLimitController$2;

    invoke-direct {v5, p0}, Lcom/android/camera/component/RecordingLimitController$2;-><init>(Lcom/android/camera/component/RecordingLimitController;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v4, v1, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/component/RecordingLimitController$3;

    invoke-direct {v5, p0}, Lcom/android/camera/component/RecordingLimitController$3;-><init>(Lcom/android/camera/component/RecordingLimitController;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    new-instance v2, Lcom/android/camera/component/RecordingLimitController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/RecordingLimitController$4;-><init>(Lcom/android/camera/component/RecordingLimitController;)V

    new-instance v3, Lcom/android/camera/component/RecordingLimitController$5;

    invoke-direct {v3, p0}, Lcom/android/camera/component/RecordingLimitController$5;-><init>(Lcom/android/camera/component/RecordingLimitController;)V

    new-instance v4, Lcom/android/camera/component/RecordingLimitController$6;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/android/camera/component/RecordingLimitController$6;-><init>(Lcom/android/camera/component/RecordingLimitController;Lcom/android/camera/HTCCamera;Lcom/android/camera/event/EventHandler;Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {v0, v4}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    iget-object v4, v1, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/RecordingLimitController$7;

    invoke-direct {v5, p0}, Lcom/android/camera/component/RecordingLimitController$7;-><init>(Lcom/android/camera/component/RecordingLimitController;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method
