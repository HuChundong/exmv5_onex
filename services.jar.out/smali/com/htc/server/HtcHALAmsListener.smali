.class public Lcom/htc/server/HtcHALAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcHALAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcHALAmsListener"


# instance fields
.field private mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcHALAmsListener;->mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    .line 23
    new-instance v0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    const-string v1, "HtcHALAmsListener"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;-><init>(Lcom/htc/server/HtcHALAmsListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcHALAmsListener;->mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    .line 24
    iget-object v0, p0, Lcom/htc/server/HtcHALAmsListener;->mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    invoke-virtual {v0}, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->start()V

    .line 25
    return-void
.end method


# virtual methods
.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 1
    .parameter "topApp"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/server/HtcHALAmsListener;->mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    invoke-virtual {v0}, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->notifyTopAppChanged()V

    .line 32
    return-void
.end method
