.class Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;
.super Landroid/os/AsyncTask;
.source "HtcPaintMergeTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/PaintManager/HtcPaintMergeTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqPhotoMerge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;


# direct methods
.method private constructor <init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;-><init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "arg0"

    .prologue
    .line 87
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeMerge]: "

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v9, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$100(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/BitmapUtil2;->DecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v7, v9

    .line 93
    .local v7, fWidthSrc:F
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeMerge]: bitmap: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeMerge]: bitmapW: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeMerge]: bitmapH: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, bitmapCache:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 101
    .local v6, fWidthCache:F
    const/high16 v5, 0x3f80

    .line 102
    .local v5, fScale:F
    iget-object v9, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    invoke-static {v9}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$200(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v6, v9

    .line 105
    div-float v5, v7, v6

    .line 106
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeMerge]: bitmapCache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeMerge]: bitmapCache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeMerge]: scale: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v8, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;

    invoke-direct {v8}, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;-><init>()V

    .line 116
    .local v8, viewPort:Lcom/htc/album/PaintManager/PaintViewPort3DSimple;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->setDimension(FF)V

    .line 117
    invoke-virtual {v8, v5}, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->setScale(F)V

    .line 122
    const/4 v0, 0x0

    .line 126
    .local v0, bResult:Z
    const/4 v4, 0x0

    .line 127
    .local v4, bitmapPaint:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Lcom/htc/opensense2/album/util/BitmapUtil2;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 133
    const/16 v9, 0xff

    invoke-virtual {v4, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 134
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;
    invoke-static {v10}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$300(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Lcom/htc/album/PaintManager/FileSerializeDAO;

    move-result-object v10

    invoke-static {v4, v9, v8, v10}, Lcom/htc/painting/engine/HtcPaintingUtil;->drawUtil(Landroid/graphics/Bitmap;ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Z

    move-result v0

    .line 138
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeMerge]: paint: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1
    iget-object v9, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-virtual {v9, v1, v4}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 142
    .local v3, bitmapComb:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    invoke-static {v9}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->access$200(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    .line 144
    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    const/4 v1, 0x0

    .line 149
    :cond_2
    if-eqz v4, :cond_3

    .line 151
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    const/4 v4, 0x0

    .line 154
    :cond_3
    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    return-object v9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    const/16 v1, 0x3038

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 166
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 161
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
