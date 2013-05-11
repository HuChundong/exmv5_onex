.class Lcom/android/camera/component/PowerSavingManager;
.super Lcom/android/camera/component/CameraCompoment;
.source "PowerSavingManager.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Power Saving Manager"


# instance fields
.field private m_IsRinging:Z

.field private m_IsScreenOnByPhoneCall:Z

.field private m_IsSensorListenerRegistered:Z

.field private final m_PhoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

.field private final m_RegisterSensorListenerRunnable:Ljava/lang/Runnable;

.field private final m_ScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private final m_SensorListener:Landroid/hardware/SensorEventListener;

.field private final m_UnregisterSensorListenerRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const-string v0, "Power Saving Manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;)V

    new-instance v0, Lcom/android/camera/component/PowerSavingManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PowerSavingManager$1;-><init>(Lcom/android/camera/component/PowerSavingManager;)V

    iput-object v0, p0, Lcom/android/camera/component/PowerSavingManager;->m_RegisterSensorListenerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/component/PowerSavingManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PowerSavingManager$2;-><init>(Lcom/android/camera/component/PowerSavingManager;)V

    iput-object v0, p0, Lcom/android/camera/component/PowerSavingManager;->m_SensorListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/camera/component/PowerSavingManager$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PowerSavingManager$3;-><init>(Lcom/android/camera/component/PowerSavingManager;)V

    iput-object v0, p0, Lcom/android/camera/component/PowerSavingManager;->m_PhoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

    new-instance v0, Lcom/android/camera/component/PowerSavingManager$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PowerSavingManager$4;-><init>(Lcom/android/camera/component/PowerSavingManager;)V

    iput-object v0, p0, Lcom/android/camera/component/PowerSavingManager;->m_UnregisterSensorListenerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/component/PowerSavingManager$5;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PowerSavingManager$5;-><init>(Lcom/android/camera/component/PowerSavingManager;)V

    iput-object v0, p0, Lcom/android/camera/component/PowerSavingManager;->m_ScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/PowerSavingManager;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PowerSavingManager;->m_SensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/PowerSavingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PowerSavingManager;->stopSensors()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/PowerSavingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PowerSavingManager;->startSensors()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/PowerSavingManager;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/PowerSavingManager;->onPSensorValueChanged([F)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/PowerSavingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PowerSavingManager;->m_IsRinging:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/PowerSavingManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PowerSavingManager;->m_IsRinging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/PowerSavingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PowerSavingManager;->m_IsScreenOnByPhoneCall:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/component/PowerSavingManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PowerSavingManager;->m_IsScreenOnByPhoneCall:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onPSensorValueChanged([F)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "values = { "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startSensors()V
    .locals 0

    return-void
.end method

.method private stopSensors()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/component/PowerSavingManager;->stopSensors()V

    invoke-virtual {p0}, Lcom/android/camera/component/PowerSavingManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraApplication;->current()Lcom/android/camera/CameraApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/PowerSavingManager;->m_ScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/camera/component/PowerSavingManager;->m_PhoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->deinitializeOverride()V

    return-void
.end method

.method protected initializeOverride()V
    .locals 7

    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/PowerSavingManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraApplication;->current()Lcom/android/camera/CameraApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/PowerSavingManager;->m_ScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/CameraApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/camera/component/PowerSavingManager;->m_PhoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

    const v4, 0x40000020

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/component/PowerSavingManager$6;

    invoke-direct {v4, p0}, Lcom/android/camera/component/PowerSavingManager$6;-><init>(Lcom/android/camera/component/PowerSavingManager;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/PowerSavingManager$7;

    invoke-direct {v4, p0}, Lcom/android/camera/component/PowerSavingManager$7;-><init>(Lcom/android/camera/component/PowerSavingManager;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/PowerSavingManager$8;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/camera/component/PowerSavingManager$8;-><init>(Lcom/android/camera/component/PowerSavingManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/PowerSavingManager$9;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/camera/component/PowerSavingManager$9;-><init>(Lcom/android/camera/component/PowerSavingManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/PowerSavingManager$10;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/camera/component/PowerSavingManager$10;-><init>(Lcom/android/camera/component/PowerSavingManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
