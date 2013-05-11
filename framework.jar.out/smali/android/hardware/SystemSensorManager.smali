.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$ListenerDelegate;,
        Landroid/hardware/SystemSensorManager$SensorThread;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DYNAMIC_DEBUG_LOG:Z = false

.field private static final SENSOR_DISABLE:I = -0x1

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SystemSensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;


# instance fields
.field final mMainLooper:Landroid/os/Looper;

.field private mStackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    sput-boolean v1, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    .line 60
    const-string v0, "debug.sensormanager.log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .parameter "mainLooper"

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 258
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 260
    sget-object v4, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 261
    :try_start_0
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_2

    .line 262
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 264
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 267
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_module_init()I

    .line 268
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 269
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 271
    .local v1, i:I
    :cond_0
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 272
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SystemSensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 274
    if-ltz v1, :cond_1

    .line 277
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v3, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 280
    :cond_1
    if-gtz v1, :cond_0

    .line 282
    new-instance v3, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(I)V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 283
    new-instance v3, Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct {v3}, Landroid/hardware/SystemSensorManager$SensorThread;-><init>()V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    .line 285
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_2
    monitor-exit v4

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput p0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return p0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 10
    .parameter "sensor"

    .prologue
    .line 318
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    iput-object v7, p0, Landroid/hardware/SystemSensorManager;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 320
    sget-boolean v7, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v7, :cond_0

    .line 321
    const-string v7, "SensorManager"

    const-string v8, "[disableSensorLocked] Dump call stack "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 323
    .local v6, ste:Ljava/lang/StackTraceElement;
    const-string v7, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #ste:Ljava/lang/StackTraceElement;
    :cond_0
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 327
    .local v2, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v2, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 329
    const/4 v7, 0x1

    .line 334
    .end local v2           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_1
    return v7

    .line 332
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .line 334
    .local v1, handle:I
    sget v7, Landroid/hardware/SystemSensorManager;->sQueue:I

    const/4 v8, -0x1

    invoke-static {v7, v5, v1, v8}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v7

    goto :goto_1
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 11
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 295
    const/4 v6, 0x0

    .line 297
    .local v6, result:Z
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    iput-object v8, p0, Landroid/hardware/SystemSensorManager;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 299
    sget-boolean v8, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v8, :cond_0

    .line 300
    const-string v8, "SensorManager"

    const-string v9, "[enableSensorLocked] Dump call stack "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 302
    .local v7, ste:Ljava/lang/StackTraceElement;
    const-string v8, "SensorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #ste:Ljava/lang/StackTraceElement;
    :cond_0
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 306
    .local v2, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v2, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 307
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .line 309
    .local v1, handle:I
    sget v8, Landroid/hardware/SystemSensorManager;->sQueue:I

    invoke-static {v8, v5, v1, p2}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v6

    .line 313
    .end local v1           #handle:I
    .end local v2           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    return v6
.end method

.method private static native nativeClassInit()V
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method


# virtual methods
.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7
    .parameter "listener"
    .parameter "sensor"
    .parameter "delay"
    .parameter "handler"

    .prologue
    .line 341
    const/4 v4, 0x1

    .line 342
    .local v4, result:Z
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 344
    const/4 v2, 0x0

    .line 345
    .local v2, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_0
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 346
    .local v0, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 347
    move-object v2, v0

    move-object v3, v2

    .line 353
    .end local v0           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .local v3, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    if-nez v3, :cond_4

    .line 354
    :try_start_1
    new-instance v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    invoke-direct {v2, p0, p1, p2, p4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_2
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 358
    sget-object v5, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-virtual {v5}, Landroid/hardware/SystemSensorManager$SensorThread;->startLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 359
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 361
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 362
    const/4 v4, 0x0

    .line 381
    :cond_1
    :goto_1
    monitor-exit v6

    .line 383
    return v4

    .line 366
    :cond_2
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    const/4 v4, 0x0

    goto :goto_1

    .line 371
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 373
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_4
    :try_start_3
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 374
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 375
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 377
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    const/4 v4, 0x0

    move-object v2, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_1

    .line 381
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_2

    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_5
    move-object v2, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_1

    :cond_6
    move-object v3, v2

    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 9
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 390
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "SensorManager"

    const-string/jumbo v6, "protected void unregisterListenerImpl(SensorEventListener listener, Sensor sensor)++"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 392
    :try_start_0
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "SensorManager"

    const-string/jumbo v7, "protected void unregisterListenerImpl(SensorEventListener listener, Sensor sensor): inside synchronized (sListeners)"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 394
    .local v4, size:I
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v5, :cond_2

    const-string v5, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "protected void unregisterListenerImpl(SensorEventListener listener, Sensor sensor): size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_8

    .line 396
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 397
    .local v2, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v5, :cond_3

    .line 398
    const-string v5, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "protected void unregisterListenerImpl(SensorEventListener listener, Sensor sensor): i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", l.getListener() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", listener = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_3
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_c

    .line 402
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v5, :cond_4

    const-string v5, "SensorManager"

    const-string/jumbo v7, "protected void unregisterListenerImpl(SensorEventListener listener, Sensor sensor): inside if (l.getListener() == listener)"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_4
    if-nez p2, :cond_6

    .line 404
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "SensorManager"

    const-string/jumbo v7, "protected void unregisterListenerImpl(SensorEventListener listener, Sensor sensor): inside if (sensor == null)"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_5
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 407
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 408
    .local v3, s:Landroid/hardware/Sensor;
    invoke-direct {p0, v3}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_1

    .line 423
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #s:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 410
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_6
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v5

    if-nez v5, :cond_a

    .line 411
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v5, :cond_7

    const-string v5, "SensorManager"

    const-string/jumbo v7, "protected void unregisterListenerImpl(SensorEventListener listener, Sensor sensor): inside else if (l.removeSensor(sensor) == 0)"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_7
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 415
    invoke-direct {p0, p2}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 423
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_8
    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v5, :cond_9

    const-string v5, "SensorManager"

    const-string/jumbo v6, "protected void unregisterListenerImpl(SensorEventListener listener, Sensor sensor)--"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_9
    return-void

    .line 417
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_a
    :try_start_2
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->DYNAMIC_DEBUG_LOG:Z

    if-eqz v5, :cond_b

    const-string v5, "SensorManager"

    const-string/jumbo v7, "protected void unregisterListenerImpl(SensorEventListener listener, Sensor sensor): inside else"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_b
    invoke-direct {p0, p2}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 395
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
