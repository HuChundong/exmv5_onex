.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionInvalidSceneAdapter;
.super Landroid/util/AndroidRuntimeException;
.source "SunnyExceptionInvalidSceneAdapter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SunnyExceptionInvalidSceneAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method
