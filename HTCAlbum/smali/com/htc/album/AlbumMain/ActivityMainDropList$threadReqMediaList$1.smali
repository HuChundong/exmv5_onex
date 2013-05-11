.class Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList$1;
.super Ljava/lang/Object;
.source "ActivityMainDropList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList$1;->this$1:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList$1;->this$1:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->onPostExecute()V

    .line 653
    return-void
.end method
