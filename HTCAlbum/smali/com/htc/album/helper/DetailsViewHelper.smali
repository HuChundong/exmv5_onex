.class public Lcom/htc/album/helper/DetailsViewHelper;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/DetailsViewHelper$1;,
        Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;,
        Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;,
        Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;,
        Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;,
        Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;,
        Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;,
        Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;,
        Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[DetailsViewHelper]"


# instance fields
.field private mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    .line 2172
    return-void
.end method

.method private static RetrieveVideoDetailsInfo(Landroid/content/Context;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V
    .locals 21
    .parameter "context"
    .parameter "detailsViewDataInfo"
    .parameter "video"

    .prologue
    .line 1953
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1955
    :cond_0
    const-string v14, "[DetailsViewHelper]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[setupDefaultVideoDetailRows] Null reference. context = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", detailsViewDataInfo = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", video = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    :goto_0
    return-void

    .line 1961
    :cond_1
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1965
    .local v13, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1970
    const/4 v6, 0x0

    .line 1971
    .local v6, dimensionWidth:I
    const/4 v5, 0x0

    .line 1973
    .local v5, dimensionHeight:I
    const/16 v14, 0x12

    :try_start_1
    invoke-virtual {v13, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1977
    const/16 v14, 0x13

    invoke-virtual {v13, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    .line 1987
    :goto_1
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->isDrm()Z

    move-result v14

    if-nez v14, :cond_2

    if-lez v6, :cond_2

    if-lez v5, :cond_2

    .line 1988
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1990
    .local v12, resolution:Ljava/lang/String;
    const v14, 0x7f0a008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1995
    .end local v12           #resolution:Ljava/lang/String;
    :cond_2
    const/16 v14, 0x9

    :try_start_3
    invoke-virtual {v13, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1998
    .local v7, durationMs:I
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/htc/album/helper/DetailsViewHelper;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 2000
    .local v8, durationValue:Ljava/lang/String;
    const v14, 0x7f0a008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2028
    .end local v7           #durationMs:I
    .end local v8           #durationValue:Ljava/lang/String;
    :goto_2
    const/16 v14, 0x14

    :try_start_4
    invoke-virtual {v13, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2032
    .local v2, bitRate:J
    const-wide/32 v14, 0xf4240

    cmp-long v14, v2, v14

    if-gez v14, :cond_5

    .line 2033
    const v14, 0x7f0a0091

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/16 v17, 0x3e8

    div-long v17, v2, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2039
    .local v4, bps:Ljava/lang/String;
    :goto_3
    const v14, 0x7f0a008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2050
    .end local v2           #bitRate:J
    .end local v4           #bps:Ljava/lang/String;
    :goto_4
    :try_start_5
    const-string v11, ""

    .line 2058
    .local v11, format:Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v14, ""

    if-ne v11, v14, :cond_4

    .line 2059
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getMimeType()Ljava/lang/String;

    move-result-object v11

    .line 2062
    :cond_4
    const v14, 0x7f0a0098

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2070
    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 2071
    :catch_0
    move-exception v10

    .line 2072
    .local v10, ex:Ljava/lang/RuntimeException;
    const-string v14, "[DetailsViewHelper]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RetrieveVideoDetailsInfo : finally ex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 1981
    .end local v10           #ex:Ljava/lang/RuntimeException;
    .end local v11           #format:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 1982
    .local v9, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    .line 1983
    const/4 v5, 0x0

    .line 1984
    :try_start_7
    const-string v14, "[DetailsViewHelper]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Get METADATA_KEY_VIDEO_WIDTH, METADATA_KEY_VIDEO_HEIGHT ex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 2064
    .end local v5           #dimensionHeight:I
    .end local v6           #dimensionWidth:I
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v10

    .line 2066
    .restart local v10       #ex:Ljava/lang/RuntimeException;
    :try_start_8
    const-string v14, "[DetailsViewHelper]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RetrieveVideoDetailsInfo ex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2070
    :try_start_9
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 2071
    :catch_3
    move-exception v10

    .line 2072
    const-string v14, "[DetailsViewHelper]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RetrieveVideoDetailsInfo : finally ex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 2001
    .end local v10           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #dimensionHeight:I
    .restart local v6       #dimensionWidth:I
    :catch_4
    move-exception v9

    .line 2002
    .restart local v9       #e:Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v14, "[DetailsViewHelper]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Get METADATA_KEY_DURATION ex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    .line 2069
    .end local v5           #dimensionHeight:I
    .end local v6           #dimensionWidth:I
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v14

    .line 2070
    :try_start_b
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    .line 2074
    :goto_5
    throw v14

    .line 2035
    .restart local v2       #bitRate:J
    .restart local v5       #dimensionHeight:I
    .restart local v6       #dimensionWidth:I
    :cond_5
    const v14, 0x7f0a0092

    :try_start_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    long-to-double v0, v2

    move-wide/from16 v17, v0

    const-wide v19, 0x412e848000000000L

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    move-result-object v4

    .restart local v4       #bps:Ljava/lang/String;
    goto/16 :goto_3

    .line 2040
    .end local v2           #bitRate:J
    .end local v4           #bps:Ljava/lang/String;
    :catch_5
    move-exception v9

    .line 2041
    .restart local v9       #e:Ljava/lang/NumberFormatException;
    :try_start_d
    const-string v14, "[DetailsViewHelper]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Get METADATA_KEY_BITRATE ex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_4

    .line 2071
    .end local v5           #dimensionHeight:I
    .end local v6           #dimensionWidth:I
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v10

    .line 2072
    .restart local v10       #ex:Ljava/lang/RuntimeException;
    const-string v15, "[DetailsViewHelper]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RetrieveVideoDetailsInfo : finally ex = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_5
.end method

.method static synthetic access$000(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/helper/DetailsViewHelper;->getTwoLineText_ListItem(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Lcom/htc/album/helper/DetailsViewHelper;->RetrieveVideoDetailsInfo(Landroid/content/Context;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V

    return-void
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11
    .parameter "activity"
    .parameter "durationMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2080
    if-nez p0, :cond_0

    .line 2082
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[formatDuration] Null activity found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    :cond_0
    const-string v5, "fullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "durationMs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    div-int/lit16 v0, p1, 0x3e8

    .line 2087
    .local v0, duration:I
    div-int/lit16 v2, v0, 0xe10

    .line 2088
    .local v2, h:I
    mul-int/lit16 v5, v2, 0xe10

    sub-int v5, v0, v5

    div-int/lit8 v3, v5, 0x3c

    .line 2089
    .local v3, m:I
    mul-int/lit16 v5, v2, 0xe10

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v5, v6

    sub-int v4, v0, v5

    .line 2091
    .local v4, s:I
    if-nez v2, :cond_1

    .line 2092
    const v5, 0x7f0a008e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2099
    .local v1, durationValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2095
    .end local v1           #durationValue:Ljava/lang/String;
    :cond_1
    const v5, 0x7f0a008f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method private getTwoLineText_ListItem(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;)Landroid/widget/LinearLayout;
    .locals 7
    .parameter "context"
    .parameter "Inflater"
    .parameter "parent"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 1892
    if-nez p2, :cond_0

    .line 1894
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DetailsViewHelper] Inflater is null."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 1928
    :goto_0
    return-object v3

    .line 1897
    :cond_0
    const v5, 0x7f03000b

    const/4 v6, 0x0

    invoke-virtual {p2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1898
    .local v3, twolinetext_listitem:Landroid/widget/LinearLayout;
    if-nez v3, :cond_1

    .line 1900
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DetailsViewHelper]twolinetext_listitem is null"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 1901
    goto :goto_0

    .line 1903
    :cond_1
    const v5, 0x7f090028

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 1905
    .local v2, twolinetext:Lcom/htc/widget/HtcListItem2LineText;
    if-nez v2, :cond_2

    .line 1907
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DetailsViewHelper]twolinetext is null. inflate fail."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 1908
    goto :goto_0

    .line 1912
    :cond_2
    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1913
    .local v0, primaryText:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 1914
    .local v1, secondaryText:Landroid/widget/TextView;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1920
    const v4, 0x2030042

    invoke-virtual {v0, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1921
    const v4, 0x2030038

    invoke-virtual {v1, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1925
    :cond_3
    iget-object v4, p4, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1926
    iget-object v4, p4, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setThumbnailImageMask(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "srcBmp"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 1934
    if-nez p0, :cond_0

    .line 1936
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[setThumbnailImageMask] Null srcBmp found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    :goto_0
    return-object v1

    .line 1940
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1941
    .local v0, maskBmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1943
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[setThumbnailImageMask] Null maskBmp found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1946
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->cancel(Z)Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    .line 179
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->cancel(Z)Z

    .line 2111
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    invoke-virtual {v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->isDialogShowing()Z

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showImageDetails_FromDRMProtectInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 6
    .parameter "context"
    .parameter "curImage"

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper;->isShowing()Z

    move-result v1

    .line 152
    .local v1, isshowing:Z
    const-string v3, "[DetailsViewHelper]"

    const-string v4, "[showImageDetails_FromDRMProtectInfo][+]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    :cond_0
    const-string v3, "[DetailsViewHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showImageDetails_FromDRMProtectInfo] context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curImage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isShowing() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz p2, :cond_1

    .line 159
    const-string v3, "[DetailsViewHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showImageDetails_FromDRMProtectInfo] must be drm. curImage.isDrm() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    :goto_0
    return v2

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    if-eqz v3, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper;->clear()V

    .line 167
    :cond_3
    const/4 v0, 0x0

    .line 168
    .local v0, isEditable:Z
    new-instance v3, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    iput-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    .line 169
    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[showImageDetails_FromDRMProtectInfo][-]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public showImageDetails_FromDetailDlg(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Z
    .locals 9
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    const/4 v8, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper;->isShowing()Z

    move-result v7

    .line 127
    .local v7, isshowing:Z
    const-string v0, "[DetailsViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showImageDetails_FromDetailDlg][+] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz v7, :cond_1

    .line 130
    :cond_0
    const-string v0, "[DetailsViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showImageDetails_FromDetailDlg] context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", detailParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isShowing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 143
    :goto_0
    return v0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper;->clear()V

    .line 139
    :cond_2
    const/4 v6, 0x0

    .line 140
    .local v6, isEditable:Z
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;ZZ)V

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    .line 141
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[showImageDetails_FromDetailDlg][-]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showImageDetails_FromLocal(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)Z
    .locals 11
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"
    .parameter "callback"
    .parameter "isEditable"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper;->isShowing()Z

    move-result v10

    .line 98
    .local v10, isshowing:Z
    const-string v1, "[DetailsViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showImageDetails_FromLocal][+] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz v10, :cond_1

    .line 102
    :cond_0
    const-string v1, "[DetailsViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showImageDetails_FromLocal] Reference is null. context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    .line 115
    :goto_0
    return v1

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper;->clear()V

    .line 112
    :cond_2
    new-instance v1, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)V

    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    .line 113
    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper;->mDetailTask:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[showImageDetails_FromLocal][-] "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x1

    goto :goto_0
.end method
