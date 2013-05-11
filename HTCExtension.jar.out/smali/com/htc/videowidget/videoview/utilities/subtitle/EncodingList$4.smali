.class Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$4;
.super Ljava/lang/Object;
.source "EncodingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 462
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$4;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$4;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->finish()V

    .line 466
    return-void
.end method
