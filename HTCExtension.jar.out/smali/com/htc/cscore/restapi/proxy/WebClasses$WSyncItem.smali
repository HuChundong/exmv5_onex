.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WSyncItem;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WSyncItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WSyncItem$WSyncItemType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public Id:Ljava/util/UUID;

.field public SyncItemType:I

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2233
    return-void
.end method
