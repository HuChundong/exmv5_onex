.class public abstract Lcom/htc/lockscreen/idlescreen/IdleScreenService;
.super Landroid/app/Service;
.source "IdleScreenService.java"


# static fields
.field public static final ACTION_LOCKSCREEN_HIDE_LIVEWALLPAPPER:Ljava/lang/String; = "idleScreenHideLiveWallpaper"

.field public static final ACTION_LOCKSCREEN_IS_RESUME:Ljava/lang/String; = "idleScreenIsResume"

.field public static final ACTION_LOCKSCREEN_KEY_DOWN:Ljava/lang/String; = "idleScreen_key_down"

.field public static final ACTION_LOCKSCREEN_KEY_UP:Ljava/lang/String; = "idleScreen_key_up"

.field public static final ACTION_LOCKSCREEN_PHONE_UPDATE:Ljava/lang/String; = "idlescreen_Phone_state_update"

.field public static final ACTION_LOCKSCREEN_PREPARE_UNLOCK:Ljava/lang/String; = "idleScreenPrepareUnlock"

.field public static final ACTION_LOCKSCREEN_REMINDER_DISMISS:Ljava/lang/String; = "idleScreenReminderDismiss"

.field public static final ACTION_LOCKSCREEN_REMINDER_HANDLEALL:Ljava/lang/String; = "idleScreenReminderHandleAll"

.field public static final ACTION_LOCKSCREEN_REMINDER_REGISTER:Ljava/lang/String; = "idleScreenReminderRegister"

.field public static final ACTION_LOCKSCREEN_REMINDER_SNOOZE:Ljava/lang/String; = "idleScreenReminderSnooze"

.field public static final ACTION_LOCKSCREEN_REMINDER_SNOOZEALL:Ljava/lang/String; = "idleScreenReminderSnoozeAll"

.field public static final ACTION_LOCKSCREEN_REMINDER_UNREGISTER:Ljava/lang/String; = "idleScreenReminderUnRegister"

.field public static final ACTION_LOCKSCREEN_REMINDER_UPDATE:Ljava/lang/String; = "idleScreenReminderUpdate"

.field public static final ACTION_LOCKSCREEN_REMOTE_VIEW:Ljava/lang/String; = "idleScreen_remote_view"

.field public static final ACTION_LOCKSCREEN_SHORTCUT_UPDATE:Ljava/lang/String; = "idlescreen_shortcut_update"

.field public static final ACTION_LOCKSCREEN_SHOW_LIVEWALLPAPPER:Ljava/lang/String; = "idleScreenShowLiveWallpaper"

.field public static final ACTION_LOCKSCREEN_STARTACTIVITY:Ljava/lang/String; = "startActivityAndUnlock"

.field public static final ACTION_LOCKSCREEN_START_PENDING:Ljava/lang/String; = "ACTION_LOCKSCREEN_START_PENDING"

.field public static final ACTION_LOCKSCREEN_SURFACE_CREATE:Ljava/lang/String; = "idlescreen_surface_create"

.field public static final ACTION_LOCKSCREEN_SURVIVE:Ljava/lang/String; = "idleScreen_Survive"

.field public static final ACTION_LOCKSCREEN_TELEPHONY_REGISTER:Ljava/lang/String; = "idleScreenTelephonyRegister"

.field public static final ACTION_LOCKSCREEN_TELEPHONY_UNREGISTER:Ljava/lang/String; = "idleScreenTelephonyUnRegister"

.field public static final ACTION_LOCKSCREEN_TELEPHONY_UPDATE:Ljava/lang/String; = "idleScreenTelephonyUpdate"

.field public static final ACTION_LOCKSCREEN_UNLOCK:Ljava/lang/String; = "idleScreenUnlock"

.field public static final ACTION_LOCKSCREEN_VIEW_MODE:Ljava/lang/String; = "idleScreenViewMode"

.field public static final ACTION_LOCKSCREEN_WAKELOCK:Ljava/lang/String; = "idleScreenWakeLock"

.field public static final KEY_ACTIVITY_CLASS:Ljava/lang/String; = "KEY_ACTIVITY_CLASS"

.field public static final KEY_ACTIVITY_INTENT:Ljava/lang/String; = "KEY_ACTIVITY_INTENT"

.field public static final KEY_ACTIVITY_PACKAGE:Ljava/lang/String; = "KEY_ACTIVITY_PACKAGE"

.field public static final KEY_IS_RESUME:Ljava/lang/String; = "Key_IsResume"

.field public static final KEY_KEYCODE:Ljava/lang/String; = "Key_keycode"

.field public static final KEY_KEYEVENT:Ljava/lang/String; = "Key_keyEvent"

.field public static final KEY_PHONE_STATE:Ljava/lang/String; = "Key_PhoneState"

.field public static final KEY_REMINDER_ACTION:Ljava/lang/String; = "Key_ReminderAction"

.field public static final KEY_REMINDER_ID:Ljava/lang/String; = "Key_ReminderId"

.field public static final KEY_REMINDER_STATE:Ljava/lang/String; = "Key_ReminderState"

.field public static final KEY_REMINDER_TYPE:Ljava/lang/String; = "Key_ReminderType"

.field public static final KEY_REMOTE_VIEW:Ljava/lang/String; = "Key_remoteView"

.field public static final KEY_SHORTCUT_LIST:Ljava/lang/String; = "Key_shortcut_list"

.field public static final KEY_SHORTCUT_VISIBILITY:Ljava/lang/String; = "Key_shortcut_visibility"

.field public static final KEY_TELEPHONY_STATE:Ljava/lang/String; = "Key_TelephonyState"

.field public static final KEY_UNLOCK_TYPE:Ljava/lang/String; = "Key_UnlockTpye"

.field public static final KEY_VIEW_MODE:Ljava/lang/String; = "Key_ViewMode"

.field public static final LOCKSCREEN_STATE_NORMAL:I = 0x0

.field public static final LOCKSCREEN_STATE_UNFOCUS:I = 0x2

.field public static final LOCKSCREEN_STATE_UNLOCK:I = 0x1

.field private static final PREFIX:Ljava/lang/String; = "IdleScreenService"

.field public static final REMINDER_ALARM:I = 0x1

.field public static final REMINDER_CALENDAR:I = 0x3

.field public static final REMINDER_TASK:I = 0x4

.field public static final REMINDER_TIMER:I = 0x2

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.htc.lockscreen.idlescreen.IdleScreenService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "com.htc.lockscreen.idlescreen"


# instance fields
.field private mCallbackLooper:Landroid/os/Looper;

.field private mEngineHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mCallbackLooper:Landroid/os/Looper;

    .line 142
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenService$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService$1;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mEngineHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;

    return-void
.end method


# virtual methods
.method getEnginesHelper()Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mEngineHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 179
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mEngineHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;

    invoke-direct {v0, p0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mEngineHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    .line 215
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 160
    return-void
.end method

.method public abstract onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mEngineHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->removeAll()V

    .line 169
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 170
    return-void
.end method

.method public setCallbackLooper(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mCallbackLooper:Landroid/os/Looper;

    .line 190
    return-void
.end method
