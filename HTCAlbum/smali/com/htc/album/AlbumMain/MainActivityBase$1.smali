.class Lcom/htc/album/AlbumMain/MainActivityBase$1;
.super Ljava/lang/Object;
.source "MainActivityBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/MainActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/MainActivityBase;


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/MainActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/album/AlbumMain/MainActivityBase$1;->this$0:Lcom/htc/album/AlbumMain/MainActivityBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MainActivityBase$1;->this$0:Lcom/htc/album/AlbumMain/MainActivityBase;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onActionBarBackPressed()V

    .line 130
    return-void
.end method
