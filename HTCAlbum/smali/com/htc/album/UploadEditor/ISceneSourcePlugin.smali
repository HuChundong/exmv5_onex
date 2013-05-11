.class public interface abstract Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
.super Ljava/lang/Object;
.source "ISceneSourcePlugin.java"


# virtual methods
.method public abstract adapterIdentity()Ljava/lang/String;
.end method

.method public abstract getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
.end method

.method public abstract getServicePackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getServiceSource()I
.end method

.method public abstract isDataReady()Z
.end method

.method public abstract isDefaultDisplayScreenControl()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onClickTagButton()V
.end method

.method public abstract onConfirm()Z
.end method

.method public abstract onCreate(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDisplayEditorViewer(Z)V
.end method

.method public abstract onMessage(Landroid/os/Message;)Z
.end method

.method public abstract onNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
.end method

.method public abstract onPause()V
.end method

.method public abstract onSendToBackground(Landroid/os/Bundle;)V
.end method

.method public abstract onSendToForeground(Landroid/os/Bundle;)V
.end method

.method public abstract prepareBundleData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
.end method
