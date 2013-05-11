.class Lcom/android/server/AlarmManagerService;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$1;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$ShutdownReceiver;,
        Lcom/android/server/AlarmManagerService$ScreenReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;
    }
.end annotation


# static fields
.field public static final ACTION_SOCKET_RXTXGROUP:Ljava/lang/String; = "com.htc.intent.action.Socket_RXTXGrouping"

.field private static final ALARM_EVENT:I = 0x1

.field private static final CS_KEEPALIBE_PROPERTY:Ljava/lang/String; = "com.htc.cs"

.field private static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final HTC_DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final HTC_DEBUG_NotSync:Z = false

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final QUANTUM:J = 0xdbba0L

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIME_CHANGED_MASK:I = 0x10000

.field private static final TIME_SET_TOLERANCE:J = 0x3e8L

.field static isScreenOn:Z

.field private static isTimezoneSet:Z

.field private static final localLOGV:Z

.field private static final logWakeupAlarm:Z

.field private static final mBackgroundIntent:Landroid/content/Intent;

.field private static mDebug_WaitForAlarmClockLastGet:[J

.field private static mDebug_WaitForAlarmClockLastSet:[J

.field private static mHibernate:Z

.field private static mRXTXSetAlarmTriggerInterval:J

.field private static mRXTXSetAlarmTriggerTime:J


# instance fields
.field private ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;

.field private ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

.field private ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON:Ljava/lang/String;

.field private APPAlarmPendingIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private appPendingLock:Ljava/lang/Object;

.field private custListLock:Ljava/lang/Object;

.field private customizedAPs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private customizedOperation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastRefCount:I

.field private final mBroadcastStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;"
        }
    .end annotation
.end field

.field private mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDateChangeSender:Landroid/app/PendingIntent;

.field private mDescriptor:I

.field private final mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private mInFlight:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

.field private mLock:Ljava/lang/Object;

.field private final mRXTXGrupSender:Landroid/app/PendingIntent;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mRtcAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtcWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mShutdownReceiver:Lcom/android/server/AlarmManagerService$ShutdownReceiver;

.field private final mTimeTickSender:Landroid/app/PendingIntent;

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private final mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field nDebugAlarmERW:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 81
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z

    .line 84
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->logWakeupAlarm:Z

    .line 98
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->HTC_DEBUG_NotSync:Z

    .line 99
    new-array v0, v3, [J

    sput-object v0, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J

    .line 100
    new-array v0, v3, [J

    sput-object v0, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastSet:[J

    .line 103
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->mHibernate:Z

    .line 106
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->isTimezoneSet:Z

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 113
    const-wide/32 v2, 0x493e0

    sput-wide v2, Lcom/android/server/AlarmManagerService;->mRXTXSetAlarmTriggerInterval:J

    .line 114
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/AlarmManagerService;->mRXTXSetAlarmTriggerTime:J

    .line 117
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->isScreenOn:Z

    return-void

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 167
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->APPAlarmPendingIntent:Ljava/util/ArrayList;

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    .line 93
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->custListLock:Ljava/lang/Object;

    .line 94
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->appPendingLock:Ljava/lang/Object;

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->customizedAPs:Ljava/util/HashMap;

    .line 118
    const-string v2, "ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON"

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON:Ljava/lang/String;

    .line 119
    const-string v2, "ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF"

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

    .line 120
    const-string v2, "ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF"

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;

    .line 129
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    .line 135
    new-instance v2, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v2}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 138
    iput v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 140
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/LinkedList;

    .line 141
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    .line 142
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 145
    new-instance v2, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 164
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    .line 673
    iput v4, p0, Lcom/android/server/AlarmManagerService;->nDebugAlarmERW:I

    .line 168
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v2

    iput v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    .line 182
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 183
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "AlarmManager"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 193
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.Socket_RXTXGrouping"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mRXTXGrupSender:Landroid/app/PendingIntent;

    .line 197
    new-instance v2, Lcom/android/server/AlarmManagerService$ScreenReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$ScreenReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->isScreenOn:Z

    .line 203
    new-instance v2, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 204
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 205
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 206
    new-instance v2, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 208
    new-instance v2, Lcom/android/server/AlarmManagerService$ShutdownReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$ShutdownReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mShutdownReceiver:Lcom/android/server/AlarmManagerService$ShutdownReceiver;

    .line 210
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    if-eq v2, v5, :cond_1

    .line 211
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 215
    :goto_0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->initCustomizedAPs()V

    .line 221
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    if-eq v2, v5, :cond_2

    .line 222
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->isTimezoneSet:Z

    if-nez v2, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->setDefaultTimezone()V

    .line 228
    :cond_0
    :goto_1
    return-void

    .line 213
    :cond_1
    const-string v2, "AlarmManager"

    const-string v3, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_2
    const-string v2, "AlarmManager"

    const-string v3, "XX Failed to open alarm driver. Falling back to a handler."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private CheckWhetherRXTXTrigger(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .locals 4
    .parameter
    .parameter "operation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v2, 0x0

    .line 900
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 914
    :cond_0
    :goto_0
    return v2

    .line 905
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 907
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 909
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 910
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private RXTXtriggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 9
    .parameter
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 921
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 922
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v2, repeats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 926
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 930
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v3, v3, p3

    if-lez v3, :cond_2

    .line 974
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 975
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 976
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 977
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v5, v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    .line 978
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 979
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    .line 980
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    .line 981
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_1

    .line 934
    :cond_2
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 948
    const-string v3, "persist.alarm.debug"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 949
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alarm triggering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_3
    :goto_2
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 956
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 959
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v3, v3

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v5, p3, v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 961
    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 967
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 968
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 950
    :cond_5
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->logWakeupAlarm:Z

    if-eqz v3, :cond_3

    .line 951
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_3

    .line 953
    :cond_6
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alarm triggering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 984
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 985
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 987
    :cond_8
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->mHibernate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRXTXGrupSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->CheckWhetherRXTXTrigger(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->RXTXtriggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$1700()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/AlarmManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2010(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->HTC_DEBUG_NotSync:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[J
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 6
    .parameter "alarm"

    .prologue
    const/4 v3, 0x2

    .line 675
    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 677
    .local v0, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 678
    .local v1, index:I
    if-gez v1, :cond_0

    .line 679
    rsub-int/lit8 v2, v1, 0x0

    add-int/lit8 v1, v2, -0x1

    .line 683
    :cond_0
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->logWakeupAlarm:Z

    if-eqz v2, :cond_2

    .line 684
    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eq v2, v3, :cond_1

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_2

    .line 686
    :cond_1
    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v2, v3, :cond_4

    .line 687
    iget v2, p0, Lcom/android/server/AlarmManagerService;->nDebugAlarmERW:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/AlarmManagerService;->nDebugAlarmERW:I

    .line 688
    iget v2, p0, Lcom/android/server/AlarmManagerService;->nDebugAlarmERW:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    .line 689
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/AlarmManagerService;->nDebugAlarmERW:I

    .line 699
    :cond_2
    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 715
    return v1

    .line 692
    :cond_3
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_4
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private alignCust(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1094
    .local p1, custList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p3, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_1

    .line 1159
    :cond_0
    return-void

    .line 1097
    :cond_1
    const/4 v4, 0x0

    .line 1100
    .local v4, fire:Z
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1101
    .local v13, trigger:Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v15, v13, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    if-nez v15, :cond_3

    iget-boolean v15, v13, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    if-nez v15, :cond_3

    iget-wide v15, v13, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 1102
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1103
    .local v3, cust:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1105
    .end local v3           #cust:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    const/4 v4, 0x1

    .line 1109
    .end local v13           #trigger:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    if-nez v4, :cond_0

    .line 1110
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1112
    .local v11, size:I
    const/4 v5, -0x1

    .line 1113
    .local v5, fixed:I
    const/4 v8, -0x1

    .line 1114
    .local v8, non_fixed:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1116
    .local v9, now:J
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1117
    .restart local v3       #cust:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->customizedAPs:Ljava/util/HashMap;

    iget-object v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 1118
    .local v14, upperBound:Ljava/lang/Long;
    if-eqz v14, :cond_6

    .line 1119
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v11, :cond_8

    .line 1120
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1121
    .local v2, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v15, -0x1

    if-ne v5, v15, :cond_a

    iget-boolean v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    if-nez v15, :cond_7

    iget-boolean v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    if-eqz v15, :cond_a

    .line 1122
    :cond_7
    iget-wide v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v15, v9

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-gtz v15, :cond_8

    .line 1123
    move v5, v6

    .line 1133
    .end local v2           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_8
    const/4 v15, -0x1

    if-eq v5, v15, :cond_c

    .line 1134
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1135
    .restart local v2       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v15, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1136
    const/4 v15, 0x1

    iput-boolean v15, v3, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    .line 1137
    const/4 v15, 0x1

    iput-boolean v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    .line 1138
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 1139
    sget-boolean v15, Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z

    if-eqz v15, :cond_9

    .line 1140
    const-string v15, "AlarmManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[alignCust] fixed != -1 align "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/util/Date;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .end local v2           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_9
    :goto_3
    const/4 v5, -0x1

    .line 1156
    const/4 v8, -0x1

    goto/16 :goto_1

    .line 1126
    .restart local v2       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_a
    iget-boolean v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    if-nez v15, :cond_b

    iget-boolean v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    if-nez v15, :cond_b

    iget-wide v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_b

    .line 1127
    iget-wide v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v15, v9

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-gtz v15, :cond_8

    .line 1128
    move v8, v6

    .line 1119
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1143
    .end local v2           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_c
    const/4 v15, -0x1

    if-eq v8, v15, :cond_d

    .line 1144
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1145
    .local v12, tmpAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v15, v12, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v15, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1146
    const/4 v15, 0x1

    iput-boolean v15, v3, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    .line 1147
    const/4 v15, 0x1

    iput-boolean v15, v12, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    .line 1148
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 1149
    sget-boolean v15, Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z

    if-eqz v15, :cond_9

    .line 1150
    const-string v15, "AlarmManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[alignCust] non_fixed != -1 align "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/util/Date;

    iget-wide v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1153
    .end local v12           #tmpAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method private checkIfExist(Landroid/app/PendingIntent;Ljava/util/ArrayList;)Z
    .locals 3
    .parameter "appIntent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 313
    .local v1, pIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    const/4 v2, 0x1

    .line 317
    .end local v1           #pIntent:Landroid/app/PendingIntent;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkIfExistInTargetPkg(Landroid/app/PendingIntent;)Z
    .locals 2
    .parameter "appIntent"

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, targetPkg:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->customizedAPs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const/4 v1, 0x1

    .line 338
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native close(I)V
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "pw"
    .parameter
    .parameter "prefix"
    .parameter "label"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 848
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 849
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 850
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 851
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 848
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 854
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private getAlarmList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    packed-switch p1, :pswitch_data_0

    .line 670
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 664
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 665
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 666
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 667
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .parameter "pi"

    .prologue
    .line 1721
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 1722
    .local v1, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1723
    .local v0, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_0

    .line 1724
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(Lcom/android/server/AlarmManagerService$1;)V

    .line 1725
    .restart local v0       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    :cond_0
    return-object v0
.end method

.method private hookTimeZoneToRadio(ZI)V
    .locals 5
    .parameter "sign"
    .parameter "offset"

    .prologue
    .line 550
    :try_start_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 551
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hookRadio - sign: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 555
    .local v1, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 556
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setTimeZone(ZI)V

    .line 564
    .end local v1           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 558
    .restart local v1       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "AlarmManager"

    const-string v3, "Unable to find ITelephony interface"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    .end local v1           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 561
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "AlarmManager"

    const-string v3, "RemoteException from getPhoneInterface()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private native init()I
.end method

.method private initCustomizedAPs()V
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->customizedAPs:Ljava/util/HashMap;

    const-string v1, "com.htc.cs"

    new-instance v2, Ljava/lang/Long;

    const-wide/32 v3, 0x493e0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method private insertIntoCustomizedOperation(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "operation"

    .prologue
    .line 321
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 322
    .local v1, size:I
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->custListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 323
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    monitor-exit v3

    .line 331
    return-void

    .line 323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 655
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    const/4 v1, 0x1

    .line 659
    :goto_1
    return v1

    .line 654
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 659
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private notifyTimeZoneToRadio(Ljava/util/TimeZone;)V
    .locals 6
    .parameter "zone"

    .prologue
    .line 535
    :try_start_0
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 536
    .local v3, offset:I
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 537
    .local v2, now:Ljava/util/Date;
    invoke-virtual {p1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    .line 538
    .local v1, inDST:Z
    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int/2addr v3, v4

    .line 541
    :cond_0
    div-int/lit16 v3, v3, 0x3e8

    .line 542
    if-lez v3, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v4, v3}, Lcom/android/server/AlarmManagerService;->hookTimeZoneToRadio(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v1           #inDST:Z
    .end local v2           #now:Ljava/util/Date;
    .end local v3           #offset:I
    :goto_1
    return-void

    .line 542
    .restart local v1       #inDST:Z
    .restart local v2       #now:Ljava/util/Date;
    .restart local v3       #offset:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 543
    .end local v1           #inDST:Z
    .end local v2           #now:Ljava/util/Date;
    .end local v3           #offset:I
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AlarmManager"

    const-string v5, "hookTimeZoneToRadio fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    .locals 10
    .parameter
    .parameter "operation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 612
    :cond_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 591
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v3, -0x1

    .line 593
    .local v3, idx:I
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 594
    add-int/lit8 v3, v3, 0x1

    .line 595
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 596
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 597
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :catch_0
    move-exception v1

    .line 601
    .local v1, e:Ljava/lang/ClassCastException;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 602
    .local v6, size:I
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z

    if-eqz v7, :cond_3

    .line 603
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[removeLocked] size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " idx:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fails"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_3

    .line 606
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 607
    .local v5, obj:Ljava/lang/Object;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "element-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 610
    .end local v2           #i:I
    .end local v5           #obj:Ljava/lang/Object;
    :cond_3
    throw v1
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 644
    :cond_0
    return-void

    .line 628
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 630
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 632
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 638
    :cond_3
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z

    if-eqz v2, :cond_2

    .line 639
    const-string v2, "AlarmManager"

    const-string v3, "Someone would like to remove TIME_TICK alarm by package name!!! Ignore this request..."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rescheduleAlarm(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1163
    .local p1, elementList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p3, repeats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p4, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1164
    .local v3, eleSize:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1169
    .local v1, alaSize:I
    if-nez v1, :cond_1

    .line 1170
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v3, :cond_e

    .line 1171
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1172
    .local v4, element:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 1174
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1177
    .end local v4           #element:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7           #i:I
    :cond_1
    const/4 v10, 0x1

    if-ne v1, v10, :cond_7

    .line 1178
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1179
    .local v2, component:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    .line 1180
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    if-ge v7, v3, :cond_e

    .line 1181
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1182
    .restart local v4       #element:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    add-long v5, v10, v12

    .line 1183
    .local v5, end:J
    iget-wide v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_2

    iget-wide v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v10, v10, v5

    if-gtz v10, :cond_2

    .line 1184
    iget-wide v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1185
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    .line 1186
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    .line 1188
    :cond_2
    iget-boolean v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    if-nez v10, :cond_4

    .line 1189
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    .line 1191
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1195
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_2

    .line 1200
    .end local v4           #element:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v5           #end:J
    .end local v7           #i:I
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    if-ge v7, v3, :cond_e

    .line 1201
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1202
    .restart local v4       #element:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    .line 1204
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1209
    .end local v2           #component:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v4           #element:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7           #i:I
    :cond_7
    const/4 v8, 0x0

    .line 1210
    .local v8, idx:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    if-ge v7, v3, :cond_e

    .line 1211
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1212
    .restart local v4       #element:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    add-long v5, v10, v12

    .line 1214
    .restart local v5       #end:J
    const/4 v9, 0x0

    .local v9, j:I
    :goto_5
    if-ge v9, v1, :cond_8

    .line 1215
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1216
    .restart local v2       #component:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_c

    .line 1217
    iget-wide v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_a

    const/4 v10, 0x1

    :goto_6
    iget-wide v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v11, v11, v5

    if-gtz v11, :cond_b

    const/4 v11, 0x1

    :goto_7
    and-int/2addr v10, v11

    if-eqz v10, :cond_c

    .line 1218
    iget-wide v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1219
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    .line 1220
    move v8, v9

    .line 1222
    iget-boolean v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    if-eqz v10, :cond_c

    .line 1227
    .end local v2           #component:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_8
    iget-boolean v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    if-nez v10, :cond_d

    .line 1228
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_9

    .line 1230
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    :cond_9
    :goto_8
    const/4 v8, 0x0

    .line 1210
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1217
    .restart local v2       #component:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_a
    const/4 v10, 0x0

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    .line 1214
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1233
    .end local v2           #component:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    .line 1234
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_8

    .line 1241
    .end local v4           #element:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v5           #end:J
    .end local v8           #idx:I
    .end local v9           #j:I
    :cond_e
    return-void
.end method

.method private native set(IIJJ)V
.end method

.method private setDefaultTimezone()V
    .locals 4

    .prologue
    .line 231
    const-string v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 232
    .local v1, zone:Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0xea60

    div-int v0, v2, v3

    .line 233
    .local v0, gmtOffset:I
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    neg-int v3, v0

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    .line 234
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/AlarmManagerService;->isTimezoneSet:Z

    .line 235
    return-void
.end method

.method private native setKernelTimezone(II)I
.end method

.method private setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 10
    .parameter "alarm"

    .prologue
    .line 737
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 742
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_4

    .line 743
    const-wide/16 v3, 0x0

    .line 744
    .local v3, alarmSeconds:J
    const-wide/16 v5, 0x0

    .line 750
    .local v5, alarmNanoseconds:J
    :goto_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->HTC_DEBUG_NotSync:Z

    if-eqz v0, :cond_3

    .line 751
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_0

    .line 752
    sget-object v0, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastSet:[J

    const/4 v1, 0x0

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    aput-wide v8, v0, v1

    .line 753
    :cond_0
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 754
    sget-object v0, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastSet:[J

    const/4 v1, 0x1

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    aput-wide v8, v0, v1

    .line 755
    :cond_1
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 756
    sget-object v0, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastSet:[J

    const/4 v1, 0x2

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    aput-wide v8, v0, v1

    .line 757
    :cond_2
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 758
    sget-object v0, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastSet:[J

    const/4 v1, 0x3

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    aput-wide v8, v0, v1

    .line 761
    :cond_3
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 771
    .end local v3           #alarmSeconds:J
    .end local v5           #alarmNanoseconds:J
    :goto_1
    return-void

    .line 746
    :cond_4
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 747
    .restart local v3       #alarmSeconds:J
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v8, 0x3e8

    rem-long/2addr v0, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    const-wide/16 v8, 0x3e8

    mul-long v5, v0, v8

    .restart local v5       #alarmNanoseconds:J
    goto :goto_0

    .line 765
    .end local v3           #alarmSeconds:J
    .end local v5           #alarmNanoseconds:J
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 766
    .local v7, msg:Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v7, Landroid/os/Message;->what:I

    .line 768
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 769
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 12
    .parameter
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1001
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v4, repeats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v5, tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v2, 0x0

    .line 1006
    .local v2, exist:Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    .local v1, custList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1009
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1013
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v6, v6, p3

    if-lez v6, :cond_2

    .line 1070
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    invoke-direct {p0, v5, p1, v4, p2}, Lcom/android/server/AlarmManagerService;->rescheduleAlarm(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1071
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/AlarmManagerService;->alignCust(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1073
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1074
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1075
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1076
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 1077
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v8, v8

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1083
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    .line 1084
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    .line 1085
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_1

    .line 1032
    :cond_2
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->logWakeupAlarm:Z

    if-eqz v6, :cond_4

    .line 1033
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v6, :cond_4

    .line 1035
    :cond_3
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alarm triggering: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_4
    const/4 v6, 0x1

    iput v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1038
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 1041
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v6, v6

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v8, p3, v8

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1045
    :cond_5
    iget-boolean v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->aligning:Z

    if-nez v6, :cond_6

    iget-boolean v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    if-nez v6, :cond_6

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 1046
    :cond_6
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1050
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 1051
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1056
    :cond_7
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->custListLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1057
    :try_start_0
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v8}, Lcom/android/server/AlarmManagerService;->checkIfExist(Landroid/app/PendingIntent;Ljava/util/ArrayList;)Z

    move-result v2

    .line 1058
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    if-eqz v2, :cond_8

    .line 1060
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 1058
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1064
    :cond_8
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 1079
    :cond_9
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v8, v8

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    .line 1081
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto/16 :goto_2

    .line 1088
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 1089
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1091
    :cond_b
    return-void
.end method

.method private native waitForAlarm(I)I
.end method


# virtual methods
.method public RXTXGroupingEvent()V
    .locals 5

    .prologue
    .line 886
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->isScreenOn:Z

    if-nez v0, :cond_0

    .line 889
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/AlarmManagerService;->mRXTXSetAlarmTriggerTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/AlarmManagerService;->mRXTXSetAlarmTriggerInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/AlarmManagerService;->mRXTXSetAlarmTriggerTime:J

    .line 893
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRXTXGrupSender:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 896
    :cond_0
    return-void
.end method

.method public RemoveAPPAlarmPendingIntent(Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "operation"

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string v4, "AlarmManager"

    const-string v5, "RemoveAPPAlarmPendingIntent has no PendingIntent operation"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->appPendingLock:Ljava/lang/Object;

    monitor-enter v5

    .line 282
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->APPAlarmPendingIntent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 284
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->APPAlarmPendingIntent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 285
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/PendingIntent;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 287
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 293
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/PendingIntent;>;"
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->custListLock:Ljava/lang/Object;

    monitor-enter v5

    .line 296
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 298
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 299
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 300
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 301
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->customizedOperation:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 307
    .end local v0           #i:I
    .end local v3           #size:I
    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 293
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 299
    .restart local v0       #i:I
    .restart local v3       #size:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    :goto_0
    return-void

    .line 784
    :cond_0
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->HTC_DEBUG_NotSync:Z

    if-eqz v1, :cond_1

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ITS:LastTriggle RTC_WAKEUP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  RTC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ELAPSED_WAKEUP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ELAPSED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ITS:LastSet RTC_WAKEUP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastSet:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  RTC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastSet:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ELAPSED_WAKEUP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastSet:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ELAPSED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastSet:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    :cond_1
    iget-object v13, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 797
    :try_start_0
    const-string v1, "Current Alarm Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 799
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 800
    .local v5, now:J
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 801
    .local v12, sdf:Ljava/text/SimpleDateFormat;
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    const-string v1, "  Realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 803
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  val="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 805
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "RTC_WAKEUP"

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 807
    :cond_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 808
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "RTC"

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 811
    .end local v5           #now:J
    .end local v12           #sdf:Ljava/text/SimpleDateFormat;
    :cond_4
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 812
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 813
    .restart local v5       #now:J
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const-string v1, "  Elapsed realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    move-object/from16 v0, p2

    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, "  val="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 817
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "ELAPSED_WAKEUP"

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 819
    :cond_6
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 820
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "ELAPSED"

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 824
    .end local v5           #now:J
    :cond_7
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    const-string v1, "  Broadcast ref count: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 827
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    const-string v1, "  Alarm Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 830
    .local v7, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 831
    .local v8, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v1, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    const-string v1, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 833
    const-string v1, "ms running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 834
    const-string v1, " wakeups"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    iget-object v1, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 837
    .local v9, fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/Intent$FilterComparison;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const-string v1, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$FilterStats;

    iget v1, v1, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 838
    const-string v1, " alarms: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v3, v4, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 843
    .end local v7           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9           #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/Intent$FilterComparison;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_9
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->close(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    .line 249
    return-void

    .line 247
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    throw v0
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "operation"

    .prologue
    .line 568
    if-nez p1, :cond_0

    .line 574
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 573
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLocked(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 578
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 581
    return-void
.end method

.method public removeLocked(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 342
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 343
    return-void
.end method

.method public setAPPAlarmPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "operation"

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    const-string v2, "AlarmManager"

    const-string v3, "setAPPAlarmPendingIntent has no PendingIntent operation"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->appPendingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->APPAlarmPendingIntent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->APPAlarmPendingIntent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/PendingIntent;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 265
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 271
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/PendingIntent;>;"
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->APPAlarmPendingIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAlignmentRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 8
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 388
    if-nez p6, :cond_0

    .line 389
    const-string v4, "AlarmManager"

    const-string v5, "PengingOperation null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    return-void

    .line 392
    :cond_0
    move-wide v2, p2

    .line 393
    .local v2, triggerTime:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, p2, v6

    add-long v2, v4, v6

    .line 395
    const/4 p1, 0x1

    .line 405
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 406
    :try_start_0
    new-instance v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 407
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iput p1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 408
    iput-wide p4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 409
    iput-object p6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 410
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    .line 412
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 414
    invoke-virtual {p0, p6}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 416
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v1

    .line 417
    .local v1, index:I
    if-nez v1, :cond_2

    .line 418
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 420
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1           #index:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 397
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, p2, v6

    add-long v2, v4, v6

    .line 399
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public setCurrentTimeMillis(J)V
    .locals 6
    .parameter "millis"

    .prologue
    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 862
    .local v0, currentTime:J
    sub-long v2, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 863
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore time set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in setCurrentTimeMillis(); too close to current time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    goto :goto_0
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 14
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 426
    if-nez p6, :cond_0

    .line 427
    const-string v2, "AlarmManager"

    const-string v3, "setInexactRepeating ignored because there is no intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    return-void

    .line 431
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gtz v2, :cond_1

    .line 432
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating ignored because interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is invalid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_1
    const-wide/32 v2, 0xdbba0

    rem-long v2, p4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 440
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 446
    :cond_2
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-nez p1, :cond_4

    :cond_3
    const/4 v9, 0x1

    .line 447
    .local v9, isRtc:Z
    :goto_1
    if-eqz v9, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v12, v2, v6

    .line 454
    .local v12, skew:J
    :goto_2
    sub-long v2, p2, v12

    const-wide/32 v6, 0xdbba0

    rem-long v10, v2, v6

    .line 455
    .local v10, offset:J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_6

    .line 456
    sub-long v2, p2, v10

    const-wide/32 v6, 0xdbba0

    add-long v4, v2, v6

    .local v4, adjustedTriggerTime:J
    :goto_3
    move-object v2, p0

    move v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    .line 464
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 446
    .end local v4           #adjustedTriggerTime:J
    .end local v9           #isRtc:Z
    .end local v10           #offset:J
    .end local v12           #skew:J
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 447
    .restart local v9       #isRtc:Z
    :cond_5
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 458
    .restart local v10       #offset:J
    .restart local v12       #skew:J
    :cond_6
    move-wide/from16 v4, p2

    .restart local v4       #adjustedTriggerTime:J
    goto :goto_3
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 8
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 347
    if-nez p6, :cond_0

    .line 348
    const-string v4, "AlarmManager"

    const-string v5, "set/setRepeating ignored because there is no intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v2, 0x0

    .line 353
    .local v2, pendingIntentExist:Z
    const/4 v3, 0x0

    .line 354
    .local v3, targetPkgExist:Z
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 355
    :try_start_0
    new-instance v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 356
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iput p1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 357
    iput-wide p2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 358
    iput-wide p4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 359
    iput-object p6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 360
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->appPendingLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->APPAlarmPendingIntent:Ljava/util/ArrayList;

    invoke-direct {p0, p6, v4}, Lcom/android/server/AlarmManagerService;->checkIfExist(Landroid/app/PendingIntent;Ljava/util/ArrayList;)Z

    move-result v2

    .line 362
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    if-eqz v2, :cond_1

    .line 364
    :try_start_2
    invoke-direct {p0, p6}, Lcom/android/server/AlarmManagerService;->checkIfExistInTargetPkg(Landroid/app/PendingIntent;)Z

    move-result v3

    .line 365
    if-eqz v3, :cond_1

    .line 366
    invoke-direct {p0, p6}, Lcom/android/server/AlarmManagerService;->insertIntoCustomizedOperation(Landroid/app/PendingIntent;)V

    .line 367
    iput-wide p2, v0, Lcom/android/server/AlarmManagerService$Alarm;->regularTime:J

    .line 368
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z

    if-eqz v4, :cond_1

    .line 369
    const-string v4, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRepeating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exists in pendingintent list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    invoke-virtual {p0, p6}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 378
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v1

    .line 379
    .local v1, index:I
    if-nez v1, :cond_2

    .line 380
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 382
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1           #index:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 362
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setTime(J)V
    .locals 8
    .parameter "millis"

    .prologue
    .line 468
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.SET_TIME"

    const-string v6, "setTime"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 475
    .local v1, currentTime:J
    sub-long v4, v1, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 476
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore time set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in setTime(); too close to current time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 483
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, currTimeZoneId:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 485
    .local v3, zone:Ljava/util/TimeZone;
    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->notifyTimeZoneToRadio(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 8
    .parameter "tz"

    .prologue
    .line 490
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SET_TIME_ZONE"

    const-string v7, "setTimeZone"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 498
    .local v4, zone:Ljava/util/TimeZone;
    const/4 v3, 0x0

    .line 499
    .local v3, timeZoneWasChanged:Z
    monitor-enter p0

    .line 500
    :try_start_0
    const-string v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, current:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 503
    :cond_2
    const/4 v3, 0x1

    .line 504
    const-string v5, "persist.sys.timezone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_3
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 510
    .local v1, gmtOffset:I
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 511
    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    add-int/2addr v1, v5

    .line 514
    :cond_4
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->HTC_DEBUG_NotSync:Z

    if-eqz v5, :cond_5

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ITS:setKernelTimezone1 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xea60

    div-int v7, v1, v7

    neg-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_5
    iget v5, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const v6, 0xea60

    div-int v6, v1, v6

    neg-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    .line 516
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 520
    if-eqz v3, :cond_0

    .line 522
    invoke-direct {p0, v4}, Lcom/android/server/AlarmManagerService;->notifyTimeZoneToRadio(Ljava/util/TimeZone;)V

    .line 525
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x2000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 527
    const-string v5, "time-zone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 516
    .end local v0           #current:Ljava/lang/String;
    .end local v1           #gmtOffset:I
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 1471
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 1473
    .local v0, uid:I
    if-ltz v0, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    .end local v0           #uid:I
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v1

    .line 1481
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public startHibernate()V
    .locals 1

    .prologue
    .line 873
    monitor-enter p0

    .line 874
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->mHibernate:Z

    .line 875
    monitor-exit p0

    .line 876
    return-void

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopHibernate()V
    .locals 1

    .prologue
    .line 879
    monitor-enter p0

    .line 880
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->mHibernate:Z

    .line 881
    monitor-exit p0

    .line 882
    return-void

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public timeToNextAlarm()J
    .locals 9

    .prologue
    .line 719
    const-wide v3, 0x7fffffffffffffffL

    .line 720
    .local v3, nextAlarm:J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 721
    const/4 v2, 0x0

    .line 722
    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 723
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 724
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 725
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 726
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v7, v3

    if-gez v5, :cond_0

    .line 727
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 722
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v1           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    monitor-exit v6

    .line 732
    return-wide v3

    .line 731
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
