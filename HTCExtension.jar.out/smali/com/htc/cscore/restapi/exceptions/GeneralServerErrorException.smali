.class public Lcom/htc/cscore/restapi/exceptions/GeneralServerErrorException;
.super Ljava/lang/Exception;
.source "GeneralServerErrorException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "message"
    .parameter "e"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method
