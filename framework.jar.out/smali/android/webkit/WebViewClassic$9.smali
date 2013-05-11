.class Landroid/webkit/WebViewClassic$9;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->performKikinSearch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 5967
    iput-object p1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5971
    iget-object v0, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #calls: Landroid/webkit/WebViewClassic;->performKikinSearch(Z)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$2300(Landroid/webkit/WebViewClassic;Z)V

    .line 5972
    return-void
.end method
