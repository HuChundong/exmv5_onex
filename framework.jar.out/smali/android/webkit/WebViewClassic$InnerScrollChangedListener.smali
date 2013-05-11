.class Landroid/webkit/WebViewClassic$InnerScrollChangedListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerScrollChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 11618
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11618
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 11622
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->updateSelectionPopup()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$10700(Landroid/webkit/WebViewClassic;)V

    .line 11623
    return-void
.end method
