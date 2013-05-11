.class Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$3;
.super Ljava/lang/Object;
.source "EncodingList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$3;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$3;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->finish()V

    .line 251
    return-void
.end method
