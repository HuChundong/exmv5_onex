.class Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
.super Ljava/lang/Object;
.source "DMCOnlineImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheItem"
.end annotation


# instance fields
.field mID:Ljava/lang/String;

.field mState:I

.field mTaskID:I

.field mUri:Landroid/net/Uri;

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->this$0:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    return-void
.end method
