.class Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$5;
.super Landroid/os/Handler;
.source "EncodingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;
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
    .line 480
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$5;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 483
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 489
    :goto_0
    return-void

    .line 486
    :pswitch_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$5;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->initUI()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method
