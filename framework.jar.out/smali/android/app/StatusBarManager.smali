.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"

# interfaces
.implements Landroid/app/HtcIfStatusBarManager;


# static fields
.field public static final DISABLE_BACK:I = 0x400000

.field public static final DISABLE_CLOCK:I = 0x800000

.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_MASK:I = 0x1ff0000

.field public static final DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final NAVIGATION_HINT_BACK_ALT:I = 0x8

.field public static final NAVIGATION_HINT_BACK_NOP:I = 0x1

.field public static final NAVIGATION_HINT_HOME_NOP:I = 0x2

.field public static final NAVIGATION_HINT_RECENT_NOP:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 70
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 75
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 77
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 78
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public collapse()V
    .locals 3

    .prologue
    .line 120
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 121
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    return-void

    .line 124
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 126
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public disable(I)V
    .locals 4
    .parameter "what"

    .prologue
    .line 90
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 91
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 92
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    return-void

    .line 94
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 96
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expand()V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 106
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    return-void

    .line 109
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 111
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public glow(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 175
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.systemui.GLOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GLOW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v1, "SECURE_KEY"

    const v2, 0x1fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 145
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 146
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    return-void

    .line 149
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 151
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBackgroundTransparent(Z)V
    .locals 3
    .parameter "transparent"

    .prologue
    .line 188
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 189
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setBackgroundTransparent(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    return-void

    .line 192
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 194
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBackgroundTransparentForce(ZZ)V
    .locals 3
    .parameter "transparent"
    .parameter "force"

    .prologue
    .line 200
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 201
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setBackgroundTransparentForce(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    return-void

    .line 204
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 206
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .parameter "slot"
    .parameter "iconId"
    .parameter "iconLevel"
    .parameter "contentDescription"

    .prologue
    .line 132
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 133
    .local v0, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    return-void

    .line 137
    .end local v0           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v6

    .line 139
    .local v6, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3
    .parameter "slot"
    .parameter "visible"

    .prologue
    .line 157
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 158
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    return-void

    .line 161
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 163
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "what"
    .parameter "action"
    .parameter "ext"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
