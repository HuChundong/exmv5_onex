.class public interface abstract Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DLNAServiceStatusListener"
.end annotation


# static fields
.field public static final ERROR_SESSION_COOKIE_ALREADY_IN_USED:I = -0x1

.field public static final ERROR_SESSION_COOKIE_ALREADY_IN_USED_REASON:Ljava/lang/String; = "Same session cookie is already in use."


# virtual methods
.method public abstract onServiceConnected()V
.end method

.method public abstract onServiceConnectionError(ILjava/lang/String;)V
.end method

.method public abstract onServiceDisconnected()V
.end method
