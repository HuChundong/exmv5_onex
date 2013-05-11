.class Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;
.super Ljava/lang/Object;
.source "BrightnessHelper.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekbar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 214
    if-eqz p3, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    invoke-static {p2}, Lcom/htc/videowidget/videoview/utilities/brightness/HtcBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v1

    #setter for: Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->access$002(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;I)I

    .line 217
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)I

    move-result v1

    #calls: Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->setBrightness(I)V
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->access$100(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;I)V

    .line 218
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    #calls: Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->resetTimeout()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->access$200(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)V

    .line 220
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 225
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekbar"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/brightness/HtcBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v1

    #setter for: Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->access$002(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;I)I

    .line 231
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)I

    move-result v1

    #calls: Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->setBrightness(I)V
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->access$100(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;I)V

    .line 232
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    #calls: Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->resetTimeout()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->access$200(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)V

    .line 233
    return-void
.end method
