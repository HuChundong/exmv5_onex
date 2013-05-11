.class Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;
.super Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
.source "DMCFgm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoDMC/DMCFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNARendererListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 3100
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3100
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "rendererID"
    .parameter "rendererName"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3110
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNARendererStatusListener] onConnected, RendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3114
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2902(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3117
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3119
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3002(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3128
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v1

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3129
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNARendererStatusListener] onConnected, DLNAManagerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v3

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3200(Lcom/htc/videowidget/videoDMC/DMCFgm;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v0

    if-nez v0, :cond_3

    .line 3133
    :cond_2
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNARendererStatusListener] onConnected, Current Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v3

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->getCurrentTypeString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3500(Lcom/htc/videowidget/videoDMC/DMCFgm;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 3140
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNARendererStatusListener] onConnected, setDLNADataSourceByMediaInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v1

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->setDLNADataSourceByMediaInfo(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3700(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V

    .line 3164
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->requestDLNAStateAndUpdateUI()V
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4400(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    .line 3165
    return-void

    .line 3143
    :cond_4
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 3148
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNARendererStatusListener] onConnected, setDLNADataSource()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->setDLNADataSource(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3900(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)V

    goto :goto_0

    .line 3151
    :cond_5
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 3156
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNAControllerStatusListener] onConnected, setDLNADataSourceByDMS()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msServerID:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4000(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msContainerID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4200(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->setDLNADataSourceByDMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4300(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3161
    :cond_6
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNAControllerStatusListener] onConnected, setDLNADataSource Fail! DataSource is not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "uniqueId"
    .parameter "rendererName"
    .parameter "rendererType"

    .prologue
    .line 3177
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RendererListener]:onHtcMediaLinkHdRendererAdded(), uniqueId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 3215
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RendererListener]:onMirrorRendererConnected(), rendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbRefreshRendererList:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4500(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3218
    const-string v0, "DMCFgm"

    const-string v1, "[RendererListener]:onMirrorRendererConnected(), Do Nothing! Didn\'t Ask RefreshRenderList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    :cond_0
    :goto_0
    return-void

    .line 3222
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v1, 0x0

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbRefreshRendererList:Z
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4502(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3224
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 3226
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2902(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3228
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->requestDLNAStateAndUpdateUI()V
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4400(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    .line 3232
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3234
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RendererListener]:onMirrorRendererConnected(), msRendererID == null, Try to Set This Renderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of MirrorMode to HtcDLNAManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 3237
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->setRendererIdToDLNAManager(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4600(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3239
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v1, 0x1

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbRendererIsMirrorMediaLinkHD:Z
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2802(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3240
    const-string v0, "DMCFgm"

    const-string v1, "[RendererListener]:onMirrorRendererConnected(), Set Mirror HTC MediaLink HD as Renderer OK!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3245
    :cond_3
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RendererListener]:onMirrorRendererConnected(), mDLNAManager.getState() == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "uniqueId"
    .parameter "rendererName"
    .parameter "rendererType"

    .prologue
    .line 3191
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RendererListener]:onRendererAdded(), uniqueId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    return-void
.end method

.method public onRendererRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueId"
    .parameter "errorId"
    .parameter "errorReason"

    .prologue
    .line 3203
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RendererListener]:onRendererRemoved(), uniqueId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    return-void
.end method

.method public onRendererThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueId"
    .parameter "filePath"

    .prologue
    .line 3260
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RendererListener]:onRendererThumbnailUpdated(), uniqueId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    return-void
.end method
