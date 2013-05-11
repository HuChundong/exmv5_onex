.class public Lcom/htc/util/icon/IconGenerator;
.super Ljava/lang/Object;
.source "IconGenerator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBubbleTextLayout:Landroid/widget/FrameLayout;

.field private mIconSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    .line 27
    const/16 v0, 0x30

    iput v0, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    return-void
.end method


# virtual methods
.method public MailcreateBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "appContext"
    .parameter "imageIcon"
    .parameter "imageTextback"
    .parameter "textColor"
    .parameter "bubbleNum"

    .prologue
    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    .local v2, res:Landroid/content/res/Resources;
    const-string v4, ""

    .line 93
    .local v4, str:Ljava/lang/String;
    const/4 v6, 0x0

    .line 95
    .local v6, textSize:I
    const/16 v7, 0x64

    if-ge p5, v7, :cond_1

    .line 96
    const-string v7, "info_primary_l"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 97
    .local v3, resId:I
    if-nez v3, :cond_0

    .line 98
    const-string v7, "htc_list_item_notification_text_size"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 99
    if-nez v3, :cond_0

    const/4 v7, 0x0

    .line 146
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #resId:I
    .end local v4           #str:Ljava/lang/String;
    .end local v6           #textSize:I
    :goto_0
    return-object v7

    .line 101
    .restart local v2       #res:Landroid/content/res/Resources;
    .restart local v3       #resId:I
    .restart local v4       #str:Ljava/lang/String;
    .restart local v6       #textSize:I
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 102
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    :goto_1
    iget-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    if-nez v7, :cond_6

    .line 118
    const-string v7, "bubbletext_icon"

    const-string v8, "integer"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 119
    if-nez v3, :cond_4

    const/4 v7, 0x0

    goto :goto_0

    .line 105
    .end local v3           #resId:I
    :cond_1
    const-string v7, "info_primary_m"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 106
    .restart local v3       #resId:I
    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 114
    :goto_2
    const-string v4, "99+"

    goto :goto_1

    .line 110
    :cond_2
    const-string v7, "htc_list_item_notification_text_size"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 111
    if-nez v3, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/lit8 v6, v7, -0x2

    goto :goto_2

    .line 120
    :cond_4
    invoke-static {p1, v3}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    .line 123
    const-string v7, "icon_image_size"

    const-string v8, "integer"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 124
    if-nez v3, :cond_5

    const/4 v7, 0x0

    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    .line 128
    :cond_6
    const-string v7, "bubble_icon_image"

    const-string v8, "integer"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 129
    if-nez v3, :cond_7

    const/4 v7, 0x0

    goto :goto_0

    .line 130
    :cond_7
    iget-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 131
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const-string v7, "bubble_icon_text"

    const-string v8, "integer"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 134
    if-nez v3, :cond_8

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 135
    :cond_8
    iget-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 136
    .local v5, text:Landroid/widget/TextView;
    const/4 v7, 0x0

    int-to-float v8, v6

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v5, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget v7, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    if-lez v7, :cond_9

    .line 142
    iget-object v7, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    iget v8, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    iget v9, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    invoke-static {v7, v8, v9}, Lcom/htc/util/icon/IconImageGenerator;->genBitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 143
    .end local v1           #image:Landroid/widget/ImageView;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #resId:I
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #text:Landroid/widget/TextView;
    .end local v6           #textSize:I
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public createBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "appContext"
    .parameter "imageIcon"
    .parameter "imageTextback"
    .parameter "textColor"
    .parameter "bubbleNum"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    const/4 v3, 0x0

    .line 40
    .local v3, id:I
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    .line 41
    .local v5, res:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    if-nez v9, :cond_1

    .line 42
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "bubbletext_icon"

    const-string v11, "integer"

    const-string v12, "com.htc"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 43
    if-nez v3, :cond_0

    const/4 v9, 0x0

    .line 81
    .end local v5           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v9

    .line 44
    .restart local v5       #res:Landroid/content/res/Resources;
    :cond_0
    invoke-static {p1, v3}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    .line 46
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "icon_image_size"

    const-string v11, "integer"

    const-string v12, "com.htc"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    .line 51
    :cond_1
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "bubble_icon_image"

    const-string v11, "integer"

    const-string v12, "com.htc"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 52
    if-nez v3, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    .line 53
    :cond_2
    iget-object v9, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 55
    .local v4, image:Landroid/widget/ImageView;
    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "bubble_icon_text"

    const-string v11, "integer"

    const-string v12, "com.htc"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 57
    if-nez v3, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    .line 58
    :cond_3
    iget-object v9, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 60
    .local v7, text:Landroid/widget/TextView;
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    move/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "htc_list_item_notification_text_size"

    const-string v11, "dimen"

    const-string v12, "com.htc"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 65
    if-nez v3, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    .line 66
    :cond_4
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 67
    .local v8, textSize:I
    const/4 v9, 0x0

    int-to-float v10, v8

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    iget v9, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    if-lez v9, :cond_5

    .line 70
    iget-object v9, p0, Lcom/htc/util/icon/IconGenerator;->mBubbleTextLayout:Landroid/widget/FrameLayout;

    iget v10, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    iget v11, p0, Lcom/htc/util/icon/IconGenerator;->mIconSize:I

    invoke-static {v9, v10, v11}, Lcom/htc/util/icon/IconImageGenerator;->genBitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    goto/16 :goto_0

    .line 73
    .end local v4           #image:Landroid/widget/ImageView;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #text:Landroid/widget/TextView;
    .end local v8           #textSize:I
    :catch_0
    move-exception v2

    .line 75
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 81
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    :goto_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 77
    :catch_1
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
