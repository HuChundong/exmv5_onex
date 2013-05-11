.class Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
.super Ljava/lang/Object;
.source "CacheCountMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/cache/CacheCountMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Storage"
.end annotation


# static fields
.field public static final EXTERNAL:I = 0x1

.field public static final PHONE:I = 0x4

.field public static final REMOVABLE:I = 0x2

.field public static final UNKNOW:I = 0x0

.field public static final USB:I = 0x3


# instance fields
.field public mWhich:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 647
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 645
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;->mWhich:I

    .line 648
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;->mWhich:I

    .line 649
    return-void
.end method
