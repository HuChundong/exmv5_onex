.class public Lcom/htc/cscore/restapi/exceptions/WrongDataCenterException;
.super Ljava/lang/Exception;
.source "WrongDataCenterException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "message"
    .parameter "inner"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    return-void
.end method
