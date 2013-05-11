.class public Lcom/htc/album/Customizable/CustSkinnable;
.super Ljava/lang/Object;
.source "CustSkinnable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor_AllHyperLinkColor(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 199
    const v1, 0x2060002

    .line 200
    .local v1, resId:I
    if-nez p0, :cond_0

    .line 207
    .end local v1           #resId:I
    :goto_0
    return v1

    .line 203
    .restart local v1       #resId:I
    :cond_0
    const-string v2, "all_hyperlink_color"

    invoke-static {p0, v2, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, allHyperLinkColorId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getColor_BackgroundColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 277
    const v0, -0xd0d0e

    return v0
.end method

.method public static getColor_CropFrame(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 189
    const/high16 v0, 0x206

    .line 190
    .local v0, nColor:I
    if-nez p0, :cond_0

    .line 193
    .end local v0           #nColor:I
    :goto_0
    return v0

    .restart local v0       #nColor:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "multiply_color"

    invoke-static {p0, v2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getColor_TextSelectionColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 211
    const v1, 0x2060004

    .line 212
    .local v1, resId:I
    if-nez p0, :cond_0

    .line 221
    .end local v1           #resId:I
    :goto_0
    return v1

    .line 215
    .restart local v1       #resId:I
    :cond_0
    const-string v3, "text_selection_color"

    invoke-static {p0, v3, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 219
    .local v2, textSelectionColorId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .local v0, HtcTextSelectionColor:I
    move v1, v0

    .line 221
    goto :goto_0
.end method

.method public static getDrawable_Btn_Add_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    const/high16 v0, 0x208

    return v0
.end method

.method public static getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const v0, 0x20800a2

    return v0
.end method

.method public static getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const v0, 0x20800a3

    return v0
.end method

.method public static getDrawable_Checkbox_off(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    const-string v0, "gallery_checkbox_rest"

    const v1, 0x7f020006

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Checkbox_on(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "gallery_checkbox_on"

    const v1, 0x7f020005

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Default_Avatar(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 245
    const v0, 0x20800d1

    .line 246
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 249
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "icon_category_photo"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    const v0, 0x20800a6

    return v0
.end method

.method public static getDrawable_Done_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const v0, 0x20800a7

    return v0
.end method

.method public static getDrawable_Edit_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const v0, 0x20800ac

    return v0
.end method

.method public static getDrawable_Folder_Select(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 270
    const v0, 0x7f020034

    return v0
.end method

.method public static getDrawable_GalleryBGLoading(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 475
    const v0, 0x7f020001

    .line 476
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 479
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "gallery_bg_loading"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_GalleryBGLoadingDark(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 485
    const v0, 0x7f020002

    .line 486
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 489
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "gallery_bg_loading_dark"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_GalleryBtnLeft(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 505
    const v0, 0x7f020003

    .line 506
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 509
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "gallery_btn_left"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_GalleryButtonRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 495
    const v0, 0x7f020004

    .line 496
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 499
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "gallery_button_rest"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_GalleryFolderRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 465
    const v0, 0x7f020008

    .line 466
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 469
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "gallery_folder_rest"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_GalleryFolderSingleRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 455
    const v0, 0x7f020009

    .line 456
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 459
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "gallery_folder_single_rest"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_GalleryLandingMyphone(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 515
    const v0, 0x7f02000d

    .line 516
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 519
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "gallery_landing_myphone"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_GridViewSelector(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 181
    const v0, 0x7f020034

    return v0
.end method

.method public static getDrawable_Info_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 130
    const v0, 0x7f020011

    return v0
.end method

.method public static getDrawable_ListSelectorHighlightedColor(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 340
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "list_selector_holo_dark"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_ListViweDefaultBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 235
    const v0, 0x208003b

    .line 236
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 239
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_list_item_background"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_More_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    const v0, 0x20800b1

    return v0
.end method

.method public static getDrawable_Next_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    const v0, 0x20800b3

    return v0
.end method

.method public static getDrawable_Next_Song_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 159
    const v0, 0x20800b4

    return v0
.end method

.method public static getDrawable_Note_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const v0, 0x7f020013

    return v0
.end method

.method public static getDrawable_Output_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    const v0, 0x20800b5

    return v0
.end method

.method public static getDrawable_Pause_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 173
    const v0, 0x20800b6

    return v0
.end method

.method public static getDrawable_Play_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 152
    const v0, 0x20800bb

    return v0
.end method

.method public static getDrawable_Previous_Song_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 166
    const v0, 0x20800c0

    return v0
.end method

.method public static getDrawable_Save_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const v0, 0x20800c1

    return v0
.end method

.method public static getDrawable_SectionDividerRest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 444
    const v0, 0x2080042

    return v0
.end method

.method public static getDrawable_SeparatorTopRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 434
    const v0, 0x208011e

    .line 435
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 438
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "section_b_divider_top"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_Share_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const v0, 0x20800c4

    return v0
.end method

.method public static getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 123
    const v0, 0x7f020015

    return v0
.end method

.method public static getDrawable_Trim_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const v0, 0x7f020018

    return v0
.end method

.method public static getDrawable_TvOut_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    const v0, 0x20800b5

    return v0
.end method

.method public static getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const v0, 0x20800cc

    return v0
.end method

.method public static getDrawable_WindowDefaultBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 225
    const v0, 0x2080001

    .line 226
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 229
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_app_bkg"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getDrawableBtnMapDarkRest(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 421
    const v0, 0x7f020012

    return v0
.end method

.method public static getDrawable_getFooterBarBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 347
    const v0, 0x2080039

    .line 348
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 351
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_app_bkg_down_src"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getGlanceBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 292
    const v0, 0x2080001

    .line 293
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 296
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_app_bkg"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getIconDefaultAlbum(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 281
    const v0, 0x20800cf

    return v0
.end method

.method public static getDrawable_getPlaybackFooterBarButtonOuter(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 358
    const v0, 0x2080014

    .line 359
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 362
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_b_transport_outer"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getPlaybackFooterBarButtonPressed(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 368
    const v0, 0x2080015

    .line 369
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 372
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_b_transport_pressed"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getPlaybackFooterBarButtonRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 378
    const v0, 0x2080016

    .line 379
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 382
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_b_transport_rest"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 389
    const v0, 0x2080011

    .line 390
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 393
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_b_transport_middle_outer"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 399
    const v0, 0x2080012

    .line 400
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 403
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_b_transport_middle_pressed"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 409
    const v0, 0x2080013

    .line 410
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 413
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_b_transport_middle_rest"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getRimButtonOuter(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 303
    const v0, 0x2080004

    .line 304
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 307
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_b_button_outer"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getRimButtonPressed(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 314
    const v0, 0x2080005

    .line 315
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 318
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_b_button_pressed"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable_getRimButtonRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 325
    const v0, 0x2080006

    .line 326
    .local v0, resId:I
    if-nez p0, :cond_0

    .line 329
    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    const-string v1, "common_b_button_rest"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method
