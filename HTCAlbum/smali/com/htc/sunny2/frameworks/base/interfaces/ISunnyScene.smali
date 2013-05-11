.class public interface abstract Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
.super Ljava/lang/Object;
.source "ISunnyScene.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneLifeCycleSecured;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActivityLifeCycle;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPassSecured;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMFragmentEnvironmentPass;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapterHookSecured;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepth;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER::",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneLifeCycleSecured;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IActivityLifeCycle;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPassSecured;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IMFragmentEnvironmentPass;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapterHookSecured",
        "<TADAPTER;>;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepth;"
    }
.end annotation


# static fields
.field public static final RENDER_ORDER_CONTINUOUS_SHOT:I = 0x5

.field public static final RENDER_ORDER_FOLDERVIEW:I = 0x1

.field public static final RENDER_ORDER_FULLSCREENVIEW:I = 0x3

.field public static final RENDER_ORDER_NORMAL:I = 0x0

.field public static final RENDER_ORDER_ONLINE_EDITOR_VIEW:I = 0x4

.field public static final RENDER_ORDER_THUMBNAIVIEW:I = 0x2


# virtual methods
.method public abstract enableConfigurationChangedInBackground()Z
.end method

.method public abstract enableContextMenu()Z
.end method

.method public abstract enableFullScreen()Z
.end method

.method public abstract enableHostCamera()Z
.end method

.method public abstract enableHostPadding()Z
.end method

.method public abstract getData()Landroid/os/Bundle;
.end method

.method public abstract getEnvironmentRenderOrder()I
.end method

.method public abstract getId()I
.end method

.method public abstract getMainView()Lcom/htc/sunnyCore/view/SView;
.end method

.method public abstract getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
.end method

.method public abstract isHostScene()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onConfigurationChangedInBackground(Landroid/content/res/Configuration;)V
.end method

.method public abstract onEnterFullscreenMode()V
.end method

.method public abstract onPrepareEnterFullscreenMode()V
.end method

.method public abstract onPrepareLeaveFullscreenMode()V
.end method

.method public abstract onTriggerErrorReport()V
.end method

.method public abstract sceneIdentity()Ljava/lang/String;
.end method

.method public abstract setId(I)V
.end method

.method public abstract setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
.end method
