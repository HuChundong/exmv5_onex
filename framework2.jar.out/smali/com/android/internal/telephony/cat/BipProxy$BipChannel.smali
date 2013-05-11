.class interface abstract Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
.super Ljava/lang/Object;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "BipChannel"
.end annotation


# virtual methods
.method public abstract close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
.end method

.method public abstract getSocketData()V
.end method

.method public abstract getStatus()I
.end method

.method public abstract onSessionEnd()V
.end method

.method public abstract open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
.end method

.method public abstract receive(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
.end method

.method public abstract send(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
.end method
