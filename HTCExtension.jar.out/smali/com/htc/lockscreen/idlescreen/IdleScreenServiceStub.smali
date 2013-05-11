.class public Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;
.super Lcom/htc/lockscreen/idlescreen/IIdleScreenService$Stub;
.source "IdleScreenServiceStub.java"


# instance fields
.field private mCallbackLooper:Landroid/os/Looper;

.field private final mEnginesHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;

.field private final mTarget:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;)V
    .locals 1
    .parameter "context"
    .parameter "helper"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenService$Stub;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;->mCallbackLooper:Landroid/os/Looper;

    .line 18
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;->mTarget:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;->mEnginesHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;

    .line 20
    return-void
.end method


# virtual methods
.method public attach(Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;Landroid/os/IBinder;IIIIZII)V
    .locals 13
    .parameter "connection"
    .parameter "windowToken"
    .parameter "windowType"
    .parameter "windowAnimation"
    .parameter "windowFlag"
    .parameter "format"
    .parameter "isPreview"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;->mTarget:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;->mEnginesHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;

    iget-object v12, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;->mCallbackLooper:Landroid/os/Looper;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;Landroid/os/IBinder;IIIIZIILandroid/os/Looper;)V

    .line 40
    return-void
.end method

.method public setCallbackLooper(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenServiceStub;->mCallbackLooper:Landroid/os/Looper;

    .line 28
    return-void
.end method
