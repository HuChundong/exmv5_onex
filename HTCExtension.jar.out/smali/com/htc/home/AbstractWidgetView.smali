.class public abstract Lcom/htc/home/AbstractWidgetView;
.super Ljava/lang/Object;
.source "AbstractWidgetView.java"

# interfaces
.implements Lcom/htc/home/WidgetViewInterface;
.implements Lcom/htc/home/WidgetVisibilityObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;,
        Lcom/htc/home/AbstractWidgetView$WidgetHandler;
    }
.end annotation


# static fields
.field public static final STATUS_DESTROYED:I = 0x3

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PAUSE:I = 0x2

.field public static final STATUS_RESUME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Widget"

.field public static final WHAT_ON_GL_ANIMATION_STOP:I = 0x4

.field public static final WHAT_ON_HOST_PAUSE:I = 0x6

.field public static final WHAT_ON_HOST_RESUME:I = 0x7

.field public static final WHAT_ON_NEW_INTENT:I = 0x3

.field public static final WHAT_ON_PAUSE:I = 0x2

.field public static final WHAT_ON_REFRESH_CONTENTS:I = 0x4

.field public static final WHAT_ON_RESUME:I = 0x1

.field protected static sHandlerThread:Landroid/os/HandlerThread;

.field protected static sLooper:Landroid/os/Looper;


# instance fields
.field protected mApplication:Landroid/content/Context;

.field protected mCountInitialized:I

.field protected mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mHost:Lcom/htc/home/HostInterface;

.field protected mHostActivity:Lcom/htc/home/HostActivity;

.field protected mHostView:Landroid/view/View;

.field protected mLayoutRemoved:Z

.field protected mLooper:Landroid/os/Looper;

.field protected mPrevOrientation:I

.field protected mResContext:Landroid/content/Context;

.field protected mStatus:I

.field protected mUiHandler:Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;

.field protected mWidgetId:I

.field protected m_nLastHostWhat:I

.field protected m_nLastWhat:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastWhat:I

    .line 41
    iput v0, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastHostWhat:I

    .line 63
    iput-boolean v1, p0, Lcom/htc/home/AbstractWidgetView;->mLayoutRemoved:Z

    .line 64
    iput v1, p0, Lcom/htc/home/AbstractWidgetView;->mCountInitialized:I

    .line 65
    iput v1, p0, Lcom/htc/home/AbstractWidgetView;->mStatus:I

    .line 334
    iput v0, p0, Lcom/htc/home/AbstractWidgetView;->mPrevOrientation:I

    return-void
.end method

.method private createHander()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 156
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->isSharingHandlerThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const-class v1, Landroid/os/HandlerThread;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lcom/htc/home/AbstractWidgetView;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Global Widget HT"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/AbstractWidgetView;->sHandlerThread:Landroid/os/HandlerThread;

    .line 165
    sget-object v0, Lcom/htc/home/AbstractWidgetView;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    sget-object v0, Lcom/htc/home/AbstractWidgetView;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/htc/home/AbstractWidgetView;->sLooper:Landroid/os/Looper;

    .line 168
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    .line 170
    const-string v0, "Widget"

    const-string v1, "AbstractWidgetView.createHander: with shared thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    new-instance v0, Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    sget-object v1, Lcom/htc/home/AbstractWidgetView;->sLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/home/AbstractWidgetView$WidgetHandler;-><init>(Lcom/htc/home/AbstractWidgetView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 174
    :cond_3
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget_HT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 176
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 177
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mLooper:Landroid/os/Looper;

    .line 178
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_4

    .line 179
    const-string v0, "Widget"

    const-string v1, "AbstractWidgetView.createHander: with dedicated thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_4
    new-instance v0, Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/home/AbstractWidgetView$WidgetHandler;-><init>(Lcom/htc/home/AbstractWidgetView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    goto/16 :goto_0
.end method


# virtual methods
.method public fireOnGLAnimationStop(I)V
    .locals 4
    .parameter "notifyCause"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 267
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    return-void
.end method

.method public final fireOnHostPause()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x6

    .line 284
    iget v1, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastHostWhat:I

    if-ne v1, v2, :cond_1

    .line 285
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnHostPause: return. mLastWhat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastHostWhat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 289
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    iput v2, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastHostWhat:I

    .line 291
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnHostPause: msg sent. mHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final fireOnHostResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x7

    .line 272
    iget v1, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastHostWhat:I

    if-ne v1, v2, :cond_1

    .line 273
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnHostResume: return. mLastWhat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastHostWhat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 278
    iput v2, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastHostWhat:I

    .line 279
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnHostResume: msg sent. mHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fireOnNewIntent(I)V
    .locals 4
    .parameter "notifyCause"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 261
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final fireOnPause(I)V
    .locals 4
    .parameter "notifyCause"

    .prologue
    const/4 v3, 0x2

    .line 235
    iput v3, p0, Lcom/htc/home/AbstractWidgetView;->mStatus:I

    .line 236
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastWhat:I

    if-ne v1, v3, :cond_2

    .line 237
    :cond_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 238
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnPause: return. mLastWhat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastWhat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/home/AbstractWidgetView;->onNotifyWidgetPause(I)V

    .line 243
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, -0x1

    invoke-static {v1, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 245
    iput v3, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastWhat:I

    .line 246
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 247
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnPause: msg sent. mHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final fireOnResume(I)V
    .locals 4
    .parameter "notifyCause"

    .prologue
    const/4 v3, 0x1

    .line 219
    iput v3, p0, Lcom/htc/home/AbstractWidgetView;->mStatus:I

    .line 220
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastWhat:I

    if-ne v1, v3, :cond_2

    .line 221
    :cond_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 222
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnResume: return. mLastWhat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastWhat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, -0x1

    invoke-static {v1, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 228
    iput v3, p0, Lcom/htc/home/AbstractWidgetView;->m_nLastWhat:I

    .line 229
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 230
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnResume: msg sent. mHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMinSpanX()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getMinSpanY()I
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public getNotifyType()I
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0xa

    return v0
.end method

.method public getResizeMode()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public getResizeUnitX()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public getResizeUnitY()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 201
    return-void
.end method

.method public handleUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 204
    return-void
.end method

.method public hardKeyboardSupported()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public isAttach3DObject()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstInflated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 316
    iget v1, p0, Lcom/htc/home/AbstractWidgetView;->mCountInitialized:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandleDirectionalKey()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method protected isSharingHandlerThread()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/home/AbstractWidgetView;->mStatus:I

    .line 313
    return-void
.end method

.method public onActivityPause()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    return-void
.end method

.method public onActivityResume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    return-void
.end method

.method public onActivityStop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method public onHardKeyboardOut()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method protected onLandscape()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onLayoutInflated(Landroid/view/View;ILandroid/content/Intent;)V
    .locals 1
    .parameter "view"
    .parameter "widgetId"
    .parameter "backIntent"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/home/AbstractWidgetView;->mHostView:Landroid/view/View;

    .line 140
    iget v0, p0, Lcom/htc/home/AbstractWidgetView;->mCountInitialized:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/AbstractWidgetView;->mCountInitialized:I

    .line 141
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHostActivity:Lcom/htc/home/HostActivity;

    invoke-virtual {v0}, Lcom/htc/home/HostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mApplication:Landroid/content/Context;

    .line 142
    iput p2, p0, Lcom/htc/home/AbstractWidgetView;->mWidgetId:I

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mResContext:Landroid/content/Context;

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/AbstractWidgetView;->createHander()V

    .line 152
    new-instance v0, Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;

    invoke-direct {v0, p0}, Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;-><init>(Lcom/htc/home/AbstractWidgetView;)V

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mUiHandler:Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;

    .line 153
    return-void
.end method

.method public onLayoutRemoved()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/AbstractWidgetView;->mLayoutRemoved:Z

    .line 191
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 194
    :cond_0
    return-void
.end method

.method protected onNotifyWidgetPause(I)V
    .locals 0
    .parameter "notifyCause"

    .prologue
    .line 253
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 336
    iget v0, p0, Lcom/htc/home/AbstractWidgetView;->mPrevOrientation:I

    if-eq v0, p1, :cond_0

    .line 337
    iput p1, p0, Lcom/htc/home/AbstractWidgetView;->mPrevOrientation:I

    .line 338
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->onLandscape()V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->onPortrait()V

    goto :goto_0
.end method

.method protected onPortrait()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public onSpanChanged(II)V
    .locals 0
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 377
    return-void
.end method

.method public refreshContents()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 324
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 326
    return-void
.end method

.method public setHost(Lcom/htc/home/HostInterface;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/home/AbstractWidgetView;->mHost:Lcom/htc/home/HostInterface;

    .line 129
    return-void
.end method

.method public setHostActivity(Lcom/htc/home/HostActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/home/AbstractWidgetView;->mHostActivity:Lcom/htc/home/HostActivity;

    .line 133
    return-void
.end method
