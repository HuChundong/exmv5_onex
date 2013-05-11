.class Lcom/htc/album/AlbumMain/FragmentLandingPage$3;
.super Ljava/lang/Object;
.source "FragmentLandingPage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/FragmentLandingPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$3;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;)I
    .locals 2
    .parameter "tb1"
    .parameter "tb2"

    .prologue
    .line 601
    invoke-virtual {p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 598
    check-cast p1, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .end local p1
    check-cast p2, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/AlbumMain/FragmentLandingPage$3;->compare(Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;)I

    move-result v0

    return v0
.end method
