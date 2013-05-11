.class public Lcom/android/camera/component/BatteryWatcher;
.super Lcom/android/camera/component/IntentReceiver;
.source "BatteryWatcher.java"


# static fields
.field private static volatile BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer; = null

.field private static volatile BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer; = null

.field private static final MSG_CHECK_BATTERY_CAPACITY:I = 0x2711

.field private static final MSG_CHECK_BATTERY_TEMPERATURE:I = 0x2712

.field private static final MSG_UPDATE_BATTERY_CAPACITY:I = 0x2713

.field private static final MSG_UPDATE_BATTERY_TEMPERATURE:I = 0x2714

.field public static final NAME:Ljava/lang/String; = "Battery Watcher"

.field public static final PATH_BATTERY_CAPACITY:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field private static final PATH_BATTERY_CAPACITY_LIMIT:Ljava/lang/String; = "/sys/camera_led_status/low_cap_limit"

.field private static final PATH_BATTERY_TEMPERATURE:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_temp"

.field private static final PATH_BATTERY_TEMPERATURE_LIMIT:Ljava/lang/String; = "/sys/camera_led_status/low_temp_limit"


# instance fields
.field private final isLowBatteryTemperature:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isLowPower:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_WorkerThread:Lcom/android/camera/WorkerThread;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x2

    const-string v1, "Battery Watcher"

    const/4 v2, 0x1

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    new-instance v0, Lcom/android/camera/component/BatteryWatcher$1;

    const-string v1, "Battery Check Thread"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/component/BatteryWatcher$1;-><init>(Lcom/android/camera/component/BatteryWatcher;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    const-string v0, "BatteryWatcher.IsLowBatteryTemperature"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v4, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    const-string v0, "BatteryWatcher.IsLowPower"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v4, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->isLowPower:Lcom/android/camera/property/Property;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BatteryWatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/BatteryWatcher;->checkBatteryCapacity()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/BatteryWatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/BatteryWatcher;->checkBatteryTemperature()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/property/Property;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->isLowPower:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/property/Property;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method private checkBatteryCapacity()V
    .locals 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-class v1, Lcom/android/camera/component/BatteryWatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "/sys/camera_led_status/low_cap_limit"

    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    sput-object v7, Lcom/android/camera/component/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x2713

    sget-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/BatteryWatcher;->isLower(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/BatteryWatcher;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    return-void

    :cond_1
    const/16 v0, 0xf

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private checkBatteryTemperature()V
    .locals 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-class v1, Lcom/android/camera/component/BatteryWatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "/sys/camera_led_status/low_temp_limit"

    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x2714

    sget-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "/sys/class/power_supply/battery/batt_temp"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/BatteryWatcher;->isLower(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/BatteryWatcher;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    return-void

    :cond_1
    const/16 v0, 0x64

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private isLower(ILjava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->exit()V

    invoke-super {p0}, Lcom/android/camera/component/IntentReceiver;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/IntentReceiver;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->isLowPower:Lcom/android/camera/property/Property;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/IntentReceiver;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/BatteryWatcher;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->isLowPower:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->start()V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BatteryWatcher$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BatteryWatcher$2;-><init>(Lcom/android/camera/component/BatteryWatcher;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BatteryWatcher$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BatteryWatcher$3;-><init>(Lcom/android/camera/component/BatteryWatcher;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Lcom/android/camera/WorkerThread;->sendMessage(I)Z

    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Lcom/android/camera/WorkerThread;->sendMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
