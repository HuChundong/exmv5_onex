.class public final Lcom/htc/utils/perf/FramerateMonitor;
.super Ljava/lang/Object;
.source "FramerateMonitor.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final Enabled:Z = false

.field public static final ID_ANIMATION:I = 0x5dd

.field public static final ID_LISTVIEW_FLING:I = 0x3eb

.field public static final ID_LISTVIEW_INTRO:I = 0x3ef

.field public static final ID_LISTVIEW_SCROLL:I = 0x3e9

.field private static final ID_LOG_START_TWICE:I = 0x7cf

.field public static final ID_WINDOW_TRANSITION:I = 0x3ed

.field private static final INVALID_HANDLE:I = -0x1

.field public static final MONITOR_TYPE_GLSURFACEVIEW:I = 0x3

.field public static final MONITOR_TYPE_SURFACEFLINGER:I = 0x2

.field public static final MONITOR_TYPE_VIEWROOT:I = 0x1

.field private static final PREFIX:Ljava/lang/String; = "[AutoProf]"

.field private static final STR_LOG_STARTED_TWICE:Ljava/lang/String; = "[AutoProf](1999) Stop because start called twice, handle="

.field private static final TAG:Ljava/lang/String; = "Performance"


# instance fields
.field private final mAnimationType:I

.field private final mContextName:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mMonitorType:I

.field private mNativeHandle:I

.field private mView:Landroid/view/View;

.field private mViewRootImpl:Landroid/view/ViewRootImpl;

.field m_b:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "monitorType"
    .parameter "view"
    .parameter "animationType"
    .parameter "description"

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    .line 32
    iput-object v1, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 133
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->m_b:Landroid/os/Binder;

    .line 120
    iput-object p3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    .line 128
    :goto_0
    iput p2, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    .line 129
    iput-object p5, p0, Lcom/htc/utils/perf/FramerateMonitor;->mDescription:Ljava/lang/String;

    .line 130
    iput p4, p0, Lcom/htc/utils/perf/FramerateMonitor;->mAnimationType:I

    .line 131
    return-void

    .line 126
    :cond_0
    const-string v0, "null"

    iput-object v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    goto :goto_0
.end method

.method private native nativeStartLogFps(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeStopLogFps(I)V
.end method

.method private native nativeUpdateFrame(I)V
.end method

.method private static native nativeUpdateFrameByType(I)V
.end method

.method public static newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 6
    .parameter "monitorType"
    .parameter "view"
    .parameter "animationType"
    .parameter "description"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 84
    sget-boolean v2, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v2, :cond_0

    .line 116
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const/4 v2, 0x1

    if-eq v2, p0, :cond_1

    if-eq v3, p0, :cond_1

    if-eq v4, p0, :cond_1

    .line 91
    const-string v2, "Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong logging type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_1
    if-eq p0, v3, :cond_2

    if-nez p1, :cond_2

    .line 96
    const-string v2, "Performance"

    const-string v3, "View cannot be null when monitorType is not MONITOR_TYPE_SURFACEFLINGER"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    const/4 v1, 0x0

    .line 101
    .local v1, context:Landroid/content/Context;
    if-eqz p1, :cond_3

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 103
    if-nez v1, :cond_3

    .line 104
    const-string v2, "Performance"

    const-string v3, "View do not have a context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_3
    if-ne v4, p0, :cond_4

    instance-of v2, p1, Landroid/opengl/GLSurfaceView;

    if-nez v2, :cond_4

    .line 110
    const-string v2, "Performance"

    const-string v3, "view is not instance of GLSurfaceView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_4
    new-instance v0, Lcom/htc/utils/perf/FramerateMonitor;

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/utils/perf/FramerateMonitor;-><init>(Landroid/content/Context;ILandroid/view/View;ILjava/lang/String;)V

    .line 116
    .local v0, fm:Lcom/htc/utils/perf/FramerateMonitor;
    goto :goto_0
.end method

.method public static updateFrameByType(I)V
    .locals 1
    .parameter "monitorType"

    .prologue
    .line 289
    sget-boolean v0, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 297
    invoke-static {p0}, Lcom/htc/utils/perf/FramerateMonitor;->nativeUpdateFrameByType(I)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 312
    iget v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 313
    const-string v0, "Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](*) Stop logging by finalizer, handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 318
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 319
    return-void
.end method

.method public startLogFps()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    const/4 v5, 0x0

    .line 140
    sget-boolean v7, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v7, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v5

    .line 144
    :cond_1
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v7, v11, :cond_2

    .line 145
    const-string v7, "Performance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AutoProf](1999) Stop because start called twice, handle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 149
    :cond_2
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 150
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 152
    .local v4, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v4, :cond_4

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 155
    .local v2, reply:Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mAnimationType:I

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->m_b:Landroid/os/Binder;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 163
    const/16 v7, 0x7d0

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v7, v0, v2, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 164
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 177
    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #reply:Landroid/os/Parcel;
    :goto_2
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v7, v11, :cond_0

    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_3
    :goto_3
    move v5, v6

    .line 217
    goto :goto_0

    .line 165
    .restart local v0       #data:Landroid/os/Parcel;
    .restart local v2       #reply:Landroid/os/Parcel;
    .restart local v4       #surfaceFlinger:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v7, "Performance"

    const-string v8, "Fail to transact with SurfaceFlinger"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 167
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/SecurityException;
    :try_start_2
    const-string v7, "Performance"

    const-string v8, "SurfaceFlinger transaction security check fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw v5

    .line 174
    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #reply:Landroid/os/Parcel;
    :cond_4
    const-string v7, "Performance"

    const-string v8, "Fail to get service SurfaceFlinger"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 183
    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_5
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 188
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    if-ne v6, v7, :cond_7

    .line 190
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 192
    .local v3, root:Landroid/view/ViewRootImpl;
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eq v7, v3, :cond_6

    .line 194
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->setMonitor(Lcom/htc/utils/perf/FramerateMonitor;)V

    .line 197
    :cond_6
    iput-object v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 199
    if-eqz v3, :cond_0

    .line 204
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_7
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    iget v8, p0, Lcom/htc/utils/perf/FramerateMonitor;->mAnimationType:I

    iget-object v9, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/utils/perf/FramerateMonitor;->mDescription:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/htc/utils/perf/FramerateMonitor;->nativeStartLogFps(IILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    .line 206
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v7, v11, :cond_0

    .line 210
    const/4 v5, 0x3

    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    if-eq v5, v7, :cond_3

    .line 213
    iget-object v5, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, p0}, Landroid/view/ViewRootImpl;->setMonitor(Lcom/htc/utils/perf/FramerateMonitor;)V

    goto :goto_3
.end method

.method public stopLogFps()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 224
    sget-boolean v3, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v3, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v3, v6, :cond_0

    .line 231
    iget v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 232
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 233
    .local v2, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v2, :cond_2

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    iget v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/16 v3, 0x7d1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #surfaceFlinger:Landroid/os/IBinder;
    :goto_2
    iput v6, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    goto :goto_0

    .line 242
    .restart local v0       #data:Landroid/os/Parcel;
    .restart local v2       #surfaceFlinger:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Performance"

    const-string v4, "Fail to transact with SurfaceFlinger"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 245
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 248
    .end local v0           #data:Landroid/os/Parcel;
    :cond_2
    const-string v3, "Performance"

    const-string v4, "Fail to get service SurfaceFlinger"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 256
    .end local v2           #surfaceFlinger:Landroid/os/IBinder;
    :cond_3
    const/4 v3, 0x3

    iget v4, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    if-ne v3, v4, :cond_4

    .line 262
    :goto_3
    iget v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-direct {p0, v3}, Lcom/htc/utils/perf/FramerateMonitor;->nativeStopLogFps(I)V

    goto :goto_2

    .line 259
    :cond_4
    iget-object v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v5}, Landroid/view/ViewRootImpl;->setMonitor(Lcom/htc/utils/perf/FramerateMonitor;)V

    goto :goto_3
.end method

.method public updateFrame()V
    .locals 1

    .prologue
    .line 275
    sget-boolean v0, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/htc/utils/perf/FramerateMonitor;->nativeUpdateFrame(I)V

    goto :goto_0
.end method
