.class public final Landroid/webkit/WebViewClassic;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewProvider;
.implements Landroid/webkit/WebViewProvider$ScrollDelegate;
.implements Landroid/webkit/WebViewProvider$ViewDelegate;
.implements Landroid/webkit/HtcWebViewAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewClassic$WrapActions;,
        Landroid/webkit/WebViewClassic$AnchorTouchListener;,
        Landroid/webkit/WebViewClassic$InnerScrollChangedListener;,
        Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;,
        Landroid/webkit/WebViewClassic$SelectionHandler;,
        Landroid/webkit/WebViewClassic$AutoScrollerWrapper;,
        Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;,
        Landroid/webkit/WebViewClassic$InvokeListBox;,
        Landroid/webkit/WebViewClassic$PageSwapDelegate;,
        Landroid/webkit/WebViewClassic$FocusTransitionDrawable;,
        Landroid/webkit/WebViewClassic$PrivateHandler;,
        Landroid/webkit/WebViewClassic$RequestFormData;,
        Landroid/webkit/WebViewClassic$SelectionHandleAlpha;,
        Landroid/webkit/WebViewClassic$ViewSizeData;,
        Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;,
        Landroid/webkit/WebViewClassic$DestroyNativeRunnable;,
        Landroid/webkit/WebViewClassic$TitleBarDelegate;,
        Landroid/webkit/WebViewClassic$PackageListener;,
        Landroid/webkit/WebViewClassic$ProxyReceiver;,
        Landroid/webkit/WebViewClassic$TrustStorageListener;,
        Landroid/webkit/WebViewClassic$Factory;,
        Landroid/webkit/WebViewClassic$FocusNodeHref;,
        Landroid/webkit/WebViewClassic$OnTrimMemoryListener;,
        Landroid/webkit/WebViewClassic$PastePopupWindow;,
        Landroid/webkit/WebViewClassic$WebViewInputConnection;
    }
.end annotation


# static fields
.field private static final ANGLE_HORIZ:F = 0.0f

.field private static final ANGLE_VERT:F = 2.0f

.field static final AUTOFILL_COMPLETE:I = 0x86

.field static final AUTOFILL_FORM:I = 0x94

.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final CARET_HANDLE_STAMINA_MS:J = 0xbb8L

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CHECK_MEMORY:I = 0x124

.field static final CLEAR_CARET_HANDLE:I = 0x90

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field static final COMMIT_TEXT:I = 0xb5

.field static final COMPOSING_TEXT:I = 0xb4

.field static final COPY_TO_CLIPBOARD:I = 0x8d

.field private static final CURRENT_CID:Ljava/lang/String; = null

.field private static final DEBUG_TOUCH_HIGHLIGHT:Z = true

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x3d4

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAG_LAYER_FINGER_DISTANCE:I = 0x4e20

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x2

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x1

.field private static final EDIT_RECT_BUFFER:I = 0xa

.field static final EDIT_TEXT_SIZE_CHANGED:I = 0x96

.field static final ENTER_FULLSCREEN_VIDEO:I = 0x89

.field static final EXIT_FULLSCREEN_VIDEO:I = 0x8c

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FOCUS_NODE_CHANGED:I = 0x93

.field static final HANDLE_ID_LEFT:I = 0x0

.field static final HANDLE_ID_RIGHT:I = 0x1

.field static final HIDE_FULLSCREEN:I = 0x79

.field static HIGHLIGHT_COLOR:I = 0x0

.field static final HIT_TEST_RESULT:I = 0x83

.field private static final HSLOPE_TO_BREAK_SNAP:F = 0.4f

.field private static final HSLOPE_TO_START_SNAP:F = 0.25f

#the value of this static final field might be set in the static constructor
.field private static final HTC_DEBUG:Z = false

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field static final INIT_EDIT_FIELD:I = 0x8e

.field private static INPUT_DEBUG:Z = false

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field static final KEY_PRESS:I = 0x91

.field private static final LAST_PACKAGE_MSG_ID:I = 0x83

.field private static final LAST_PRIVATE_MSG_ID:I = 0xb

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MINIMUM_VELOCITY_RATIO_FOR_ACCELERATION:F = 0.2f

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MMA_WEIGHT_N:F = 5.0f

.field static final MODIFY_SELECTION:I = 0x12e

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field static final NO_LEFTEDGE:I = -0x1

.field public static final OVER_SCROLL_NOTE_CUSTOMIZED:I = 0x6

.field public static final OVER_SCROLL_WEBVIEW_CUSTOMIZED:I = 0x5

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final POTENTIAL_LONG_PRESS:I = 0xc

#the value of this static final field might be set in the static constructor
.field private static final POTENTIAL_LONG_PRESS_TIMEOUT:I = 0x0

.field private static final PREFS_NAME:Ljava/lang/String; = "KIKIN_DISABLED_STATE"

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field static final PREVENT_TOUCH_ID:I = 0x73

.field static final RELEASE_BENCHMARK_WAKELOCK:I = 0x123

.field static final RELEASE_PERFORMANCE_WAKELOCK:I = 0x122

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field static final RELOCATE_AUTO_COMPLETE_POPUP:I = 0x92

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REPLACE_TEXT:I = 0x8f

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final RETURN_SELECTION_EXTRACT:I = 0x131

.field private static final SAFE_DESTROY:I = 0xd

.field static final SAVE_WEBARCHIVE_FINISHED:I = 0x84

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field static final SCREEN_ON:I = 0x88

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field private static final SCROLL_BITS:I = 0x6

.field static final SCROLL_EDIT_TEXT:I = 0x95

.field private static final SCROLL_SELECT_TEXT:I = 0xb

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_STRING_CHANGED:I = 0x82

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field private static final SELECT_SCROLL:I = 0x5

.field private static final SELECT_SCROLL_INTERVAL:J = 0x10L

.field static final SET_AUTOFILLABLE:I = 0x85

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_CARET_HANDLE:I = 0x97

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final TAKE_FOCUS:I = 0x6e

.field private static final TAP_TIMEOUT:I = 0x12c

.field private static final TEXT_SCROLL_FIRST_SCROLL_MS:J = 0x10L

.field private static final TEXT_SCROLL_RATE:F = 0.01f

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_LAYER_MODE:I = 0x9

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_DRAG_TEXT_MODE:I = 0xa

.field private static final TOUCH_HIGHLIGHT_ELAPSE_TIME:I = 0x7d0

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x0

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_CONTENT_BOUNDS:I = 0x98

.field static final UPDATE_MATCH_COUNT:I = 0x7e

.field static final UPDATE_SELECTED_TEXT_IN_CAB:I = 0x132

.field static final UPDATE_SELECTION_AND_CARET:I = 0xb6

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_ZOOM_DENSITY:I = 0x8b

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field private static final VSLOPE_TO_BREAK_SNAP:F = 0.95f

.field private static final VSLOPE_TO_START_SNAP:F = 1.25f

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field private static final ZOOM_BITS:I = 0x86

.field protected static mBottomOverScrollEnabled:Z

.field static mLogEvent:Z

.field private static mNetworkSubType:Ljava/lang/String;

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field protected static mOverscrollMode:I

.field protected static mTopOverScrollEnabled:Z

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sMaxViewportWidth:I

.field private static sNotificationsEnabled:Z

.field private static sPackageInstallationReceiverAdded:Z

.field private static sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

.field private static sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

.field public static useAutoPerf:Z


# instance fields
.field public AUTO_PERF_BACK_KEY:I

.field public AUTO_PERF_CASE:I

.field public AUTO_PERF_LAUNCH:I

.field public AUTO_PERF_RELOAD_BTN:I

.field public AUTO_PERF_TAP_LINK:I

.field private DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

.field private IS_KIKIN_ENABLED:Z

.field private LONG_PRESS_TIMEOUT:I

.field private final MAGNIFY_HEIGHT:I

.field MAGNIFY_HEIGHT_DIP:I

.field private final MAGNIFY_OFFSET:I

.field private MAGNIFY_OFFSET_DIP:I

.field private final MAGNIFY_WIDTH:I

.field MAGNIFY_WIDTH_DIP:I

.field private NAV_SLOP:I

.field private final POSITION_MAGNIFY_HEIGHT:I

.field private POSITION_MAGNIFY_HEIGHT_DIP:I

.field private final POSITION_MAGNIFY_WIDTH:I

.field private POSITION_MAGNIFY_WIDTH_DIP:I

.field canUpdateHandler:Z

.field private existPendingScrollFromNative:Z

.field private htcWebCore:Landroid/webkit/HTCWebCore;

.field public isAfterSizeChanged:Z

.field public isFirstFramePinchZoom:Z

.field public isFirstFrameTapZoom:Z

.field public isForceNoTextwrap:Z

.field private mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

.field private mAllowTextSelectionOnDragging:Z

.field mAnchorTouchListener:Landroid/webkit/WebViewClassic$AnchorTouchListener;

.field private mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

.field private mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

.field private mAutoRedraw:Z

.field private mAutoScrollX:I

.field private mAutoScrollY:I

.field mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

.field private mAverageAngle:F

.field mAverageSwapFps:D

.field private mBackgroundColor:I

.field mBatchedTextChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockWebkitViewMessages:Z

.field private mCachedOverlappingActionModeHeight:I

.field private mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCanShowKikinDisabledToast:Z

.field private mCanShowPost:Z

.field private mCanShowPrior:Z

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field public mContentDrawCnt:I

.field private mContentHeight:I

.field private mContentHeightBeforeCAB:F

.field private mContentWidth:I

.field private mContentWidthBeforeCAB:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentScrollingLayerId:I

.field private mCurrentTouchInterval:I

.field private mDatabase:Landroid/webkit/WebViewDatabaseClassic;

.field private mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mDoubleTapSlopSquare:I

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field mEditTextContent:Landroid/graphics/Rect;

.field mEditTextContentBounds:Landroid/graphics/Rect;

.field mEditTextLayerId:I

.field mEditTextScroller:Landroid/widget/Scroller;

.field private mEnableAnchorAnimation:Z

.field private mFieldPointer:I

.field private mFindCallback:Landroid/webkit/FindActionModeCallback;

.field private mFindIsUp:Z

.field private mFindListener:Landroid/webkit/WebView$FindListener;

.field private mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

.field private mFlingPointsPerSec:I

.field private mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

.field private mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mGotCenterDown:Z

.field private mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

.field private mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

.field private mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mHardwareAccelSkia:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHiTestResultType:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mInOverScrollMode:Z

.field private mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

.field mInitialScale:F

.field private mInitialScaleInPercent:I

.field mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

.field private mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

.field private final mInvScreenRect:Landroid/graphics/Rect;

.field mIsBatchingTextChanges:Z

.field private mIsCaretSelection:Z

.field private mIsClickOnHyperlinkChecked:Z

.field private mIsContextMenuOpen:Z

.field mIsEditingText:Z

.field private mIsPaused:Z

.field private mIsPotentialLongPress:Z

.field private mIsShowMagnifying:Z

.field private mIsWebViewVisible:Z

.field private mKeysPressed:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

.field mKikinSelectionRegion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mLastActualHeightSent:I

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastEditScroll:J

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field mLastSwapTime:J

.field private mLastTouchRawX:I

.field private mLastTouchRawY:I

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field mLayoutChangedListener:Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;

.field private mListBoxDialog:Landroid/app/AlertDialog;

.field private mListBoxMessage:Landroid/os/Message;

.field private mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private mMapTrackballToArrowKeys:Z

.field private mMaxAutoScrollX:I

.field private mMaxAutoScrollY:I

.field private mMaximumFling:I

.field private mMinAutoScrollX:I

.field private mMinAutoScrollY:I

.field private mNativeClass:I

.field private mNavSlop:I

.field private mOrientation:I

.field private mOverScrollGlow:Landroid/webkit/OverScrollGlow;

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDistance:I

.field private mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

.field private mPendingScrollX:I

.field private mPendingScrollY:I

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPictureUpdatePausedForFocusChange:Z

.field mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

.field mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

.field final mPrivateHandler:Landroid/os/Handler;

.field private mPureZoomMode:Z

.field private mQuickActionAdapter:Landroid/webkit/QuickActionAdapter;

.field private mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

.field private mResumeMsg:Landroid/os/Message;

.field public mScaleInPinchBegin:F

.field private final mScreenRect:Landroid/graphics/Rect;

.field mScrollChangedListener:Landroid/webkit/WebViewClassic$InnerScrollChangedListener;

.field private final mScrollFilter:Landroid/graphics/DrawFilter;

.field private mScrollOffset:Landroid/graphics/Point;

.field private mScrollYDelta:F

.field mScroller:Landroid/webkit/HTCScroller;

.field private mScrollingLayerBounds:Landroid/graphics/Rect;

.field private mScrollingLayerRect:Landroid/graphics/Rect;

.field private mSelectCallback:Landroid/webkit/SelectionCallback;

.field private mSelectCursorLeft:Landroid/graphics/Point;

.field private mSelectCursorLeftLayerId:I

.field private mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

.field private mSelectCursorRight:Landroid/graphics/Point;

.field private mSelectCursorRightLayerId:I

.field private mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

.field private mSelectDraggingCursor:Landroid/graphics/Point;

.field private mSelectDraggingOffset:Landroid/graphics/Point;

.field private mSelectDraggingTextQuad:Landroid/webkit/QuadF;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleCenterOffset:Landroid/graphics/Point;

.field private mSelectHandleCenterRect:Landroid/graphics/Rect;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeftOffset:Landroid/graphics/Point;

.field private mSelectHandleLeftRect:Landroid/graphics/Rect;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRightOffset:Landroid/graphics/Point;

.field private mSelectHandleRightRect:Landroid/graphics/Rect;

.field private mSelectLeftCaretHeight:I

.field private mSelectRightCaretHeight:I

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field protected mSelection:Landroid/webkit/WebViewSelectionMethod;

.field private mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

.field private mSelectionStarted:Z

.field private mSelectionTracker:Ljava/lang/String;

.field mSelectionUIType:I

.field private mSendScrollEvent:Z

.field private mSentAutoScrollMessage:Z

.field private mShouldHideSip:Z

.field private mShouldOpenContextMenuForSavingImages:Z

.field private mShouldPerformKikinSearch:Z

.field private mShouldResetLastSelection:Z

.field private mShowRectScale:F

.field private mShowTapHighlight:Z

.field private mShowTextSelectionExtra:Z

.field private mSingleTapQuickActions:Landroid/webkit/SingleTapQuickActions;

.field private mSlowNetwork:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mStartTouchX:I

.field private mStartTouchY:I

.field private final mTempContentVisibleRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;

.field private final mTempVisibleRectOffset:Landroid/graphics/Point;

.field private mTextGeneration:I

.field private mTouchCrossHairColor:Landroid/graphics/Paint;

.field private mTouchHighlightRegion:Landroid/graphics/Region;

.field private mTouchHighlightX:I

.field private mTouchHighlightY:I

.field private mTouchHightlightPaint:Landroid/graphics/Paint;

.field private mTouchInEditText:Z

.field private mTouchMode:I

.field private mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field mViewManager:Landroid/webkit/ViewManager;

.field private final mVisibleContentRect:Landroid/graphics/RectF;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private final mWebView:Landroid/webkit/WebView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private final mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private final mZoomFilter:Landroid/graphics/DrawFilter;

.field private mZoomManager:Landroid/webkit/ZoomManager;

.field private m_bIsBrowserApp:Z

.field m_bIsNoteApp:Z

.field magnifier:Landroid/webkit/MagnifyView;

.field magnifierAnchor:Landroid/graphics/Rect;

.field ownerActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private skipMove:Z

.field public useContentDraw:Z

.field public useCustomScale:Z

.field public useFirstDrag:Z

.field public useFocusedNode:Z

.field public usePinchZoom:Z

.field private usePopupAnchor:Z

.field public useTapZoom:Z

.field private zoomSizePx:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v2, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    .line 198
    sput-boolean v1, Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z

    .line 1321
    const v2, 0x6633b5e5

    sput v2, Landroid/webkit/WebViewClassic;->HIGHLIGHT_COLOR:I

    .line 1447
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "REMEMBER_PASSWORD"

    aput-object v3, v2, v1

    const-string v3, "NEVER_REMEMBER_PASSWORD"

    aput-object v3, v2, v0

    const-string v3, "SWITCH_TO_SHORTPRESS"

    aput-object v3, v2, v5

    const-string v3, "SWITCH_TO_LONGPRESS"

    aput-object v3, v2, v6

    const-string v3, "RELEASE_SINGLE_TAP"

    aput-object v3, v2, v7

    const/4 v3, 0x5

    const-string v4, "REQUEST_FORM_DATA"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "RESUME_WEBCORE_PRIORITY"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DRAG_HELD_MOTIONLESS"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "SCROLL_SELECT_TEXT"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "POTENTIAL_LONG_PRESS"

    aput-object v4, v2, v3

    sput-object v2, Landroid/webkit/WebViewClassic;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 1467
    const/16 v2, 0x29

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SCROLL_TO_MSG_ID"

    aput-object v3, v2, v1

    const-string v3, "102"

    aput-object v3, v2, v0

    const-string v3, "103"

    aput-object v3, v2, v5

    const-string v3, "104"

    aput-object v3, v2, v6

    const-string v3, "NEW_PICTURE_MSG_ID"

    aput-object v3, v2, v7

    const/4 v3, 0x5

    const-string v4, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "UPDATE_ZOOM_RANGE"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "UNHANDLED_NAV_KEY"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "CLEAR_TEXT_ENTRY"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "SHOW_RECT_MSG_ID"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "LONG_PRESS_CENTER"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "PREVENT_TOUCH_ID"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "INVAL_RECT_MSG_ID"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "REQUEST_KEYBOARD"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "DO_MOTION_UP"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "SHOW_FULLSCREEN"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "HIDE_FULLSCREEN"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "DOM_FOCUS_CHANGED"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "REPLACE_BASE_CONTENT"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "RETURN_LABEL"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "UPDATE_MATCH_COUNT"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "CENTER_FIT_RECT"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "SET_SCROLLBAR_MODES"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "SELECTION_STRING_CHANGED"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "SET_TOUCH_HIGHLIGHT_RECTS"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "SAVE_WEBARCHIVE_FINISHED"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "SET_AUTOFILLABLE"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "AUTOFILL_COMPLETE"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "SELECT_AT"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "SCREEN_ON"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "ENTER_FULLSCREEN_VIDEO"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "UPDATE_SELECTION"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "UPDATE_ZOOM_DENSITY"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "MODIFY_SELECTION"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "RETURN_SELECTION_EXTRACT"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "UPDATE_SELECTED_TEXT_IN_CAB"

    aput-object v4, v2, v3

    sput-object v2, Landroid/webkit/WebViewClassic;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 1525
    const/16 v2, 0x3d4

    sput v2, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    .line 1571
    sput-boolean v0, Landroid/webkit/WebViewClassic;->mLogEvent:Z

    .line 1578
    sput-boolean v0, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z

    .line 2002
    sput-boolean v1, Landroid/webkit/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    .line 2011
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Landroid/webkit/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    .line 2012
    sget-object v2, Landroid/webkit/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    const-string v3, "com.google.android.youtube"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5447
    const-string/jumbo v2, "ro.cid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewClassic;->CURRENT_CID:Ljava/lang/String;

    .line 5449
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    sput v2, Landroid/webkit/WebViewClassic;->POTENTIAL_LONG_PRESS_TIMEOUT:I

    .line 8365
    sput-boolean v1, Landroid/webkit/WebViewClassic;->mTopOverScrollEnabled:Z

    .line 8366
    sput-boolean v1, Landroid/webkit/WebViewClassic;->mBottomOverScrollEnabled:Z

    .line 8367
    const/4 v2, -0x1

    sput v2, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    .line 12241
    const-string/jumbo v2, "profiler.performance"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)V
    .locals 9
    .parameter "webView"
    .parameter "privateAccess"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    .line 1034
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    .line 1035
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    .line 1036
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    .line 1037
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    .line 1038
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 1042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    .line 1043
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    .line 1045
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    .line 1047
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    .line 1048
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 1101
    new-instance v0, Landroid/webkit/WebViewClassic$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$PrivateHandler;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    .line 1152
    iput v3, p0, Landroid/webkit/WebViewClassic;->mCurrentTouchInterval:I

    .line 1165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    .line 1176
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 1193
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 1228
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/webkit/WebViewClassic;->LONG_PRESS_TIMEOUT:I

    .line 1259
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    .line 1260
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    .line 1275
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 1298
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftRect:Landroid/graphics/Rect;

    .line 1299
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRightRect:Landroid/graphics/Rect;

    .line 1300
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenterRect:Landroid/graphics/Rect;

    .line 1301
    iput v3, p0, Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I

    .line 1302
    iput v3, p0, Landroid/webkit/WebViewClassic;->mSelectRightCaretHeight:I

    .line 1307
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    .line 1309
    new-instance v0, Landroid/webkit/QuadF;

    invoke-direct {v0}, Landroid/webkit/QuadF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    .line 1310
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    .line 1312
    new-instance v0, Landroid/webkit/QuadF;

    invoke-direct {v0}, Landroid/webkit/QuadF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    .line 1323
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    .line 1325
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    .line 1339
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    .line 1342
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    .line 1345
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mEnableAnchorAnimation:Z

    .line 1346
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mShouldHideSip:Z

    .line 1348
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->m_bIsNoteApp:Z

    .line 1528
    iput v3, p0, Landroid/webkit/WebViewClassic;->mInitialScaleInPercent:I

    .line 1532
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    .line 1534
    iput v3, p0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 1551
    iput v3, p0, Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I

    .line 1552
    iput v3, p0, Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I

    .line 1574
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    .line 1593
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    .line 1596
    iput v3, p0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    .line 1597
    iput v3, p0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    .line 1598
    iput v3, p0, Landroid/webkit/WebViewClassic;->mMinAutoScrollX:I

    .line 1599
    iput v3, p0, Landroid/webkit/WebViewClassic;->mMaxAutoScrollX:I

    .line 1600
    iput v3, p0, Landroid/webkit/WebViewClassic;->mMinAutoScrollY:I

    .line 1601
    iput v3, p0, Landroid/webkit/WebViewClassic;->mMaxAutoScrollY:I

    .line 1602
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerBounds:Landroid/graphics/Rect;

    .line 1603
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    .line 1609
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    .line 2477
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 3711
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3712
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    .line 3713
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    .line 3714
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 3715
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    .line 3785
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 3805
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    .line 4371
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    .line 4652
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->isForceNoTextwrap:Z

    .line 5425
    const/16 v0, 0x10

    iput v0, p0, Landroid/webkit/WebViewClassic;->NAV_SLOP:I

    .line 5427
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsShowMagnifying:Z

    .line 5446
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    .line 5455
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsPotentialLongPress:Z

    .line 5458
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mShouldResetLastSelection:Z

    .line 5461
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    .line 5464
    iput v6, p0, Landroid/webkit/WebViewClassic;->zoomSizePx:F

    .line 5470
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mShouldPerformKikinSearch:Z

    .line 5473
    iput v3, p0, Landroid/webkit/WebViewClassic;->mHiTestResultType:I

    .line 5479
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 5482
    iput v6, p0, Landroid/webkit/WebViewClassic;->mContentHeightBeforeCAB:F

    .line 5485
    iput v6, p0, Landroid/webkit/WebViewClassic;->mContentWidthBeforeCAB:F

    .line 5488
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 5491
    iput v3, p0, Landroid/webkit/WebViewClassic;->mLastTouchRawX:I

    .line 5492
    iput v3, p0, Landroid/webkit/WebViewClassic;->mLastTouchRawY:I

    .line 5495
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/WebViewClassic;->mInitialScale:F

    .line 5498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    .line 5507
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mCanShowKikinDisabledToast:Z

    .line 5510
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectionTracker:Ljava/lang/String;

    .line 6030
    iput v3, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    .line 6155
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 6158
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 6350
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    .line 6351
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    .line 6352
    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryWidth:I

    .line 6353
    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryHeight:I

    .line 6608
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    .line 7452
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    .line 7453
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 8737
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mTrackballFirstTime:J

    .line 8738
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    .line 8739
    iput v6, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    .line 8740
    iput v6, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    .line 8741
    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    .line 8742
    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    .line 8743
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    .line 8744
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 8745
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 8755
    iput v3, p0, Landroid/webkit/WebViewClassic;->mSelectX:I

    .line 8756
    iput v3, p0, Landroid/webkit/WebViewClassic;->mSelectY:I

    .line 8757
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    .line 8758
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mTrackballUpTime:J

    .line 8759
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mLastCursorTime:J

    .line 8761
    new-instance v0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-direct {v0, p0, v4}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    .line 8762
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    const-string v1, "alpha"

    new-array v2, v5, [I

    aput v3, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 8768
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mMapTrackballToArrowKeys:Z

    .line 9008
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/webkit/WebViewClassic;->mFlingPointsPerSec:I

    .line 10188
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    .line 10318
    iput v3, p0, Landroid/webkit/WebViewClassic;->mContentDrawCnt:I

    .line 10319
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->useContentDraw:Z

    .line 10381
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mPendingScrollX:I

    .line 10382
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mPendingScrollY:I

    .line 10383
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/WebViewClassic;->mShowRectScale:F

    .line 10384
    iput v6, p0, Landroid/webkit/WebViewClassic;->mScrollYDelta:F

    .line 10386
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->existPendingScrollFromNative:Z

    .line 11462
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mPureZoomMode:Z

    .line 12092
    new-instance v0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    .line 12094
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    .line 12095
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->usePopupAnchor:Z

    .line 12096
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->skipMove:Z

    .line 12100
    new-instance v0, Landroid/webkit/WebViewClassic$SelectionHandler;

    invoke-direct {v0, p0, v4}, Landroid/webkit/WebViewClassic$SelectionHandler;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    .line 12101
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mScrollChangedListener:Landroid/webkit/WebViewClassic$InnerScrollChangedListener;

    .line 12102
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mLayoutChangedListener:Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;

    .line 12106
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mCanShowPrior:Z

    .line 12107
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mCanShowPost:Z

    .line 12110
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    .line 12111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->magnifierAnchor:Landroid/graphics/Rect;

    .line 12113
    const/16 v0, 0x8c

    iput v0, p0, Landroid/webkit/WebViewClassic;->MAGNIFY_WIDTH:I

    .line 12114
    const/16 v0, 0x3c

    iput v0, p0, Landroid/webkit/WebViewClassic;->MAGNIFY_HEIGHT:I

    .line 12115
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/WebViewClassic;->POSITION_MAGNIFY_WIDTH:I

    .line 12116
    const/16 v0, 0x3c

    iput v0, p0, Landroid/webkit/WebViewClassic;->POSITION_MAGNIFY_HEIGHT:I

    .line 12117
    const/16 v0, 0x78

    iput v0, p0, Landroid/webkit/WebViewClassic;->MAGNIFY_OFFSET:I

    .line 12119
    const/16 v0, 0x8c

    iput v0, p0, Landroid/webkit/WebViewClassic;->MAGNIFY_WIDTH_DIP:I

    .line 12120
    const/16 v0, 0x3c

    iput v0, p0, Landroid/webkit/WebViewClassic;->MAGNIFY_HEIGHT_DIP:I

    .line 12121
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/WebViewClassic;->POSITION_MAGNIFY_WIDTH_DIP:I

    .line 12122
    const/16 v0, 0x3c

    iput v0, p0, Landroid/webkit/WebViewClassic;->POSITION_MAGNIFY_HEIGHT_DIP:I

    .line 12123
    const/16 v0, 0x78

    iput v0, p0, Landroid/webkit/WebViewClassic;->MAGNIFY_OFFSET_DIP:I

    .line 12232
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->canUpdateHandler:Z

    .line 12238
    iput-object v4, p0, Landroid/webkit/WebViewClassic;->htcWebCore:Landroid/webkit/HTCWebCore;

    .line 12239
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->m_bIsBrowserApp:Z

    .line 12242
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->useFirstDrag:Z

    .line 12243
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    .line 12244
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    .line 12245
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->useFocusedNode:Z

    .line 12246
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->useCustomScale:Z

    .line 12247
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->isFirstFrameTapZoom:Z

    .line 12248
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->isFirstFramePinchZoom:Z

    .line 12249
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->isAfterSizeChanged:Z

    .line 12250
    iput v6, p0, Landroid/webkit/WebViewClassic;->mScaleInPinchBegin:F

    .line 12251
    iput v3, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    .line 12252
    iput v5, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_BACK_KEY:I

    .line 12253
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_RELOAD_BTN:I

    .line 12254
    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_TAP_LINK:I

    .line 12255
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_LAUNCH:I

    .line 12572
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSlowNetwork:Z

    .line 12631
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsClickOnHyperlinkChecked:Z

    .line 1630
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    .line 1631
    iput-object p2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    .line 1632
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    .line 1637
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 3674
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v0}, Landroid/webkit/HTCScroller;->abortAnimation()V

    .line 3675
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 3676
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    return-void
.end method

.method static synthetic access$10200(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    return v0
.end method

.method static synthetic access$10202(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    return p1
.end method

.method static synthetic access$10300(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mCanShowPrior:Z

    return v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mCanShowPost:Z

    return v0
.end method

.method static synthetic access$10502(Landroid/webkit/WebViewClassic;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    return-object p1
.end method

.method static synthetic access$10600(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateSelectionPopup()V

    return-void
.end method

.method static synthetic access$10802(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$10900(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$11000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$11002(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$11100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$11200(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    return-object v0
.end method

.method static synthetic access$11202(Landroid/webkit/WebViewClassic;Landroid/webkit/QuadF;)Landroid/webkit/QuadF;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    return-object p1
.end method

.method static synthetic access$11300(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    return-object v0
.end method

.method static synthetic access$11400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenterOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$11500(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hidePasteButton()V

    return-void
.end method

.method static synthetic access$11600(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRightOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$11700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$11800(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    return-object v0
.end method

.method static synthetic access$11900(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    return v0
.end method

.method static synthetic access$1200()V
    .locals 0

    .prologue
    .line 192
    invoke-static {}, Landroid/webkit/WebViewClassic;->handleCertTrustChanged()V

    return-void
.end method

.method static synthetic access$12000(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->beginScrollEdit()V

    return-void
.end method

.method static synthetic access$12100(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    return-void
.end method

.method static synthetic access$12200(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    return-void
.end method

.method static synthetic access$12300(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->snapDraggingCursor()V

    return-void
.end method

.method static synthetic access$12402(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    return p1
.end method

.method static synthetic access$12502(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    return p1
.end method

.method static synthetic access$12600(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    return v0
.end method

.method static synthetic access$12700(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    return v0
.end method

.method static synthetic access$12800(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->performKikinSearchOnChangedSelection()V

    return-void
.end method

.method static synthetic access$12900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewClassic$SelectionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-static {p0}, Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600()Ljava/util/Set;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Landroid/webkit/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewClassic;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$200(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->beginTextBatch()V

    return-void
.end method

.method static synthetic access$2000(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-static {p0}, Landroid/webkit/WebViewClassic;->nativeDestroy(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewClassic;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/webkit/WebViewClassic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->performKikinSearch(Z)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewClassic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectionTracker:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->commitTextBatch()V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    return v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    return v0
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    return v0
.end method

.method static synthetic access$3602(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    return p1
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    return v0
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewClassic;IIZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z

    return v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewClassic;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V

    return-void
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewClassic;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewClassic;ILjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mFlingPointsPerSec:I

    return v0
.end method

.method static synthetic access$4402(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mFlingPointsPerSec:I

    return p1
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    return v0
.end method

.method static synthetic access$4900(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-static {p0, p1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    return v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    return-object v0
.end method

.method static synthetic access$5002(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewInputDispatcher;)Landroid/webkit/WebViewInputDispatcher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    return-object p1
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$5102(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    return p1
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewClassic;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$5402(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$5502(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$5600(Landroid/webkit/WebViewClassic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$5702(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V

    return-void
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewClassic;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Landroid/webkit/WebViewClassic;->mShowRectScale:F

    return v0
.end method

.method static synthetic access$6102(Landroid/webkit/WebViewClassic;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mShowRectScale:F

    return p1
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method static synthetic access$6302(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mPendingScrollX:I

    return p1
.end method

.method static synthetic access$6402(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mPendingScrollY:I

    return p1
.end method

.method static synthetic access$6502(Landroid/webkit/WebViewClassic;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mScrollYDelta:F

    return p1
.end method

.method static synthetic access$6602(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$6702(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput p1, p0, Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewClassic;)Landroid/webkit/AccessibilityInjector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$7002(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)Landroid/webkit/WebViewCore$WebKitHitTest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    return-object p1
.end method

.method static synthetic access$7100(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(IILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 192
    invoke-static {p0, p1, p2}, Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V

    return-void
.end method

.method static synthetic access$7600(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    return-object v0
.end method

.method static synthetic access$7800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionAdapter:Landroid/webkit/QuickActionAdapter;

    return-object v0
.end method

.method static synthetic access$7902(Landroid/webkit/WebViewClassic;Landroid/webkit/QuickActionAdapter;)Landroid/webkit/QuickActionAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mQuickActionAdapter:Landroid/webkit/QuickActionAdapter;

    return-object p1
.end method

.method static synthetic access$800(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    return-object v0
.end method

.method static synthetic access$8100(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetCaretTimer()V

    return-void
.end method

.method static synthetic access$8300(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->showPasteWindow()V

    return-void
.end method

.method static synthetic access$8400(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    return v0
.end method

.method static synthetic access$8600(Landroid/webkit/WebViewClassic;Ljava/util/List;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic;->modifySelection(Ljava/util/List;ZZZ)V

    return-void
.end method

.method static synthetic access$8702(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mIsPotentialLongPress:Z

    return p1
.end method

.method static synthetic access$8800(Landroid/webkit/WebViewClassic;Landroid/view/MotionEvent;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method static synthetic access$8900(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z

    return v0
.end method

.method static synthetic access$8902(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9002(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mIsClickOnHyperlinkChecked:Z

    return p1
.end method

.method static synthetic access$9100(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsShowMagnifying:Z

    return v0
.end method

.method static synthetic access$9200(Landroid/webkit/WebViewClassic;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    return-object v0
.end method

.method static synthetic access$9302(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$FocusTransitionDrawable;)Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    return-object p1
.end method

.method static synthetic access$9700(Landroid/webkit/WebViewClassic;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$9702(Landroid/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$9802(Landroid/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    return-object p1
.end method

.method private adjustSelectionCursors()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 6950
    iget-boolean v12, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v12, :cond_0

    .line 6951
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 6979
    :goto_0
    return-void

    .line 6955
    :cond_0
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget-object v13, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    if-ne v12, v13, :cond_4

    move v9, v10

    .line 6956
    .local v9, wasDraggingLeft:Z
    :goto_1
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v6, v12, Landroid/graphics/Point;->x:I

    .line 6957
    .local v6, oldX:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v7, v12, Landroid/graphics/Point;->y:I

    .line 6958
    .local v7, oldY:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v2, v12, Landroid/graphics/Point;->x:I

    .line 6959
    .local v2, oldLeftX:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v3, v12, Landroid/graphics/Point;->y:I

    .line 6960
    .local v3, oldLeftY:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v4, v12, Landroid/graphics/Point;->x:I

    .line 6961
    .local v4, oldRightX:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v5, v12, Landroid/graphics/Point;->y:I

    .line 6962
    .local v5, oldRightY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 6964
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    if-ne v4, v12, :cond_1

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    if-eq v5, v12, :cond_5

    :cond_1
    move v8, v10

    .line 6966
    .local v8, rightChanged:Z
    :goto_2
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    if-ne v2, v12, :cond_2

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    if-eq v3, v12, :cond_6

    :cond_2
    move v1, v10

    .line 6968
    .local v1, leftChanged:Z
    :goto_3
    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    .line 6970
    if-nez v9, :cond_7

    move v0, v10

    .line 6971
    .local v0, draggingLeft:Z
    :goto_4
    if-eqz v0, :cond_8

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    :goto_5
    iput-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 6973
    if-eqz v0, :cond_9

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    :goto_6
    iput-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    .line 6975
    if-eqz v0, :cond_a

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftOffset:Landroid/graphics/Point;

    :goto_7
    iput-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    .line 6978
    .end local v0           #draggingLeft:Z
    :cond_3
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .end local v1           #leftChanged:Z
    .end local v2           #oldLeftX:I
    .end local v3           #oldLeftY:I
    .end local v4           #oldRightX:I
    .end local v5           #oldRightY:I
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v8           #rightChanged:Z
    .end local v9           #wasDraggingLeft:Z
    :cond_4
    move v9, v11

    .line 6955
    goto :goto_1

    .restart local v2       #oldLeftX:I
    .restart local v3       #oldLeftY:I
    .restart local v4       #oldRightX:I
    .restart local v5       #oldRightY:I
    .restart local v6       #oldX:I
    .restart local v7       #oldY:I
    .restart local v9       #wasDraggingLeft:Z
    :cond_5
    move v8, v11

    .line 6964
    goto :goto_2

    .restart local v8       #rightChanged:Z
    :cond_6
    move v1, v11

    .line 6966
    goto :goto_3

    .restart local v1       #leftChanged:Z
    :cond_7
    move v0, v11

    .line 6970
    goto :goto_4

    .line 6971
    .restart local v0       #draggingLeft:Z
    :cond_8
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    goto :goto_5

    .line 6973
    :cond_9
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    goto :goto_6

    .line 6975
    :cond_a
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRightOffset:Landroid/graphics/Point;

    goto :goto_7
.end method

.method private beginScrollEdit()V
    .locals 4

    .prologue
    .line 8390
    iget-wide v0, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 8391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 8393
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V

    .line 8395
    :cond_0
    return-void
.end method

.method private beginTextBatch()V
    .locals 1

    .prologue
    .line 10660
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    .line 10661
    return-void
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3794
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3795
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3800
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3801
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3802
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3803
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 3811
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3812
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 3813
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3788
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 3789
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3790
    return-void
.end method

.method private calculateCaretTop()Landroid/graphics/Point;
    .locals 7

    .prologue
    .line 6912
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/WebViewClassic;->scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 6914
    .local v0, scale:F
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v3, v3, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v4, v4, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v3, v4}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 6916
    .local v1, x:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v3, v3, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v4, v4, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 6918
    .local v2, y:I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private calculateDragAngle(II)F
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 7809
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 7810
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 7811
    int-to-double v0, p2

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private canTextScroll(II)Z
    .locals 8
    .parameter "directionX"
    .parameter "directionY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9448
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v4

    .line 9449
    .local v4, scrollX:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v5

    .line 9450
    .local v5, scrollY:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v2

    .line 9451
    .local v2, maxScrollX:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v3

    .line 9452
    .local v3, maxScrollY:I
    if-lez p1, :cond_3

    if-ge v4, v2, :cond_2

    move v0, v7

    .line 9455
    .local v0, canScrollX:Z
    :goto_0
    if-lez p2, :cond_6

    if-ge v5, v3, :cond_5

    move v1, v7

    .line 9458
    .local v1, canScrollY:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v6, v7

    :cond_1
    return v6

    .end local v0           #canScrollX:Z
    .end local v1           #canScrollY:Z
    :cond_2
    move v0, v6

    .line 9452
    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_0

    .restart local v0       #canScrollX:Z
    :cond_5
    move v1, v6

    .line 9455
    goto :goto_1

    :cond_6
    if-lez v5, :cond_7

    move v1, v7

    goto :goto_1

    :cond_7
    move v1, v6

    goto :goto_1
.end method

.method private cancelSelectDialog()V
    .locals 1

    .prologue
    .line 2599
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2600
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 2601
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    .line 2603
    :cond_0
    return-void
.end method

.method private cancelTouch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 8626
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 8627
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8628
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8638
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_1

    .line 8639
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->performKikinSearchOnChangedSelection()V

    .line 8644
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_3

    .line 8646
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 8647
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8648
    invoke-direct {p0, v3}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 8650
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0, v2}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 8651
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v3}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 8655
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8656
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8659
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_4

    .line 8660
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8663
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8664
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 8665
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 8666
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 8668
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->stopScroll()V

    .line 8670
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->usePopupAnchor:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8673
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 8675
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebViewClassic;->showQuickAction(J)V

    .line 8676
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    const/16 v1, 0x54e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendEmptyMessage(I)Z

    .line 8679
    :cond_5
    return-void
.end method

.method private clearActionModes()V
    .locals 2

    .prologue
    .line 2561
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    if-eqz v0, :cond_1

    .line 2567
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hasValidSelectionRectangle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2568
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    check-cast v0, Landroid/webkit/SelectActionModeCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/SelectActionModeCallback;->setShouldKillKikinResultsContainer(Z)V

    .line 2573
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-interface {v0}, Landroid/webkit/SelectionCallback;->finish()V

    .line 2575
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-eqz v0, :cond_2

    .line 2576
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->finish()V

    .line 2578
    :cond_2
    return-void
.end method

.method private clearHelpers()V
    .locals 1

    .prologue
    .line 2587
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShouldHideSip:Z

    if-eqz v0, :cond_0

    .line 2588
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V

    .line 2590
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShouldHideSip:Z

    .line 2593
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearActionModes()V

    .line 2594
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V

    .line 2595
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->cancelSelectDialog()V

    .line 2596
    return-void
.end method

.method private commitTextBatch()V
    .locals 2

    .prologue
    .line 10664
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 10665
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessages(Ljava/util/ArrayList;)V

    .line 10667
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10668
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    .line 10669
    return-void
.end method

.method private static computeDuration(II)I
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 4588
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4589
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 4590
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 3922
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3923
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHistoryWidth:I

    .line 3926
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    .prologue
    .line 3960
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3961
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHistoryHeight:I

    .line 3964
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentScrollTo(IIZ)V
    .locals 4
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    .line 4755
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4767
    :cond_0
    :goto_0
    return-void

    .line 4764
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v0

    .line 4765
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v1

    .line 4766
    .local v1, vy:I
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p3, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method private contentSizeChanged(Z)V
    .locals 2
    .parameter "updateLayout"

    .prologue
    .line 4777
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4796
    :cond_0
    :goto_0
    return-void

    .line 4781
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    .line 4782
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 4784
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4786
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    .line 4787
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    .line 4789
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4794
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    goto :goto_0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 3626
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "text"
    .parameter "html"

    .prologue
    .line 11146
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 11149
    .local v1, cm:Landroid/content/ClipboardManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11150
    .local v3, title:Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-static {v3, p1, p2}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v0

    .line 11151
    .local v0, clip:Landroid/content/ClipData;
    :goto_0
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 11152
    .local v2, oldtext:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 11153
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 11154
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const v5, 0x104039b

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 11159
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 11160
    return-void

    .line 11150
    .end local v0           #clip:Landroid/content/ClipData;
    .end local v2           #oldtext:Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    goto :goto_0
.end method

.method private destroyJava()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2651
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->blockMessages()V

    .line 2652
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 2653
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2654
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2655
    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    .line 2657
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_1

    .line 2659
    monitor-enter p0

    .line 2660
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 2661
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 2662
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 2663
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2665
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2667
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_1
    return-void

    .line 2663
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private destroyNative()V
    .locals 3

    .prologue
    .line 2670
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_0

    .line 2679
    :goto_0
    return-void

    .line 2671
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    .line 2672
    .local v0, nptr:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    .line 2673
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2675
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->nativeDestroy(I)V

    goto :goto_0

    .line 2677
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;

    invoke-direct {v2, v0}, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2715
    const-class v2, Landroid/webkit/WebViewClassic;

    monitor-enter v2

    .line 2716
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z

    .line 2717
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2718
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2719
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->disableProxyListener(Landroid/content/Context;)V

    .line 2720
    :cond_0
    monitor-exit v2

    .line 2721
    return-void

    .line 2720
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized disableProxyListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1982
    const-class v1, Landroid/webkit/WebViewClassic;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1987
    :goto_0
    monitor-exit v1

    return-void

    .line 1985
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1986
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1982
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private disallowParentsToInterceptTouchEvents()V
    .locals 2

    .prologue
    .line 5925
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5926
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 5927
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5928
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5929
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    goto :goto_0

    .line 5931
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5934
    :cond_1
    return-void
.end method

.method private dismissFullScreenMode()V
    .locals 1

    .prologue
    .line 7681
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7682
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v0}, Landroid/webkit/PluginFullScreenHolder;->hide()V

    .line 7683
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 7684
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 7686
    :cond_0
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .locals 7
    .parameter "isTextView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6432
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6436
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    move v1, v2

    .line 6437
    .local v1, zoom:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 6438
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    iget v5, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 6439
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 6446
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 6449
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_1

    .line 6450
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    #calls: Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->access$2700(Landroid/webkit/WebViewClassic$WebViewInputConnection;)V

    .line 6453
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isEditable()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_3

    .line 6454
    :cond_2
    const/16 v3, 0x190

    invoke-virtual {p0, v3, v2}, Landroid/webkit/WebViewClassic;->showSingleTapAction(IZ)Z

    .line 6456
    :cond_3
    return-void

    .end local v1           #zoom:Z
    :cond_4
    move v1, v3

    .line 6436
    goto :goto_0
.end method

.method private distanceSquared(IILandroid/graphics/Point;)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "p"

    .prologue
    .line 6982
    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    int-to-float v0, v2

    .line 6983
    .local v0, dx:F
    iget v2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    int-to-float v1, v2

    .line 6984
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private doDrag(II)Z
    .locals 19
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 8491
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->useFirstDrag:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v2, :cond_1

    .line 8492
    :cond_0
    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](2101) [FPS][WEBVIEW][SCROLLING_PAN][START]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8493
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebViewClassic;->useFirstDrag:Z

    .line 8496
    :cond_1
    const/4 v12, 0x1

    .line 8497
    .local v12, allDrag:Z
    or-int v2, p1, p2

    if-eqz v2, :cond_4

    .line 8498
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    .line 8499
    .local v5, oldX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    .line 8500
    .local v6, oldY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v7

    .line 8501
    .local v7, rangeX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    .line 8502
    .local v8, rangeY:I
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v13, v2

    .line 8503
    .local v13, contentX:I
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v14, v2

    .line 8506
    .local v14, contentY:I
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 8509
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mTouchInEditText:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p2}, Landroid/webkit/WebViewClassic;->canTextScroll(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8511
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v5

    .line 8512
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v7

    .line 8513
    move/from16 p1, v13

    .line 8514
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v6

    .line 8515
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v8

    .line 8516
    move/from16 p2, v14

    .line 8517
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 8518
    const/4 v12, 0x0

    .line 8544
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_3

    .line 8545
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/OverScrollGlow;->setOverScrollDeltas(II)V

    .line 8548
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    const/4 v11, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    .line 8551
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v2}, Landroid/webkit/OverScrollGlow;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8552
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8555
    .end local v5           #oldX:I
    .end local v6           #oldY:I
    .end local v7           #rangeX:I
    .end local v8           #rangeY:I
    .end local v13           #contentX:I
    .end local v14           #contentY:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->keepZoomPickerVisible()V

    .line 8556
    return v12

    .line 8519
    .restart local v5       #oldX:I
    .restart local v6       #oldY:I
    .restart local v7       #rangeX:I
    .restart local v8       #rangeY:I
    .restart local v13       #contentX:I
    .restart local v14       #contentY:I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_2

    .line 8522
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->right:I

    .line 8523
    .local v15, maxX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 8524
    .local v16, maxY:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 8526
    .local v17, resultX:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 8529
    .local v18, resultY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    or-int v2, v13, v14

    if-nez v2, :cond_2

    .line 8533
    :cond_6
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 8534
    move/from16 p1, v13

    .line 8535
    move/from16 p2, v14

    .line 8536
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 8537
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 8538
    move v7, v15

    .line 8539
    move/from16 v8, v16

    .line 8540
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private doFling()V
    .locals 23

    .prologue
    .line 9013
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v2, :cond_1

    .line 9014
    :cond_0
    const-string v2, "AutoTest"

    const-string v5, "[AutoProf](2101) [FPS][WEBVIEW][SCROLLING_FLING][START]\u2026"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9017
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 9126
    :cond_2
    :goto_0
    return-void

    .line 9020
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v8

    .line 9021
    .local v8, maxX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v10

    .line 9025
    .local v10, maxY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mFlingPointsPerSec:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebViewClassic;->mMaximumFling:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 9027
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 9028
    .local v17, vx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 9030
    .local v18, vy:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    .line 9031
    .local v3, scrollX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    .line 9032
    .local v4, scrollY:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    .line 9033
    .local v15, overscrollDistance:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    .line 9036
    .local v14, overflingDistance:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_8

    .line 9037
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 9038
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 9039
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    .line 9040
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    .line 9042
    const/4 v14, 0x0

    move v15, v14

    .line 9052
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    if-eqz v2, :cond_5

    .line 9053
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    .line 9054
    const/16 v18, 0x0

    .line 9059
    :cond_5
    :goto_2
    if-nez v8, :cond_6

    if-eqz v18, :cond_7

    :cond_6
    if-nez v10, :cond_a

    if-nez v17, :cond_a

    .line 9060
    :cond_7
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 9061
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_2

    .line 9062
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 9043
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    .line 9044
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v3

    .line 9045
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v4

    .line 9046
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v8

    .line 9047
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v10

    .line 9049
    const/4 v14, 0x0

    move v15, v14

    goto :goto_1

    .line 9056
    :cond_9
    const/16 v17, 0x0

    goto :goto_2

    .line 9069
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v2}, Landroid/webkit/HTCScroller;->getCurrVelocity()F

    move-result v12

    .line 9070
    .local v12, currentVelocity:F
    move/from16 v0, v17

    int-to-double v5, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v0, v5

    move/from16 v16, v0

    .line 9071
    .local v16, velocity:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_c

    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    const v5, 0x3e4ccccd

    mul-float/2addr v2, v5

    cmpl-float v2, v16, v2

    if-lez v2, :cond_c

    .line 9073
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelY:F

    float-to-double v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelX:F

    float-to-double v0, v2

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v19

    sub-double v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-float v13, v5

    .line 9075
    .local v13, deltaR:F
    const v11, 0x40c90fdb

    .line 9076
    .local v11, circle:F
    const v2, 0x40b4f4ab

    cmpl-float v2, v13, v2

    if-gtz v2, :cond_b

    const v2, 0x3f20d97c

    cmpg-float v2, v13, v2

    if-gez v2, :cond_c

    .line 9077
    :cond_b
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mLastVelX:F

    mul-float/2addr v5, v12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v17, v0

    .line 9078
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mLastVelY:F

    mul-float/2addr v5, v12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v18, v0

    .line 9079
    move/from16 v0, v17

    int-to-double v5, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v0, v5

    move/from16 v16, v0

    .line 9096
    .end local v11           #circle:F
    .end local v13           #deltaR:F
    :cond_c
    if-eqz v3, :cond_d

    if-ne v3, v8, :cond_e

    :cond_d
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 9097
    const/16 v17, 0x0

    .line 9099
    :cond_e
    if-eqz v4, :cond_f

    if-ne v4, v10, :cond_10

    :cond_f
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_10

    .line 9100
    const/16 v18, 0x0

    .line 9103
    :cond_10
    if-ge v15, v14, :cond_16

    .line 9104
    if-lez v17, :cond_11

    neg-int v2, v15

    if-eq v3, v2, :cond_12

    :cond_11
    if-gez v17, :cond_13

    add-int v2, v8, v15

    if-ne v3, v2, :cond_13

    .line 9106
    :cond_12
    const/16 v17, 0x0

    .line 9108
    :cond_13
    if-lez v18, :cond_14

    neg-int v2, v15

    if-eq v4, v2, :cond_15

    :cond_14
    if-gez v18, :cond_16

    add-int v2, v10, v15

    if-ne v4, v2, :cond_16

    .line 9110
    :cond_15
    const/16 v18, 0x0

    .line 9114
    :cond_16
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mLastVelX:F

    .line 9115
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mLastVelY:F

    .line 9116
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 9123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    move/from16 v0, v17

    neg-int v5, v0

    move/from16 v0, v18

    neg-int v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/webkit/HTCScroller;->fling(IIIIIIII)V

    .line 9125
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0
.end method

.method private doTrackball(JI)V
    .locals 25
    .parameter "time"
    .parameter "metaState"

    .prologue
    .line 8898
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/webkit/WebViewClassic;->mTrackballFirstTime:J

    sub-long/2addr v5, v7

    long-to-int v12, v5

    .line 8899
    .local v12, elapsed:I
    if-nez v12, :cond_0

    .line 8900
    const/16 v12, 0xc8

    .line 8902
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v22, v3, v5

    .line 8903
    .local v22, xRate:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v24, v3, v5

    .line 8904
    .local v24, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v19

    .line 8905
    .local v19, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v18

    .line 8906
    .local v18, viewHeight:I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 8907
    .local v9, ax:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 8908
    .local v10, ay:F
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 8916
    .local v15, maxA:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    sub-int v20, v3, v19

    .line 8917
    .local v20, width:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    sub-int v13, v3, v18

    .line 8918
    .local v13, height:I
    if-gez v20, :cond_1

    const/16 v20, 0x0

    .line 8919
    :cond_1
    if-gez v13, :cond_2

    const/4 v13, 0x0

    .line 8920
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 8921
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 8922
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 8923
    const/4 v3, 0x0

    float-to-int v5, v15

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 8924
    .local v11, count:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v16

    .line 8925
    .local v16, oldScrollX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v17

    .line 8926
    .local v17, oldScrollY:I
    if-lez v11, :cond_8

    .line 8927
    cmpg-float v3, v9, v10

    if-gez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    const/16 v4, 0x13

    .line 8931
    .local v4, selectKeyCode:I
    :goto_0
    const/16 v3, 0xa

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 8938
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v3, :cond_7

    .line 8939
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v11, :cond_6

    .line 8940
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->letPageHandleNavKey(IJZI)V

    .line 8939
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 8927
    .end local v4           #selectKeyCode:I
    .end local v14           #i:I
    :cond_3
    const/16 v4, 0x14

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    const/16 v4, 0x15

    goto :goto_0

    :cond_5
    const/16 v4, 0x16

    goto :goto_0

    .line 8942
    .restart local v4       #selectKeyCode:I
    .restart local v14       #i:I
    :cond_6
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->letPageHandleNavKey(IJZI)V

    .line 8944
    .end local v14           #i:I
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    .line 8946
    .end local v4           #selectKeyCode:I
    :cond_8
    const/4 v3, 0x5

    if-lt v11, v3, :cond_c

    .line 8947
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebViewClassic;->scaleTrackballX(FI)I

    move-result v21

    .line 8948
    .local v21, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v13}, Landroid/webkit/WebViewClassic;->scaleTrackballY(FI)I

    move-result v23

    .line 8957
    .local v23, yMove:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_9

    .line 8958
    const/16 v21, 0x0

    .line 8960
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    sub-int v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_a

    .line 8961
    const/16 v23, 0x0

    .line 8963
    :cond_a
    if-nez v21, :cond_b

    if-eqz v23, :cond_c

    .line 8964
    :cond_b
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    .line 8967
    .end local v21           #xMove:I
    .end local v23           #yMove:I
    :cond_c
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 4948
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_1

    .line 4949
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4950
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 5051
    :cond_0
    :goto_0
    return-void

    .line 4953
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4955
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v9

    .line 4956
    .local v9, animateZoom:Z
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v0}, Landroid/webkit/HTCScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    :cond_2
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    :cond_3
    const/4 v8, 0x1

    .line 4960
    .local v8, animateScroll:Z
    :goto_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 4961
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 4962
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4963
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 4965
    :cond_4
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    if-nez v0, :cond_5

    .line 4966
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4968
    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 4971
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 4972
    .local v12, saveCount:I
    if-eqz v9, :cond_10

    .line 4974
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_6

    sget-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v0, :cond_8

    .line 4975
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v0, v0, Landroid/webkit/ZoomManager;->isFirstTap:Z

    if-eqz v0, :cond_7

    .line 4976
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->isFirstFrameTapZoom:Z

    .line 4978
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/webkit/ZoomManager;->isFirstTap:Z

    .line 4981
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->animateZoom(Landroid/graphics/Canvas;)V

    .line 4986
    :cond_9
    :goto_2
    const/4 v7, 0x0

    .line 4989
    .local v7, UIAnimationsRunning:Z
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeEvaluateLayersAnimations(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4991
    const/4 v7, 0x1

    .line 4996
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4997
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 5001
    :cond_a
    const/4 v6, 0x0

    .line 5002
    .local v6, extras:I
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    if-eqz v0, :cond_b

    .line 5003
    const/4 v6, 0x1

    .line 5006
    :cond_b
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 5007
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5008
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v0, :cond_11

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    .line 5009
    .local v2, invScreenRect:Landroid/graphics/Rect;
    :goto_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v0, :cond_12

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    .line 5011
    .local v3, screenRect:Landroid/graphics/Rect;
    :goto_4
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewClassic;->nativeCreateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I

    move-result v11

    .local v11, functor:I
    move-object v0, p1

    .line 5013
    check-cast v0, Landroid/view/HardwareCanvas;

    invoke-virtual {v0, v11}, Landroid/view/HardwareCanvas;->callDrawGLFunction(I)I

    .line 5015
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_c

    sget-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v0, :cond_d

    .line 5016
    :cond_c
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->isFirstFrameTapZoom:Z

    if-eqz v0, :cond_13

    .line 5017
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AutoProf](301) [OTHER][WEBVIEW][DOUBLETAP_FEEDBACK][FINISH] scale="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->isFirstFrameTapZoom:Z

    .line 5026
    :cond_d
    :goto_5
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getHardwareAccelSkiaEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_e

    .line 5027
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getHardwareAccelSkiaEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    .line 5028
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeUseHardwareAccelSkia(Z)V

    .line 5043
    .end local v2           #invScreenRect:Landroid/graphics/Rect;
    .end local v3           #screenRect:Landroid/graphics/Rect;
    .end local v11           #functor:I
    :cond_e
    :goto_6
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5044
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->drawTextSelectionHandles(Landroid/graphics/Canvas;)V

    .line 5046
    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    .line 5047
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5048
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto/16 :goto_0

    .line 4956
    .end local v6           #extras:I
    .end local v7           #UIAnimationsRunning:Z
    .end local v8           #animateScroll:Z
    .end local v12           #saveCount:I
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 4982
    .restart local v8       #animateScroll:Z
    .restart local v12       #saveCount:I
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4983
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_2

    .line 5008
    .restart local v6       #extras:I
    .restart local v7       #UIAnimationsRunning:Z
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 5009
    .restart local v2       #invScreenRect:Landroid/graphics/Rect;
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 5019
    .restart local v3       #screenRect:Landroid/graphics/Rect;
    .restart local v11       #functor:I
    :cond_13
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v0, v0, Landroid/webkit/ZoomManager;->isPinching:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->isFirstFramePinchZoom:Z

    if-eqz v0, :cond_d

    .line 5020
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AutoProf](301) [OTHER][WEBVIEW][PINCH_FEEDBACK][FINISH] scale="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->isFirstFramePinchZoom:Z

    .line 5022
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/ZoomManager;->useFeedback:Z

    goto :goto_5

    .line 5032
    .end local v2           #invScreenRect:Landroid/graphics/Rect;
    .end local v3           #screenRect:Landroid/graphics/Rect;
    .end local v11           #functor:I
    :cond_14
    const/4 v10, 0x0

    .line 5033
    .local v10, df:Landroid/graphics/DrawFilter;
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v7, :cond_17

    .line 5034
    :cond_15
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 5038
    :cond_16
    :goto_7
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5039
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    invoke-direct {p0, p1, v0, v1, v6}, Landroid/webkit/WebViewClassic;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    .line 5040
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto :goto_6

    .line 5035
    :cond_17
    if-eqz v8, :cond_16

    .line 5036
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mScrollFilter:Landroid/graphics/DrawFilter;

    goto :goto_7
.end method

.method private drawOverScrollBackground(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 5058
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 5059
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 5060
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080557

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 5063
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5065
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 5066
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5067
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5068
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5071
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v9, 0x0

    .line 5072
    .local v9, top:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v8

    .line 5073
    .local v8, right:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v9, v0

    .line 5075
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5076
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5077
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v0, v9, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 5079
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 5080
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5082
    const/high16 v1, -0x4080

    const/4 v0, -0x1

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5084
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 5085
    return-void
.end method

.method private drawTextSelectionHandles(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 6263
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 6336
    :cond_0
    :goto_0
    return-void

    .line 6270
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    .line 6271
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v6, :cond_3

    .line 6272
    const/4 v6, 0x4

    new-array v3, v6, [I

    .line 6273
    .local v3, handles:[I
    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 6275
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I

    if-nez v6, :cond_2

    iget v6, p0, Landroid/webkit/WebViewClassic;->mSelectRightCaretHeight:I

    if-eqz v6, :cond_0

    .line 6279
    :cond_2
    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v4

    .line 6280
    .local v4, start_x:I
    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v5

    .line 6281
    .local v5, start_y:I
    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    .line 6282
    .local v1, end_x:I
    const/4 v6, 0x3

    aget v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v2

    .line 6284
    .local v2, end_y:I
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v6, :cond_4

    .line 6286
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    .line 6287
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6291
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenterRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6292
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenterRect:Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    neg-int v7, v7

    iget v8, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 6330
    .end local v1           #end_x:I
    .end local v2           #end_y:I
    .end local v3           #handles:[I
    .end local v4           #start_x:I
    .end local v5           #start_y:I
    :cond_3
    :goto_1
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v6, :cond_6

    .line 6331
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 6296
    .restart local v1       #end_x:I
    .restart local v2       #end_y:I
    .restart local v3       #handles:[I
    .restart local v4       #start_x:I
    .restart local v5       #start_y:I
    :cond_4
    iget v6, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    if-eqz v6, :cond_5

    .line 6297
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    .line 6299
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I

    .line 6300
    .local v0, caretHeight:I
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    .line 6301
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v0

    sub-int/2addr v5, v6

    .line 6303
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6306
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    .line 6307
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6322
    .end local v0           #caretHeight:I
    :goto_2
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6323
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftRect:Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    neg-int v7, v7

    iget v8, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 6324
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRightRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6325
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRightRect:Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    neg-int v7, v7

    iget v8, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_1

    .line 6312
    :cond_5
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v4, v6

    .line 6313
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6316
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v1, v6

    .line 6317
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 6333
    .end local v1           #end_x:I
    .end local v2           #end_y:I
    .end local v3           #handles:[I
    .end local v4           #start_x:I
    .end local v5           #start_y:I
    :cond_6
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6334
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2702
    const-class v2, Landroid/webkit/WebViewClassic;

    monitor-enter v2

    .line 2703
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z

    .line 2704
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2705
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2706
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->setupProxyListener(Landroid/content/Context;)V

    .line 2707
    :cond_0
    monitor-exit v2

    .line 2708
    return-void

    .line 2707
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private endScrollEdit()V
    .locals 2

    .prologue
    .line 8398
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 8399
    return-void
.end method

.method private endSelectingText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6194
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    .line 6195
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 6197
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mEnableAnchorAnimation:Z

    if-eqz v0, :cond_0

    .line 6199
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 6200
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6205
    :goto_0
    return-void

    .line 6203
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->setAlpha(I)V

    goto :goto_0
.end method

.method private ensureFunctorDetached()V
    .locals 3

    .prologue
    .line 2641
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2642
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->nativeGetDrawGLFunction(I)I

    move-result v0

    .line 2643
    .local v0, drawGLFunction:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 2644
    .local v1, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2645
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->detachFunctor(I)V

    .line 2648
    .end local v0           #drawGLFunction:I
    .end local v1           #viewRoot:Landroid/view/ViewRootImpl;
    :cond_0
    return-void
.end method

.method private ensureSelectionHandles()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 6209
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 6211
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6212
    .local v2, res:Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mAnchorTouchListener:Landroid/webkit/WebViewClassic$AnchorTouchListener;

    if-nez v4, :cond_0

    .line 6213
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/webkit/WebViewThemeable;->getAnchorBarTopDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6214
    .local v1, prior:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/webkit/WebViewThemeable;->getAnchorBarDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6215
    .local v0, post:Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/webkit/WebViewClassic$AnchorTouchListener;

    invoke-direct {v4, p0}, Landroid/webkit/WebViewClassic$AnchorTouchListener;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mAnchorTouchListener:Landroid/webkit/WebViewClassic$AnchorTouchListener;

    .line 6216
    new-instance v4, Lcom/htc/textselection/SelectionAnchor;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v3, v1, v0}, Lcom/htc/textselection/SelectionAnchor;-><init>(Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 6217
    new-instance v4, Lcom/htc/textselection/SelectionAnchor;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v5, v1, v0}, Lcom/htc/textselection/SelectionAnchor;-><init>(Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 6218
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mAnchorTouchListener:Landroid/webkit/WebViewClassic$AnchorTouchListener;

    invoke-virtual {v4, v6}, Lcom/htc/textselection/SelectionAnchor;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 6219
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mAnchorTouchListener:Landroid/webkit/WebViewClassic$AnchorTouchListener;

    invoke-virtual {v4, v6}, Lcom/htc/textselection/SelectionAnchor;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 6222
    .end local v0           #post:Landroid/graphics/drawable/Drawable;
    .end local v1           #prior:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v4, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    if-eqz v4, :cond_2

    .line 6223
    .local v3, useUpDownAnchor:Z
    :goto_0
    if-eqz v3, :cond_3

    .line 6224
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/webkit/WebViewThemeable;->getAnchorBarDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 6225
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/webkit/WebViewThemeable;->getAnchorBarDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 6226
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/webkit/WebViewThemeable;->getAnchorBarTopDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 6228
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6229
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6230
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6232
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v4, v7}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 6233
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v4, v7}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 6245
    :goto_1
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->setAlpha(I)V

    .line 6246
    new-instance v4, Landroid/graphics/Point;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    neg-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenterOffset:Landroid/graphics/Point;

    .line 6248
    new-instance v6, Landroid/graphics/Point;

    if-eqz v3, :cond_4

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_2
    invoke-direct {v6, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftOffset:Landroid/graphics/Point;

    .line 6255
    new-instance v4, Landroid/graphics/Point;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    neg-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRightOffset:Landroid/graphics/Point;

    .line 6260
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #useUpDownAnchor:Z
    :cond_1
    return-void

    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_2
    move v3, v5

    .line 6222
    goto :goto_0

    .line 6237
    .restart local v3       #useUpDownAnchor:Z
    :cond_3
    const v4, 0x10805b1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 6239
    const v4, 0x10805b0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 6241
    const v4, 0x10805b2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 6248
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    neg-int v4, v4

    goto :goto_2
.end method

.method private extendScroll(I)Z
    .locals 4
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 3333
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v3}, Landroid/webkit/HTCScroller;->getFinalY()I

    move-result v0

    .line 3334
    .local v0, finalY:I
    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v1

    .line 3335
    .local v1, newY:I
    if-ne v1, v0, :cond_0

    .line 3338
    :goto_0
    return v2

    .line 3336
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v3, v1}, Landroid/webkit/HTCScroller;->setFinalY(I)V

    .line 3337
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-static {v2, p1}, Landroid/webkit/WebViewClassic;->computeDuration(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/webkit/HTCScroller;->extendDuration(I)V

    .line 3338
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 4394
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebViewClassic;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 4419
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findAllBody(Ljava/lang/String;Z)I
    .locals 6
    .parameter "find"
    .parameter "isAsync"

    .prologue
    const/16 v4, 0xdd

    const/4 v1, 0x0

    .line 4291
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    .line 4310
    :cond_0
    :goto_0
    return v1

    .line 4292
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    .line 4293
    if-eqz p1, :cond_0

    .line 4294
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 4295
    new-instance v2, Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-direct {v2, p1}, Landroid/webkit/WebViewCore$FindAllRequest;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    .line 4296
    if-eqz p2, :cond_2

    .line 4297
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v2, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 4300
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    monitor-enter v2

    .line 4302
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xdd

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 4303
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    iget v3, v3, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 4304
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4307
    :catch_0
    move-exception v0

    .line 4308
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 4311
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4310
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    iget v1, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "webView"

    .prologue
    .line 1853
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic;

    goto :goto_0
.end method

.method private getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-nez v0, :cond_0

    .line 2246
    new-instance v0, Landroid/webkit/AccessibilityInjector;

    invoke-direct {v0, p0}, Landroid/webkit/AccessibilityInjector;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    .line 2248
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    return-object v0
.end method

.method private getMaxTextScrollX()I
    .locals 3

    .prologue
    .line 9470
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getMaxTextScrollY()I
    .locals 3

    .prologue
    .line 9474
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getOverlappingActionModeHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2480
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-nez v1, :cond_0

    .line 2488
    :goto_0
    return v0

    .line 2483
    :cond_0
    iget v1, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    if-gez v1, :cond_1

    .line 2484
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 2485
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/FindActionModeCallback;->getActionModeGlobalBottom()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 2488
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    goto :goto_0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4924
    const-class v1, Landroid/webkit/WebViewClassic;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    .prologue
    .line 11004
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 11005
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 11012
    .local v1, width:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    return v2

    .line 11007
    .end local v1           #width:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11008
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 11009
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    .prologue
    .line 11017
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 11018
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 11027
    .local v0, height:I
    :goto_0
    int-to-float v2, v0

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 11020
    .end local v0           #height:I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 11021
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 11022
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private static getTextScrollDelta(FJ)I
    .locals 7
    .parameter "speed"
    .parameter "deltaT"

    .prologue
    .line 8402
    long-to-float v3, p1

    mul-float v0, p0, v3

    .line 8403
    .local v0, distance:F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 8404
    .local v1, intDistance:I
    int-to-float v3, v1

    sub-float v2, v0, v3

    .line 8405
    .local v2, probability:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    float-to-double v5, v2

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 8406
    add-int/lit8 v1, v1, 0x1

    .line 8408
    :cond_0
    return v1
.end method

.method private static getTextScrollSpeed(III)F
    .locals 2
    .parameter "coordinate"
    .parameter "min"
    .parameter "max"

    .prologue
    const v1, 0x3c23d70a

    .line 8380
    if-ge p0, p1, :cond_0

    .line 8381
    sub-int v0, p0, p1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 8385
    :goto_0
    return v0

    .line 8382
    :cond_0
    if-lt p0, p2, :cond_1

    .line 8383
    sub-int v0, p0, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    .line 8385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextScrollX()I
    .locals 1

    .prologue
    .line 9462
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    return v0
.end method

.method private getTextScrollY()I
    .locals 1

    .prologue
    .line 9466
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    return v0
.end method

.method private getVisibleTitleHeightImpl()I
    .locals 3

    .prologue
    .line 2473
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getOverlappingActionModeHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 3310
    if-eqz p1, :cond_1

    .line 3311
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    if-eqz v0, :cond_0

    .line 3312
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewManager;->suspend()V

    .line 3313
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 3314
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x6a

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3317
    :cond_1
    return-void

    .line 3314
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goBackOrForwardImpl(I)V
    .locals 2
    .parameter "steps"

    .prologue
    .line 3300
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3302
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 3307
    :goto_0
    return-void

    .line 3306
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->goBackOrForward(IZ)V

    goto :goto_0
.end method

.method private static handleCertTrustChanged()V
    .locals 2

    .prologue
    .line 1905
    const/16 v0, 0xdc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 1906
    return-void
.end method

.method private static handleProxyBroadcast(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/16 v2, 0xc1

    .line 1990
    const-string/jumbo v1, "proxy"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 1991
    .local v0, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1992
    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 1996
    :goto_0
    return-void

    .line 1995
    :cond_1
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleTouchEventCommon(Landroid/view/MotionEvent;III)V
    .locals 30
    .parameter "event"
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 7820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v11

    .line 7822
    .local v11, detector:Landroid/view/ScaleGestureDetector;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    .line 7826
    .local v12, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchRawX:I

    .line 7827
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchRawY:I

    .line 7835
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, p3

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 7836
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, p4

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 7838
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    move/from16 v25, v0

    sub-int v9, v25, p3

    .line 7839
    .local v9, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    move/from16 v25, v0

    sub-int v10, v25, p4

    .line 7840
    .local v10, deltaY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v25

    add-int v25, v25, p3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v7

    .line 7841
    .local v7, contentX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v25

    add-int v25, v25, p4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v8

    .line 7843
    .local v8, contentY:I
    packed-switch p2, :pswitch_data_0

    .line 8362
    :cond_0
    :goto_0
    return-void

    .line 7845
    :pswitch_0
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 7846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_1

    .line 7847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7850
    :cond_1
    sget v25, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    sget v25, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 7851
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v26

    add-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeVerticalScrollRange()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    const/16 v25, 0x1

    :goto_1
    sput-boolean v25, Landroid/webkit/WebViewClassic;->mBottomOverScrollEnabled:Z

    .line 7854
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/HTCScroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_8

    .line 7858
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/HTCScroller;->abortAnimation()V

    .line 7859
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 7860
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 7861
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 7863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 7864
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 7919
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-nez v25, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 7921
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    const-wide/16 v27, 0x12c

    invoke-virtual/range {v25 .. v28}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->LONG_PRESS_TIMEOUT:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-virtual/range {v25 .. v28}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7927
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 7928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0xc

    sget v27, Landroid/webkit/WebViewClassic;->POTENTIAL_LONG_PRESS_TIMEOUT:I

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-virtual/range {v25 .. v28}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7933
    :cond_6
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v12, v13}, Landroid/webkit/WebViewClassic;->startTouch(FFJ)V

    .line 7934
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 7935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mTouchInEditText:Z

    goto/16 :goto_0

    .line 7851
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 7867
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 7868
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 7869
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 7870
    mul-int v25, v9, v9

    mul-int v26, v10, v10

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mDoubleTapSlopSquare:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 7871
    const/16 v25, 0x6

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto/16 :goto_2

    .line 7873
    :cond_9
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto/16 :goto_2

    .line 7876
    :cond_a
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 7877
    sget-boolean v25, Landroid/webkit/WebViewClassic;->mLogEvent:Z

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    move-wide/from16 v25, v0

    sub-long v25, v12, v25

    const-wide/16 v27, 0x3e8

    cmp-long v25, v25, v27

    if-gez v25, :cond_b

    .line 7878
    const v25, 0x111d6

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7881
    :cond_b
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 7882
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 7883
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    .line 7884
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v25

    sub-int v25, p4, v25

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v26

    add-int v23, v25, v26

    .line 7885
    .local v23, shiftedY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v25

    add-int v22, p3, v25

    .line 7886
    .local v22, shiftedX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 7890
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 7891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 7892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenterOffset:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    .line 7893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    .line 7894
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x90

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 7895
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->hidePasteButton()V

    goto/16 :goto_2

    .line 7896
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 7899
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 7900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftOffset:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    .line 7901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 7902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    goto/16 :goto_2

    .line 7903
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 7906
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 7907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRightOffset:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    .line 7908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 7909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    goto/16 :goto_2

    .line 7910
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 7911
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_2

    .line 7941
    .end local v22           #shiftedX:I
    .end local v23           #shiftedY:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    move/from16 v25, v0

    if-nez v25, :cond_11

    mul-int v25, v9, v9

    mul-int v26, v10, v10

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_11

    .line 7943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 7944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 7947
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 7948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0xc

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 7952
    :cond_f
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 7953
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 7954
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 7956
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 7958
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 7962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    .line 7963
    .local v19, parent:Landroid/view/ViewParent;
    if-eqz v19, :cond_12

    .line 7964
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7966
    :cond_12
    if-nez v9, :cond_13

    if-eqz v10, :cond_0

    .line 7967
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v25

    add-int v14, v7, v25

    .line 7969
    .local v14, handleX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v25

    add-int v15, v8, v25

    .line 7971
    .local v15, handleY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Point;->set(II)V

    .line 7972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v25, v0

    int-to-float v0, v14

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/webkit/QuadF;->containsPoint(FF)Z

    move-result v16

    .line 7974
    .local v16, inCursorText:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    .line 7976
    .local v17, inEditBounds:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    if-nez v17, :cond_17

    .line 7977
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->beginScrollEdit()V

    .line 7981
    :goto_3
    if-nez v16, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_15

    if-nez v17, :cond_15

    .line 7982
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->snapDraggingCursor()V

    .line 7984
    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    .line 7985
    if-nez v16, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    if-eqz v17, :cond_16

    .line 7987
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->snapDraggingCursor()V

    .line 7989
    :cond_16
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 7990
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 7991
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 7979
    :cond_17
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    goto :goto_3

    .line 7998
    .end local v14           #handleX:I
    .end local v15           #handleY:I
    .end local v16           #inCursorText:Z
    .end local v17           #inEditBounds:Z
    .end local v19           #parent:Landroid/view/ViewParent;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1b

    .line 8001
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1b

    .line 8003
    if-nez v9, :cond_19

    if-eqz v10, :cond_0

    .line 8004
    :cond_19
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 8005
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 8008
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    move-wide/from16 v25, v0

    sub-long v25, v25, v12

    const-wide/16 v27, 0x1f4

    cmp-long v25, v25, v27

    if-lez v25, :cond_1a

    const/16 v25, 0x1

    :goto_4
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->findKikinSelection(ZZZ)Z

    .line 8009
    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 8012
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchRawX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchRawY:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebViewClassic;->showMagnifyingGlass(II)V

    .line 8015
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->disallowParentsToInterceptTouchEvents()V

    goto/16 :goto_0

    .line 8008
    :cond_1a
    const/16 v25, 0x0

    goto :goto_4

    .line 8025
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 8030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-nez v25, :cond_1f

    .line 8031
    const-string/jumbo v25, "webview"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Got null mVelocityTracker when  mTouchMode = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8037
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1e

    .line 8041
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 8048
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/webkit/WebViewClassic;->calculateDragAngle(II)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    .line 8049
    if-eqz v11, :cond_1c

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v25

    if-nez v25, :cond_1d

    .line 8051
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v25, v0

    const/high16 v26, 0x3e80

    cmpg-float v25, v25, v26

    if-gez v25, :cond_21

    .line 8052
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 8053
    if-lez v9, :cond_20

    const/16 v25, 0x1

    :goto_6
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mSnapPositive:Z

    .line 8054
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    .line 8064
    :cond_1d
    :goto_7
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 8065
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 8066
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 8067
    const/4 v9, 0x0

    .line 8068
    const/4 v10, 0x0

    .line 8070
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebViewClassic;->startScrollingLayer(FF)V

    .line 8071
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->startDrag()V

    .line 8075
    :cond_1e
    const/16 v18, 0x0

    .line 8076
    .local v18, keepScrollBarsVisible:Z
    if-nez v9, :cond_23

    if-nez v10, :cond_23

    .line 8077
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 8034
    .end local v18           #keepScrollBarsVisible:Z
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    .line 8053
    :cond_20
    const/16 v25, 0x0

    goto :goto_6

    .line 8055
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v25, v0

    const/high16 v26, 0x3fa0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_1d

    .line 8056
    const/16 v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 8057
    if-lez v10, :cond_22

    const/16 v25, 0x1

    :goto_8
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mSnapPositive:Z

    .line 8058
    const/high16 v25, 0x4000

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    goto :goto_7

    .line 8057
    :cond_22
    const/16 v25, 0x0

    goto :goto_8

    .line 8079
    .restart local v18       #keepScrollBarsVisible:Z
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/webkit/WebViewClassic;->calculateDragAngle(II)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    const/high16 v27, 0x40a0

    div-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    .line 8082
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_27

    .line 8083
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_24

    .line 8085
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v25, v0

    const v26, 0x3f733333

    cmpg-float v25, v25, v26

    if-gez v25, :cond_24

    .line 8086
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 8089
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_25

    .line 8091
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v25, v0

    const v26, 0x3ecccccd

    cmpl-float v25, v25, v26

    if-lez v25, :cond_25

    .line 8092
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 8106
    :cond_25
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_26

    .line 8107
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x2

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2b

    .line 8108
    const/4 v10, 0x0

    .line 8113
    :cond_26
    :goto_a
    mul-int v25, v9, v9

    mul-int v26, v10, v10

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2c

    .line 8114
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 8120
    :goto_b
    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 8121
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/webkit/WebViewClassic;->doDrag(II)Z

    move-result v4

    .line 8122
    .local v4, allDrag:Z
    if-eqz v4, :cond_2d

    .line 8123
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 8124
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    goto/16 :goto_0

    .line 8096
    .end local v4           #allDrag:Z
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v25, v0

    const/high16 v26, 0x3e80

    cmpg-float v25, v25, v26

    if-gez v25, :cond_29

    .line 8097
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 8098
    if-lez v9, :cond_28

    const/16 v25, 0x1

    :goto_c
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mSnapPositive:Z

    .line 8099
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v25, v0

    const/16 v26, 0x0

    add-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    goto :goto_9

    .line 8098
    :cond_28
    const/16 v25, 0x0

    goto :goto_c

    .line 8100
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v25, v0

    const/high16 v26, 0x3fa0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_25

    .line 8101
    const/16 v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 8102
    if-lez v10, :cond_2a

    const/16 v25, 0x1

    :goto_d
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mSnapPositive:Z

    .line 8103
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move/from16 v25, v0

    const/high16 v26, 0x4000

    add-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    goto/16 :goto_9

    .line 8102
    :cond_2a
    const/16 v25, 0x0

    goto :goto_d

    .line 8110
    :cond_2b
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 8116
    :cond_2c
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 8117
    const/16 v18, 0x1

    goto/16 :goto_b

    .line 8126
    .restart local v4       #allDrag:Z
    :cond_2d
    int-to-float v0, v9

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->floor(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v5, v0

    .line 8127
    .local v5, contentDeltaX:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v20

    .line 8128
    .local v20, roundedDeltaX:I
    int-to-float v0, v10

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->floor(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v6, v0

    .line 8129
    .local v6, contentDeltaY:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v21

    .line 8130
    .local v21, roundedDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    move/from16 v25, v0

    sub-int v25, v25, v20

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 8131
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    move/from16 v25, v0

    sub-int v25, v25, v21

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    goto/16 :goto_0

    .line 8138
    .end local v4           #allDrag:Z
    .end local v5           #contentDeltaX:I
    .end local v6           #contentDeltaY:I
    .end local v18           #keepScrollBarsVisible:Z
    .end local v20           #roundedDeltaX:I
    .end local v21           #roundedDeltaY:I
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    .line 8145
    const/16 v25, 0x0

    sput-boolean v25, Landroid/webkit/WebViewClassic;->mBottomOverScrollEnabled:Z

    sput-boolean v25, Landroid/webkit/WebViewClassic;->mTopOverScrollEnabled:Z

    .line 8147
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    move/from16 v25, v0

    if-nez v25, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->isEditable()Z

    move-result v25

    if-eqz v25, :cond_2f

    .line 8149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2e

    .line 8150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->completeComposing()V

    .line 8153
    :cond_2e
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->canUpdateHandler:Z

    .line 8157
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    move/from16 v25, v0

    if-nez v25, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v25, v0

    if-nez v25, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->isEditable()Z

    move-result v25

    if-eqz v25, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    move/from16 v25, v0

    if-eqz v25, :cond_31

    .line 8166
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->showPasteWindow()V

    .line 8167
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->stopTouch()V

    goto/16 :goto_0

    .line 8170
    :cond_31
    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    .line 8171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    move/from16 v25, v0

    if-eqz v25, :cond_32

    .line 8172
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    .line 8174
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_1

    .line 8290
    :cond_33
    :goto_e
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->stopTouch()V

    .line 8294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 8296
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->hideMagnifyingGlass()V

    .line 8297
    sget-boolean v25, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v25, :cond_34

    .line 8298
    const-string/jumbo v25, "webview"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Selecting text:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\t\t Should perform kikin search:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mShouldPerformKikinSearch:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8302
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mShouldPerformKikinSearch:Z

    move/from16 v25, v0

    if-eqz v25, :cond_35

    .line 8303
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic;->performKikinSearch(Z)V

    .line 8308
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsPotentialLongPress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-nez v25, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsContextMenuOpen:Z

    move/from16 v25, v0

    if-nez v25, :cond_36

    .line 8309
    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->findKikinSelection(ZZZ)Z

    .line 8316
    :cond_36
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    .line 8317
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mIsPotentialLongPress:Z

    goto/16 :goto_0

    .line 8176
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 8177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 8180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    move/from16 v25, v0

    if-eqz v25, :cond_37

    .line 8181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0xc

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 8184
    :cond_37
    const/16 v25, 0x7

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto/16 :goto_e

    .line 8189
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 8190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 8193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    move/from16 v25, v0

    if-eqz v25, :cond_38

    .line 8194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0xc

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 8197
    :cond_38
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    move/from16 v25, v0

    if-nez v25, :cond_3c

    .line 8198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3a

    .line 8200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    move/from16 v25, v0

    if-nez v25, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    move/from16 v25, v0

    if-eqz v25, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    move-object/from16 v25, v0

    if-eqz v25, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v25

    if-nez v25, :cond_33

    .line 8206
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_e

    .line 8220
    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->canZoomIn()Z

    move-result v25

    if-nez v25, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->canZoomOut()Z

    move-result v25

    if-eqz v25, :cond_33

    .line 8222
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-virtual/range {v25 .. v28}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 8231
    :cond_3c
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 8234
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    move/from16 v25, v0

    if-nez v25, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    move/from16 v25, v0

    if-nez v25, :cond_3e

    sget-boolean v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v25, :cond_3d

    sget-boolean v25, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v25, :cond_3e

    .line 8235
    :cond_3d
    const-string v25, "AutoTest"

    const-string v26, "[AutoProf](2102) [FPS][WEBVIEW][SCROLLING_PAN][FINISH]"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8240
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v25

    if-gez v25, :cond_40

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v25

    :goto_f
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->checkVerticalBouncingCallback(I)Z

    move-result v24

    .line 8241
    .local v24, springBack:Z
    if-nez v24, :cond_41

    .line 8271
    :cond_3f
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 8272
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8278
    .end local v24           #springBack:Z
    :pswitch_7
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 8279
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 8281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 8282
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 8285
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-nez v25, :cond_33

    .line 8286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_e

    .line 8240
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v27

    sub-int v25, v25, v27

    goto :goto_f

    .line 8248
    .restart local v24       #springBack:Z
    :cond_41
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    move-wide/from16 v25, v0

    sub-long v25, v12, v25

    const-wide/16 v27, 0xfa

    cmp-long v25, v25, v27

    if-gtz v25, :cond_3f

    .line 8249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-nez v25, :cond_42

    .line 8250
    const-string/jumbo v25, "webview"

    const-string v26, "Got null mVelocityTracker"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8257
    :goto_10
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 8261
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->doFling()V

    goto/16 :goto_e

    .line 8252
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_10

    .line 8326
    .end local v24           #springBack:Z
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    move/from16 v25, v0

    if-eqz v25, :cond_45

    .line 8328
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->hideMagnifyingGlass()V

    .line 8333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-eqz v25, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mShouldPerformKikinSearch:Z

    move/from16 v25, v0

    if-eqz v25, :cond_43

    .line 8334
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic;->performKikinSearch(Z)V

    .line 8339
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsPotentialLongPress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_44

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    move/from16 v25, v0

    if-nez v25, :cond_44

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsContextMenuOpen:Z

    move/from16 v25, v0

    if-nez v25, :cond_44

    .line 8340
    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->findKikinSelection(ZZZ)Z

    .line 8347
    :cond_44
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    .line 8348
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mIsPotentialLongPress:Z

    .line 8358
    :cond_45
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    goto/16 :goto_0

    .line 7843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 8174
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private hasValidSelectionRectangle()Z
    .locals 1

    .prologue
    .line 5702
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideMagnifyingGlass()V
    .locals 2

    .prologue
    .line 5664
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 5665
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/view/IMagnifyView;

    if-eqz v1, :cond_0

    .line 5666
    check-cast v0, Landroid/view/IMagnifyView;

    .end local v0           #view:Landroid/view/View;
    invoke-interface {v0}, Landroid/view/IMagnifyView;->hideMagnifier()V

    .line 5668
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsShowMagnifying:Z

    .line 5671
    :cond_0
    return-void
.end method

.method private hidePasteButton()V
    .locals 1

    .prologue
    .line 6922
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    if-eqz v0, :cond_0

    .line 6923
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->hide()V

    .line 6925
    :cond_0
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 6460
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 6461
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6462
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6464
    :cond_0
    return-void
.end method

.method private inFullScreenMode()Z
    .locals 1

    .prologue
    .line 7677
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2099
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;->init(Landroid/content/Context;)V

    .line 2100
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 2101
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 2102
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 2104
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2105
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 2106
    .local v2, slop:I
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    .line 2107
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 2108
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebViewClassic;->mDoubleTapSlopSquare:I

    .line 2109
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 2131
    .local v1, density:F
    iget v3, p0, Landroid/webkit/WebViewClassic;->NAV_SLOP:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    .line 2134
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, v1}, Landroid/webkit/ZoomManager;->init(F)V

    .line 2135
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mMaximumFling:I

    .line 2138
    const/high16 v3, 0x3f80

    mul-float v4, v1, v1

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebViewClassic;->DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

    .line 2140
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    .line 2141
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    .line 2143
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v3}, Landroid/webkit/WebView$PrivateAccess;->super_getScrollBarStyle()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->setScrollBarStyle(I)V

    .line 2146
    new-instance v3, Ljava/util/Vector;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    .line 2147
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    .line 2150
    new-instance v3, Landroid/webkit/WebViewSelectionMethod;

    invoke-direct {v3}, Landroid/webkit/WebViewSelectionMethod;-><init>()V

    iput-object v3, p0, Landroid/webkit/WebViewClassic;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    .line 2151
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.notes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->m_bIsNoteApp:Z

    .line 2152
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.browser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->m_bIsBrowserApp:Z

    .line 2153
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/webkit/WebViewPerfUtil;->init(Landroid/content/Context;)V

    .line 2154
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/webkit/WebViewThemeable;->getHighlightColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0, v3, v5}, Landroid/webkit/WebViewClassic;->updateSelectionColors(IZ)V

    .line 2156
    return-void
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3668
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V

    .line 3669
    return-void
.end method

.method private invalidateMagnifyingGlass(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, rects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v5, 0x1

    .line 5678
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 5679
    .local v1, view:Landroid/view/View;
    instance-of v3, v1, Landroid/view/IMagnifyView;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 5681
    check-cast v0, Landroid/view/IMagnifyView;

    .line 5682
    .local v0, magnifyingView:Landroid/view/IMagnifyView;
    const/high16 v2, 0x3f80

    .line 5684
    .local v2, zoom:F
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getLayerType()I

    move-result v3

    if-eq v3, v5, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5685
    iget v3, p0, Landroid/webkit/WebViewClassic;->zoomSizePx:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 5686
    const/high16 v3, 0x41c8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->zoomSizePx:F

    .line 5689
    :cond_0
    iget v4, p0, Landroid/webkit/WebViewClassic;->zoomSizePx:F

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    mul-float/2addr v3, v5

    div-float v2, v4, v3

    .line 5691
    :cond_1
    invoke-interface {v0, v2}, Landroid/view/IMagnifyView;->setMagnifierZoom(F)V

    .line 5692
    invoke-interface {v0}, Landroid/view/IMagnifyView;->invalidateMagnifier()V

    .line 5694
    .end local v0           #magnifyingView:Landroid/view/IMagnifyView;
    .end local v2           #zoom:F
    :cond_2
    return-void
.end method

.method private isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 6627
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 3

    .prologue
    .line 2252
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 8884
    packed-switch p1, :pswitch_data_0

    .line 8894
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 8886
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 8888
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 8890
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 8892
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 8884
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPageHandleNavKey(IJZI)V
    .locals 12
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"
    .parameter "metaState"

    .prologue
    .line 11043
    if-eqz p4, :cond_0

    .line 11044
    const/4 v5, 0x0

    .line 11049
    .local v5, keyEventAction:I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    and-int/lit8 v1, p5, 0x1

    and-int/lit8 v2, p5, 0x2

    or-int/2addr v1, v2

    and-int/lit8 v2, p5, 0x4

    or-int v8, v1, v2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 11054
    .local v0, event:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 11055
    return-void

    .line 11046
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    :cond_0
    const/4 v5, 0x1

    .restart local v5       #keyEventAction:I
    goto :goto_0
.end method

.method private loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 3126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3127
    .local v0, dataUrl:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3128
    const-string v1, "base64"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3129
    const-string v1, ";base64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    .line 3134
    return-void
.end method

.method private loadUrlImpl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 3083
    if-nez p1, :cond_0

    .line 3087
    :goto_0
    return-void

    .line 3086
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3046
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3047
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    if-eqz v1, :cond_0

    .line 3048
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewManager;->suspend()V

    .line 3049
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 3050
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 3051
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 3052
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_4

    .line 3053
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3060
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v1, :cond_5

    .line 3064
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hasValidSelectionRectangle()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-eqz v1, :cond_5

    .line 3072
    :cond_3
    :goto_1
    return-void

    .line 3055
    :cond_4
    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "mWebViewCore is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3071
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    goto :goto_1
.end method

.method private mHtcWebCore()Landroid/webkit/HTCWebCoreImpl;
    .locals 1

    .prologue
    .line 12259
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/HTCWebCoreImpl;->fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    return-object v0
.end method

.method private modifySelection(Ljava/util/List;ZZZ)V
    .locals 9
    .parameter
    .parameter "isFirstTouch"
    .parameter "isCheckingForTextAtPointOfTouch"
    .parameter "isExtendingSelection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, rects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v6, 0x0

    .line 5841
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 5845
    .local v0, hasValidRects:Z
    :goto_0
    if-eqz p3, :cond_2

    .line 5846
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mCanShowKikinDisabledToast:Z

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 5847
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->showKikinDisabledToast()V

    .line 5899
    :cond_0
    :goto_1
    return-void

    .end local v0           #hasValidRects:Z
    :cond_1
    move v0, v6

    .line 5841
    goto :goto_0

    .line 5853
    .restart local v0       #hasValidRects:Z
    :cond_2
    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    .line 5854
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mCanShowKikinDisabledToast:Z

    .line 5858
    :cond_3
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsContextMenuOpen:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v5, :cond_0

    .line 5862
    if-eqz v0, :cond_0

    .line 5864
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectionTracker:Ljava/lang/String;

    .line 5866
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/webkit/WebViewClassic;->mContentWidthBeforeCAB:F

    .line 5867
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/webkit/WebViewClassic;->mContentHeightBeforeCAB:F

    .line 5868
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    iput v5, p0, Landroid/webkit/WebViewClassic;->mInitialScale:F

    .line 5871
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 5874
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 5875
    .local v3, viewRect:Landroid/graphics/Rect;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 5876
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 5879
    .local v2, rect:Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    if-ne v5, v6, :cond_4

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_4

    .line 5880
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5875
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5886
    :cond_4
    invoke-direct {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 5887
    .local v4, webViewRect:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5888
    move-object v3, v2

    goto :goto_3

    .line 5893
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v4           #webViewRect:Landroid/graphics/Rect;
    :cond_5
    invoke-direct {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 5894
    .restart local v4       #webViewRect:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5897
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->invalidateMagnifyingGlass(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private native nativeCancelShowedRect()V
.end method

.method private native nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeCreate(ILjava/lang/String;Z)V
.end method

.method private native nativeCreateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I
.end method

.method private native nativeDebugDump()V
.end method

.method private static native nativeDestroy(I)V
.end method

.method private native nativeDiscardAllTextures()V
.end method

.method private native nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations(I)Z
.end method

.method private static native nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V
.end method

.method private native nativeGetBackgroundColor(I)I
.end method

.method private native nativeGetBaseLayer(I)I
.end method

.method private native nativeGetDrawGLFunction(I)I
.end method

.method private static native nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkit/QuadF;)I
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasContent()Z
.end method

.method private static native nativeMapLayerRect(IILandroid/graphics/Rect;)V
.end method

.method static native nativeOnTrimMemory(I)V
.end method

.method private native nativeScrollLayer(IIII)Z
.end method

.method private native nativeScrollableLayer(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method private native nativeSetBaseLayer(IIZZI)Z
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private static native nativeSetHwAccelerated(IZ)I
.end method

.method private native nativeSetIsScrolling(Z)V
.end method

.method private native nativeSetLayerPrepareArea(ILandroid/graphics/Rect;F)V
.end method

.method private static native nativeSetPauseDrawing(IZ)V
.end method

.method private native nativeSetSelectionColors(IIIIIIZ)V
.end method

.method private static native nativeSetTextSelection(II)V
.end method

.method private native nativeStopGL(I)V
.end method

.method private native nativeTileProfilingClear()V
.end method

.method private native nativeTileProfilingGetFloat(IILjava/lang/String;)F
.end method

.method private native nativeTileProfilingGetInt(IILjava/lang/String;)I
.end method

.method private native nativeTileProfilingNumFrames()I
.end method

.method private native nativeTileProfilingNumTilesInFrame(I)I
.end method

.method private native nativeTileProfilingStart()V
.end method

.method private native nativeTileProfilingStop()F
.end method

.method private native nativeUpdateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;F)V
.end method

.method private native nativeUseHardwareAccelSkia(Z)V
.end method

.method private native nativeWasLastDrawSuccessful()Z
.end method

.method private onHandleUiEvent(Landroid/view/MotionEvent;II)V
    .locals 4
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 1741
    packed-switch p2, :pswitch_data_0

    .line 1766
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1743
    :pswitch_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1744
    .local v0, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v0, :cond_0

    .line 1745
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->performLongClick()Z

    goto :goto_0

    .line 1750
    .end local v0           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :pswitch_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectText()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1754
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/ZoomManager;->handleDoubleTap(FF)V

    goto :goto_0

    .line 1757
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->onHandleUiTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1760
    :pswitch_4
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1761
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 1762
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->overrideLoading(Ljava/lang/String;)V

    goto :goto_0

    .line 1741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private onHandleUiTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "ev"

    .prologue
    .line 1769
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v12}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v3

    .line 1772
    .local v3, detector:Landroid/view/ScaleGestureDetector;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1773
    .local v0, action:I
    const/4 v12, 0x6

    if-ne v0, v12, :cond_1

    const/4 v6, 0x1

    .line 1774
    .local v6, pointerUp:Z
    :goto_0
    const/4 v12, 0x6

    if-eq v0, v12, :cond_0

    const/4 v12, 0x5

    if-ne v0, v12, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1777
    .local v1, configChanged:Z
    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1780
    .local v7, skipIndex:I
    :goto_2
    const/4 v8, 0x0

    .local v8, sumX:F
    const/4 v9, 0x0

    .line 1781
    .local v9, sumY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1782
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v2, :cond_5

    .line 1783
    if-ne v7, v5, :cond_4

    .line 1782
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1773
    .end local v1           #configChanged:Z
    .end local v2           #count:I
    .end local v5           #i:I
    .end local v6           #pointerUp:Z
    .end local v7           #skipIndex:I
    .end local v8           #sumX:F
    .end local v9           #sumY:F
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1774
    .restart local v6       #pointerUp:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1777
    .restart local v1       #configChanged:Z
    :cond_3
    const/4 v7, -0x1

    goto :goto_2

    .line 1784
    .restart local v2       #count:I
    .restart local v5       #i:I
    .restart local v7       #skipIndex:I
    .restart local v8       #sumX:F
    .restart local v9       #sumY:F
    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v8, v12

    .line 1785
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v9, v12

    goto :goto_4

    .line 1787
    :cond_5
    if-eqz v6, :cond_8

    add-int/lit8 v4, v2, -0x1

    .line 1788
    .local v4, div:I
    :goto_5
    int-to-float v12, v4

    div-float v10, v8, v12

    .line 1789
    .local v10, x:F
    int-to-float v12, v4

    div-float v11, v9, v12

    .line 1791
    .local v11, y:F
    if-eqz v1, :cond_6

    .line 1792
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 1793
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 1794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    iput-wide v12, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 1795
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->cancelLongPress()V

    .line 1796
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1799
    :cond_6
    if-eqz v3, :cond_a

    .line 1800
    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1801
    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    iput-wide v12, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 1804
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v12}, Landroid/webkit/ZoomManager;->supportsPanDuringZoom()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1825
    :cond_7
    :goto_6
    return-void

    .end local v4           #div:I
    .end local v10           #x:F
    .end local v11           #y:F
    :cond_8
    move v4, v2

    .line 1787
    goto :goto_5

    .line 1807
    .restart local v4       #div:I
    .restart local v10       #x:F
    .restart local v11       #y:F
    :cond_9
    const/4 v12, 0x3

    iput v12, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 1808
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_a

    .line 1809
    const-string v12, "int1"

    invoke-static {v12}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1814
    :cond_a
    const/4 v12, 0x5

    if-ne v0, v12, :cond_c

    .line 1815
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    .line 1816
    const/4 v0, 0x0

    .line 1824
    :cond_b
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-direct {p0, p1, v0, v12, v13}, Landroid/webkit/WebViewClassic;->handleTouchEventCommon(Landroid/view/MotionEvent;III)V

    goto :goto_6

    .line 1817
    :cond_c
    const/4 v12, 0x2

    if-ne v0, v12, :cond_b

    .line 1819
    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-ltz v12, :cond_7

    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_b

    goto :goto_6
.end method

.method private onZoomAnimationEnd()V
    .locals 2

    .prologue
    .line 6120
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6121
    return-void
.end method

.method private onZoomAnimationStart()V
    .locals 1

    .prologue
    .line 6114
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 6115
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 6117
    :cond_0
    return-void
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 9263
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 9264
    return-void
.end method

.method private performKikinSearch(Z)V
    .locals 5
    .parameter "shouldRetry"

    .prologue
    const/4 v4, 0x0

    .line 5943
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mShouldPerformKikinSearch:Z

    .line 5945
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-nez v1, :cond_0

    .line 5946
    new-instance v1, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v1, p0}, Lcom/kikin/KikinResultsViewController;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 5952
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v0

    .line 5953
    .local v0, selection:Ljava/lang/String;
    sget-boolean v1, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v1, :cond_1

    .line 5954
    const-string/jumbo v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5955
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5956
    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->doKikinSearch(Lcom/kikin/selection/Selection$Mode;)V

    .line 5981
    :goto_0
    return-void

    .line 5960
    :cond_2
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    .line 5966
    if-eqz p1, :cond_3

    .line 5967
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClassic$9;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewClassic$9;-><init>(Landroid/webkit/WebViewClassic;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5975
    :cond_3
    sget-boolean v1, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v1, :cond_4

    .line 5976
    const-string/jumbo v1, "webview"

    const-string v2, "We are done with all of our attempts to do easy search."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5977
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 5978
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private performKikinSearchOnChangedSelection()V
    .locals 4

    .prologue
    .line 5987
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClassic$10;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewClassic$10;-><init>(Landroid/webkit/WebViewClassic;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6001
    return-void
.end method

.method static pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 3528
    if-ge p2, p1, :cond_1

    .line 3530
    const/4 p0, 0x0

    .line 3539
    :cond_0
    :goto_0
    return p0

    .line 3532
    :cond_1
    if-gez p0, :cond_2

    .line 3533
    const/4 p0, 0x0

    goto :goto_0

    .line 3535
    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    .line 3536
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 4596
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 4601
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->abortAnimation()V

    .line 4602
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result p1

    .line 4603
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result p2

    .line 4604
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    sub-int v3, p1, v0

    .line 4605
    .local v3, dx:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v4, p2, v0

    .line 4607
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_0

    .line 4608
    const/4 v0, 0x0

    .line 4618
    :goto_0
    return v0

    .line 4610
    :cond_0
    if-eqz p3, :cond_2

    .line 4612
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HTCScroller;->startScroll(IIIII)V

    .line 4614
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4618
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 4612
    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebViewClassic;->computeDuration(II)I

    move-result v5

    goto :goto_1

    .line 4616
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private playKikinSound()V
    .locals 3

    .prologue
    .line 5709
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 5710
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x406

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 5714
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5715
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 5716
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5719
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_1
    :goto_0
    return-void

    .line 5718
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private postInvalidate()V
    .locals 1

    .prologue
    .line 11257
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->postInvalidate()V

    .line 11258
    return-void
.end method

.method private recordNewContentSize(IIZ)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 3683
    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 3684
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 3708
    :goto_0
    return-void

    .line 3689
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    if-eq v0, p2, :cond_3

    .line 3691
    :cond_1
    iput p1, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    .line 3692
    iput p2, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    .line 3695
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-nez v0, :cond_2

    .line 3697
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 3698
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v0}, Landroid/webkit/HTCScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3701
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v1}, Landroid/webkit/HTCScroller;->getFinalX()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTCScroller;->setFinalX(I)V

    .line 3702
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v1}, Landroid/webkit/HTCScroller;->getFinalY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTCScroller;->setFinalY(I)V

    .line 3705
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 3707
    :cond_3
    invoke-direct {p0, p3}, Landroid/webkit/WebViewClassic;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private relocateAutoCompletePopup()V
    .locals 2

    .prologue
    .line 6421
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 6422
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkit/AutoCompletePopup;->resetRect()V

    .line 6423
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 6425
    :cond_0
    return-void
.end method

.method private removeTouchHighlight()V
    .locals 1

    .prologue
    .line 5192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 5193
    return-void
.end method

.method private resetCaretTimer()V
    .locals 4

    .prologue
    const/16 v3, 0x90

    .line 7051
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7052
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v0, :cond_0

    .line 7053
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7056
    :cond_0
    return-void
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 5
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 2858
    const-string/jumbo v3, "scrollX"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2859
    .local v1, sx:I
    const-string/jumbo v3, "scrollY"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2861
    .local v2, sy:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    .line 2862
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    .line 2864
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 2865
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    .line 2866
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, p2}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 2867
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    .line 2868
    .local v0, scale:F
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryWidth:I

    .line 2869
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryHeight:I

    .line 2871
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 2872
    return-void
.end method

.method private saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 3
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3189
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x93

    new-instance v2, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    invoke-direct {v2, p1, p2, p3}, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;-><init>(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3191
    return-void
.end method

.method private static scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 6895
    iget v7, p3, Landroid/graphics/PointF;->x:F

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float v2, v7, v8

    .line 6896
    .local v2, abX:F
    iget v7, p3, Landroid/graphics/PointF;->y:F

    iget v8, p2, Landroid/graphics/PointF;->y:F

    sub-float v3, v7, v8

    .line 6897
    .local v3, abY:F
    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float v0, v7, v8

    .line 6900
    .local v0, ab2:F
    int-to-float v7, p0

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float v4, v7, v8

    .line 6901
    .local v4, apX:F
    int-to-float v7, p1

    iget v8, p2, Landroid/graphics/PointF;->y:F

    sub-float v5, v7, v8

    .line 6902
    .local v5, apY:F
    mul-float v7, v4, v2

    mul-float v8, v5, v3

    add-float v1, v7, v8

    .line 6903
    .local v1, abDotAP:F
    div-float v6, v1, v0

    .line 6904
    .local v6, scale:F
    return v6
.end method

.method private static scaleCoordinate(FFF)F
    .locals 2
    .parameter "scale"
    .parameter "coord1"
    .parameter "coord2"

    .prologue
    .line 8704
    sub-float v0, p2, p1

    .line 8705
    .local v0, diff:F
    mul-float v1, p0, v0

    add-float/2addr v1, p1

    return v1
.end method

.method private scaleTrackballX(FI)I
    .locals 4
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 8856
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 8857
    .local v1, xMove:I
    move v0, v1

    .line 8858
    .local v0, nextXMove:I
    if-lez v1, :cond_1

    .line 8859
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    .line 8860
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 8865
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    .line 8866
    return v1

    .line 8862
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    .line 8863
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 8870
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 8871
    .local v1, yMove:I
    move v0, v1

    .line 8872
    .local v0, nextYMove:I
    if-lez v1, :cond_1

    .line 8873
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    .line 8874
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 8879
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    .line 8880
    return v1

    .line 8876
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    .line 8877
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scrollEditIntoView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 7548
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7552
    .local v5, visibleRect:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7605
    :cond_0
    :goto_0
    return-void

    .line 7555
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 7556
    iget v6, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v7, p0, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    invoke-static {v6, v7, v5}, Landroid/webkit/WebViewClassic;->nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V

    .line 7557
    const/4 v6, 0x1

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7558
    .local v0, buffer:I
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v0

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7563
    .local v4, showRect:Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->calculateCaretTop()Landroid/graphics/Point;

    move-result-object v1

    .line 7564
    .local v1, caretTop:Landroid/graphics/Point;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 7566
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    if-ge v6, v7, :cond_6

    .line 7567
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 7568
    iget v6, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 7574
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 7576
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_7

    .line 7577
    iget v6, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 7578
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 7585
    :cond_3
    :goto_2
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7589
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    .line 7590
    .local v2, scrollX:I
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_8

    .line 7592
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 7597
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v3

    .line 7598
    .local v3, scrollY:I
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_9

    .line 7599
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 7604
    :cond_5
    :goto_4
    invoke-direct {p0, v2, v3, v11}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    goto/16 :goto_0

    .line 7570
    .end local v2           #scrollX:I
    .end local v3           #scrollY:I
    :cond_6
    iget v6, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 7571
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 7580
    :cond_7
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 7581
    iget v6, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 7593
    .restart local v2       #scrollX:I
    :cond_8
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_4

    .line 7595
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    goto :goto_3

    .line 7600
    .restart local v3       #scrollY:I
    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_5

    .line 7601
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    goto :goto_4
.end method

.method private scrollEditText(II)V
    .locals 6
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 10652
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v2

    int-to-float v0, v2

    .line 10653
    .local v0, maxScrollX:F
    int-to-float v2, p1

    div-float v1, v2, v0

    .line 10654
    .local v1, scrollPercentX:F
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    neg-int v3, p1

    neg-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10655
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v3, v4, p2, v5}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    .line 10657
    return-void
.end method

.method private scrollEditWithCursor()V
    .locals 19

    .prologue
    .line 8415
    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_0

    .line 8416
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v13

    .line 8417
    .local v13, x:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/webkit/WebViewClassic;->getTextScrollSpeed(III)F

    move-result v7

    .line 8419
    .local v7, scrollSpeedX:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v14

    .line 8420
    .local v14, y:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/webkit/WebViewClassic;->getTextScrollSpeed(III)F

    move-result v8

    .line 8422
    .local v8, scrollSpeedY:F
    const/4 v15, 0x0

    cmpl-float v15, v7, v15

    if-nez v15, :cond_1

    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-nez v15, :cond_1

    .line 8423
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    .line 8450
    .end local v7           #scrollSpeedX:F
    .end local v8           #scrollSpeedY:F
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_0
    :goto_0
    return-void

    .line 8425
    .restart local v7       #scrollSpeedX:F
    .restart local v8       #scrollSpeedY:F
    .restart local v13       #x:I
    .restart local v14       #y:I
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 8426
    .local v1, currentTime:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    sub-long v11, v1, v15

    .line 8427
    .local v11, timeSinceLastUpdate:J
    invoke-static {v7, v11, v12}, Landroid/webkit/WebViewClassic;->getTextScrollDelta(FJ)I

    move-result v5

    .line 8428
    .local v5, deltaX:I
    invoke-static {v8, v11, v12}, Landroid/webkit/WebViewClassic;->getTextScrollDelta(FJ)I

    move-result v6

    .line 8429
    .local v6, deltaY:I
    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 8430
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 8432
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x95

    const-wide/16 v17, 0x10

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 8435
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v15

    add-int v9, v15, v5

    .line 8436
    .local v9, scrollX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v15

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 8437
    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 8438
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v15

    add-int v10, v15, v6

    .line 8439
    .local v10, scrollY:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v15

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 8440
    const/4 v15, 0x0

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 8441
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/webkit/WebViewClassic;->scrollEditText(II)V

    .line 8442
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v3, v15, Landroid/graphics/Point;->x:I

    .line 8443
    .local v3, cursorX:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v4, v15, Landroid/graphics/Point;->y:I

    .line 8444
    .local v4, cursorY:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    sub-int v16, v13, v5

    sub-int v17, v14, v6

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Point;->set(II)V

    .line 8445
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    .line 8446
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v15, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method private scrollLayerTo(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4555
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, p1

    .line 4556
    .local v0, dx:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, p2

    .line 4557
    .local v1, dy:I
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_2

    .line 4585
    :cond_1
    :goto_0
    return-void

    .line 4560
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v2, :cond_6

    .line 4561
    iget v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftLayerId:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-ne v2, v3, :cond_3

    .line 4562
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 4563
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/QuadF;->offset(FF)V

    .line 4565
    :cond_3
    iget v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightLayerId:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-ne v2, v3, :cond_4

    .line 4566
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 4567
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/QuadF;->offset(FF)V

    .line 4573
    :cond_4
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    if-ne v2, v3, :cond_5

    .line 4575
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4576
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v2}, Landroid/webkit/AutoCompletePopup;->resetRect()V

    .line 4578
    :cond_5
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/webkit/WebViewClassic;->nativeScrollLayer(IIII)Z

    .line 4579
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 4580
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p2, v2, Landroid/graphics/Rect;->top:I

    .line 4581
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xc6

    iget v4, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 4583
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebView$PrivateAccess;->onScrollChanged(IIII)V

    .line 4584
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0

    .line 4569
    :cond_6
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v2

    if-lez v2, :cond_4

    .line 4571
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_1
.end method

.method private selectTextOnLongPress(Z)Z
    .locals 4
    .parameter "focusCandidateIsEditableText"

    .prologue
    .line 5440
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 5441
    .local v0, x:I
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 5442
    .local v1, y:I
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/webkit/WebViewClassic;->selectText(IIZZ)Z

    move-result v2

    return v2
.end method

.method private sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 11058
    const/4 v0, 0x0

    .line 11059
    .local v0, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 11076
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 11078
    const/4 v0, 0x0

    .line 11080
    :cond_0
    const/16 v1, 0x68

    .line 11081
    .local v1, eventHubAction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 11082
    const/16 v1, 0x67

    .line 11083
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/WebViewClassic;->keyCodeToSoundsEffect(I)I

    move-result v2

    .line 11084
    .local v2, sound:I
    if-eqz v2, :cond_1

    .line 11085
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 11088
    .end local v2           #sound:I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3, p1}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 11089
    return-void

    .line 11061
    .end local v1           #eventHubAction:I
    :sswitch_0
    const/16 v0, 0x82

    .line 11062
    goto :goto_0

    .line 11064
    :sswitch_1
    const/16 v0, 0x21

    .line 11065
    goto :goto_0

    .line 11067
    :sswitch_2
    const/16 v0, 0x11

    .line 11068
    goto :goto_0

    .line 11070
    :sswitch_3
    const/16 v0, 0x42

    .line 11071
    goto :goto_0

    .line 11073
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 11059
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 4624
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_1

    .line 4648
    :cond_0
    :goto_0
    return v1

    .line 4631
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result p1

    .line 4632
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result p2

    .line 4633
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v2, :cond_3

    .line 4635
    if-eqz p2, :cond_2

    .line 4636
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4637
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4638
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 4639
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 4646
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_2
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v1, p3, v1}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4648
    :cond_3
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setFindIsUp(Z)V
    .locals 0
    .parameter "isUp"

    .prologue
    .line 4363
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    .line 4364
    return-void
.end method

.method private setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 2
    .parameter "hit"

    .prologue
    .line 10149
    if-nez p1, :cond_1

    .line 10150
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 10169
    :cond_0
    :goto_0
    return-void

    .line 10153
    :cond_1
    new-instance v0, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v0}, Landroid/webkit/WebView$HitTestResult;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 10154
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10155
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V

    .line 10156
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 10158
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 10159
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 10161
    :cond_2
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 10162
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 10163
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 10164
    :cond_3
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-eqz v0, :cond_4

    .line 10165
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    goto :goto_0

    .line 10166
    :cond_4
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10167
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setHitTestTypeFromUrl(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 10120
    const/4 v1, 0x0

    .line 10121
    .local v1, substr:Ljava/lang/String;
    const-string v2, "geo:0,0?q="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10122
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 10123
    const-string v2, "geo:0,0?q="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 10141
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 10146
    :cond_0
    :goto_1
    return-void

    .line 10124
    :cond_1
    const-string/jumbo v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10125
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 10126
    const-string/jumbo v2, "tel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10127
    :cond_2
    const-string/jumbo v2, "mailto:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10128
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 10129
    const-string/jumbo v2, "mailto:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10131
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 10132
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    .line 10134
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsClickOnHyperlinkChecked:Z

    if-eqz v2, :cond_0

    .line 10135
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->onHyperlinkClicked()V

    .line 10136
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsClickOnHyperlinkChecked:Z

    goto :goto_1

    .line 10142
    :catch_0
    move-exception v0

    .line 10143
    .local v0, e:Ljava/lang/Throwable;
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode URL! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10144
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    goto :goto_1
.end method

.method public static setOverrideProxy(Landroid/net/ProxyProperties;)V
    .locals 3
    .parameter "proxyProperties"

    .prologue
    const/16 v2, 0xc1

    .line 1941
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1942
    :cond_0
    sget-object v1, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    if-eqz v1, :cond_2

    .line 1959
    :cond_1
    :goto_0
    return-void

    .line 1945
    :cond_2
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 1947
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1948
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 1949
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->setupProxyListener(Landroid/content/Context;)V

    goto :goto_0

    .line 1954
    .end local v0           #context:Landroid/content/Context;
    :cond_3
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1955
    .restart local v0       #context:Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 1956
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->disableProxyListener(Landroid/content/Context;)V

    .line 1958
    :cond_4
    invoke-static {v2, p0}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setShouldMonitorWebCoreThread()V
    .locals 0

    .prologue
    .line 11262
    invoke-static {}, Landroid/webkit/WebViewCore;->setShouldMonitorWebCoreThread()V

    .line 11263
    return-void
.end method

.method private setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 13
    .parameter "hit"

    .prologue
    .line 10271
    const/4 v6, 0x0

    .line 10272
    .local v6, transition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->shouldAnimateTo(Landroid/webkit/WebViewCore$WebKitHitTest;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10273
    new-instance v6, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    .end local v6           #transition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    invoke-direct {v6, p0}, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 10275
    .restart local v6       #transition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    :cond_0
    if-eqz p1, :cond_5

    iget-object v5, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    .line 10276
    .local v5, rects:[Landroid/graphics/Rect;
    :goto_0
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 10277
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 10278
    if-eqz v6, :cond_1

    .line 10279
    new-instance v8, Landroid/graphics/Region;

    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v8, v9}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v8, v6, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    .line 10281
    :cond_1
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->setEmpty()V

    .line 10283
    :cond_2
    if-eqz v5, :cond_7

    .line 10284
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    iget v9, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mTapHighlightColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 10285
    move-object v1, v5

    .local v1, arr$:[Landroid/graphics/Rect;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    .line 10286
    .local v4, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 10291
    .local v7, viewRect:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    if-lt v8, v9, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_4

    .line 10293
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v7}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 10285
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10275
    .end local v1           #arr$:[Landroid/graphics/Rect;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #rect:Landroid/graphics/Rect;
    .end local v5           #rects:[Landroid/graphics/Rect;
    .end local v7           #viewRect:Landroid/graphics/Rect;
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 10299
    .restart local v1       #arr$:[Landroid/graphics/Rect;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #rects:[Landroid/graphics/Rect;
    :cond_6
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 10300
    if-eqz v6, :cond_7

    iget-object v8, v6, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    if-eqz v8, :cond_7

    .line 10301
    new-instance v8, Landroid/graphics/Region;

    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v8, v9}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v8, v6, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->mNewRegion:Landroid/graphics/Region;

    .line 10302
    iput-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    .line 10303
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    const-string/jumbo v9, "progress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 10305
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 10308
    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    .end local v1           #arr$:[Landroid/graphics/Rect;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_7
    return-void
.end method

.method private setupPackageListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2048
    const-class v4, Landroid/webkit/WebViewClassic;

    monitor-enter v4

    .line 2052
    :try_start_0
    sget-boolean v3, Landroid/webkit/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    if-eqz v3, :cond_0

    .line 2053
    monitor-exit v4

    .line 2092
    :goto_0
    return-void

    .line 2056
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2057
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2058
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2059
    new-instance v1, Landroid/webkit/WebViewClassic$PackageListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkit/WebViewClassic$PackageListener;-><init>(Landroid/webkit/WebViewClassic$1;)V

    .line 2060
    .local v1, packageListener:Landroid/content/BroadcastReceiver;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2061
    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    .line 2062
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    new-instance v2, Landroid/webkit/WebViewClassic$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewClassic$1;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 2091
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2062
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #packageListener:Landroid/content/BroadcastReceiver;
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static declared-synchronized setupProxyListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1965
    const-class v3, Landroid/webkit/WebViewClassic;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1976
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 1968
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1969
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1970
    new-instance v2, Landroid/webkit/WebViewClassic$ProxyReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/webkit/WebViewClassic$ProxyReceiver;-><init>(Landroid/webkit/WebViewClassic$1;)V

    sput-object v2, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    .line 1971
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1973
    .local v0, currentProxy:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1974
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1965
    .end local v0           #currentProxy:Landroid/content/Intent;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static setupTrustStorageListener(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1912
    sget-object v2, Landroid/webkit/WebViewClassic;->sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

    if-eqz v2, :cond_1

    .line 1923
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1916
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1917
    new-instance v2, Landroid/webkit/WebViewClassic$TrustStorageListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/webkit/WebViewClassic$TrustStorageListener;-><init>(Landroid/webkit/WebViewClassic$1;)V

    sput-object v2, Landroid/webkit/WebViewClassic;->sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

    .line 1918
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewClassic;->sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1920
    .local v0, current:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1921
    invoke-static {}, Landroid/webkit/WebViewClassic;->handleCertTrustChanged()V

    goto :goto_0
.end method

.method private setupWebkitSelect()Z
    .locals 1

    .prologue
    .line 6989
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setupWebkitSelect(Z)Z

    move-result v0

    return v0
.end method

.method private setupWebkitSelect(Z)Z
    .locals 2
    .parameter "focusCandidateIsEditableText"

    .prologue
    const/4 v0, 0x0

    .line 6998
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 6999
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startSelectActionMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7006
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 7021
    :goto_0
    return v0

    .line 7009
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startSelectingText()V

    .line 7010
    const/4 v1, 0x3

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 7015
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7016
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    .line 7017
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShouldPerformKikinSearch:Z

    .line 7021
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldAnimateTo(Landroid/webkit/WebViewCore$WebKitHitTest;)Z
    .locals 1
    .parameter "hit"

    .prologue
    .line 10267
    const/4 v0, 0x0

    return v0
.end method

.method private shouldDrawHighlightRect()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10172
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    if-nez v1, :cond_1

    .line 10184
    :cond_0
    :goto_0
    return v0

    .line 10175
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10178
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10179
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 10181
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v1, :cond_0

    .line 10184
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z

    goto :goto_0
.end method

.method private showKikinDisabledToast()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6008
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "KIKIN_DISABLED_STATE"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 6009
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v6, "com.kikin.easySearch.disabled"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 6013
    .local v2, hasShownDisabledMessage:Z
    if-nez v2, :cond_0

    .line 6014
    new-instance v4, Lcom/kikin/requests/RequestSettings;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/kikin/requests/RequestSettings;-><init>(Landroid/content/Context;)V

    .line 6015
    .local v4, settings:Lcom/kikin/requests/RequestSettings;
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40700ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6017
    .local v0, base:Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/kikin/requests/RequestSettings;->getAppName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 6018
    .local v5, toastMessage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 6021
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6022
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "com.kikin.easySearch.disabled"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6023
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6025
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #settings:Lcom/kikin/requests/RequestSettings;
    .end local v5           #toastMessage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showMagnifyingGlass(II)V
    .locals 7
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v6, 0x1

    .line 5644
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 5645
    .local v1, rootView:Landroid/view/View;
    instance-of v3, v1, Landroid/view/IMagnifyView;

    if-eqz v3, :cond_0

    .line 5647
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 5648
    .local v0, location:[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5651
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int v3, p1, v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    aget v4, v0, v6

    sub-int v4, p2, v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 5653
    .local v2, rootViewTouchPosition:Landroid/graphics/Point;
    check-cast v1, Landroid/view/IMagnifyView;

    .end local v1           #rootView:Landroid/view/View;
    invoke-interface {v1, v2}, Landroid/view/IMagnifyView;->showMagnifier(Landroid/graphics/Point;)V

    .line 5655
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mIsShowMagnifying:Z

    .line 5658
    .end local v0           #location:[I
    .end local v2           #rootViewTouchPosition:Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method private showPasteWindow()V
    .locals 0

    .prologue
    .line 6856
    return-void
.end method

.method private snapDraggingCursor()V
    .locals 9

    .prologue
    .line 8682
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v7, v7, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v8, v8, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewClassic;->scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    .line 8686
    .local v2, scale:F
    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 8687
    const/high16 v5, 0x3f80

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 8688
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v5, v6}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v0

    .line 8690
    .local v0, newX:F
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v5, v6}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v1

    .line 8692
    .local v1, newY:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 8693
    .local v3, x:I
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 8694
    .local v4, y:I
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v5, :cond_0

    .line 8695
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 8697
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 8700
    :cond_0
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 8701
    return-void
.end method

.method private startDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 8469
    invoke-static {v2}, Landroid/webkit/WebViewPerfUtil;->getCnt(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0, v2}, Landroid/webkit/WebViewPerfUtil;->acquireWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 8470
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 8472
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 8474
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8476
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v0, :cond_2

    .line 8477
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->useFirstDrag:Z

    .line 8481
    :cond_2
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 8483
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I

    if-eq v0, v1, :cond_4

    .line 8485
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    .line 8487
    :cond_4
    return-void
.end method

.method private startPrivateBrowsing()V
    .locals 2

    .prologue
    .line 3329
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettingsClassic;->setPrivateBrowsingEnabled(Z)V

    .line 3330
    return-void
.end method

.method private startScrollingLayer(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 7727
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    .line 7737
    :cond_0
    :goto_0
    return-void

    .line 7730
    :cond_1
    float-to-int v0, p1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    .line 7731
    .local v2, contentX:I
    float-to-int v0, p2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v3

    .line 7732
    .local v3, contentY:I
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->nativeScrollableLayer(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    .line 7734
    iget v0, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-eqz v0, :cond_0

    .line 7735
    const/16 v0, 0x9

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto :goto_0
.end method

.method private startSelectActionMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6818
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct {v0}, Landroid/webkit/EditableSelectActionModeCallback;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    .line 6823
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_0

    .line 6824
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    check-cast v0, Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectActionModeCallback;->setShouldShowKikinResultsContainer(Z)V

    .line 6829
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/webkit/SelectionCallback;->setTextSelected(Z)V

    .line 6830
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-interface {v0, p0}, Landroid/webkit/SelectionCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 6837
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_4

    .line 6846
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 6850
    :goto_2
    return v2

    .line 6818
    :cond_2
    new-instance v0, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v0}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 6829
    goto :goto_1

    .line 6849
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    move v2, v1

    .line 6850
    goto :goto_2
.end method

.method private startSelectingText()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v1, 0x1

    .line 6181
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    .line 6182
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 6184
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mEnableAnchorAnimation:Z

    if-eqz v0, :cond_0

    .line 6186
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 6187
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6192
    :goto_0
    return-void

    .line 6190
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v0, v3}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->setAlpha(I)V

    goto :goto_0
.end method

.method private startTouch(FFJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 8454
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mStartTouchX:I

    .line 8455
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mStartTouchY:I

    .line 8456
    iput-wide p3, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 8457
    const-string v0, "int1"

    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8458
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 8461
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->usePopupAnchor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8462
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->hideSelectionPopups()V

    .line 8465
    :cond_0
    return-void
.end method

.method private stopTouch()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 8566
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8567
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->performKikinSearchOnChangedSelection()V

    .line 8570
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v0}, Landroid/webkit/HTCScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 8573
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 8574
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8575
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 8577
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0, v3}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 8578
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 8587
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 8588
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8589
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8593
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_4

    .line 8594
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0}, Landroid/webkit/OverScrollGlow;->releaseAll()V

    .line 8597
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->stopScroll()V

    .line 8598
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_7

    .line 8603
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->usePopupAnchor:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v0, v3, :cond_5

    .line 8608
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebViewClassic;->showQuickAction(J)V

    .line 8609
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    const/16 v1, 0x54e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendEmptyMessage(I)Z

    .line 8613
    :cond_5
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 8614
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 8615
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_6

    .line 8616
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetCaretTimer()V

    .line 8618
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8620
    :cond_7
    return-void
.end method

.method private updateHwAccelerated()V
    .locals 4

    .prologue
    .line 11189
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    .line 11203
    :cond_0
    :goto_0
    return-void

    .line 11192
    :cond_1
    const/4 v0, 0x0

    .line 11193
    .local v0, hwAccelerated:Z
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayerType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 11195
    const/4 v0, 0x1

    .line 11199
    :cond_2
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->nativeSetHwAccelerated(IZ)I

    move-result v1

    .line 11200
    .local v1, result:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 11201
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->contentDraw()V

    goto :goto_0
.end method

.method private updateSelectionPopup()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xfa

    const/16 v2, 0x54e

    const/16 v1, 0x90

    .line 11627
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->usePopupAnchor:Z

    if-nez v0, :cond_1

    .line 11663
    :cond_0
    :goto_0
    return-void

    .line 11631
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_2

    .line 11632
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11633
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11636
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_0

    .line 11637
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-eqz v0, :cond_4

    .line 11646
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11647
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->hideSelectionPopups()V

    .line 11650
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v0, :cond_4

    .line 11651
    invoke-virtual {p0, v3, v4}, Landroid/webkit/WebViewClassic;->showQuickAction(J)V

    .line 11655
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11656
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->hideSelectionPopups()V

    .line 11658
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v0, :cond_0

    .line 11659
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewClassic$SelectionHandler;->removeMessages(I)V

    .line 11660
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 6
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    const/16 v5, 0x90

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10553
    sget-boolean v2, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v2, :cond_0

    .line 10554
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WebViewClassic::updateTextSelectionFromMessage] >> mTextGeneration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " textGeneration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nnodePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nmStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10558
    :cond_0
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    if-ne p2, v2, :cond_1

    .line 10559
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-ne v2, p1, :cond_1

    .line 10560
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget v3, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 10563
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v3, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->nativeSetTextSelection(II)V

    .line 10565
    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    if-eq v2, v0, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_3

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v3, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    if-eq v2, v3, :cond_3

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 10568
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 10569
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 10570
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 10648
    :goto_0
    return-void

    .line 10573
    :cond_3
    sget-boolean v2, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v2, :cond_4

    .line 10574
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data selection pointer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\tdata.mStart:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\tdata.mEnd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\tmFieldPointer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\tnodePointer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10576
    :cond_4
    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    if-eqz v2, :cond_14

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v3, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-eqz v2, :cond_14

    .line 10579
    :cond_5
    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v3, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    if-ne v2, v3, :cond_c

    :goto_1
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    .line 10580
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 10587
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 10639
    :cond_7
    :goto_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10640
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_8

    .line 10641
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 10642
    :cond_8
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_a

    :cond_9
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_b

    .line 10643
    :cond_a
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 10647
    :cond_b
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 10579
    goto :goto_1

    .line 10589
    :cond_d
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_12

    .line 10591
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->canUpdateHandler:Z

    if-eqz v0, :cond_f

    .line 10594
    :cond_e
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->canUpdateHandler:Z

    .line 10597
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_11

    .line 10598
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setupWebkitSelect(Z)Z

    .line 10612
    :cond_f
    :goto_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_7

    .line 10614
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-eqz v0, :cond_10

    .line 10615
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    .line 10616
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    .line 10619
    :cond_10
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetCaretTimer()V

    goto :goto_2

    .line 10602
    :cond_11
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z

    goto :goto_3

    .line 10604
    :cond_12
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v0, :cond_13

    .line 10605
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    goto :goto_3

    .line 10607
    :cond_13
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    if-nez v0, :cond_f

    .line 10609
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->adjustSelectionCursors()V

    goto :goto_3

    .line 10626
    :cond_14
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    if-nez v0, :cond_17

    .line 10628
    :cond_16
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 10630
    :cond_17
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10632
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 10633
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2
.end method

.method private updateWebkitSelection()V
    .locals 7

    .prologue
    const/16 v6, 0xd5

    const/4 v5, 0x3

    .line 7025
    const/4 v1, 0x0

    .line 7026
    .local v1, handles:[I
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v2, :cond_0

    .line 7027
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 7029
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v2, :cond_2

    .line 7030
    const/4 v2, 0x4

    new-array v1, v2, [I

    .line 7031
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 7034
    iget v2, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-eqz v2, :cond_1

    .line 7036
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I

    .line 7037
    .local v0, caretHeight:I
    const/4 v2, 0x1

    aget v3, v1, v2

    shr-int/lit8 v4, v0, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v4, v0, v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 7039
    aget v2, v1, v5

    iget v3, p0, Landroid/webkit/WebViewClassic;->mSelectRightCaretHeight:I

    shr-int/lit8 v3, v3, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v1, v5

    .line 7046
    .end local v0           #caretHeight:I
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 7047
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v6, v1}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 7048
    return-void

    .line 7044
    :cond_2
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->nativeSetTextSelection(II)V

    goto :goto_0
.end method

.method private viewInvalidate()V
    .locals 0

    .prologue
    .line 11034
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 11035
    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3647
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    .line 3648
    .local v1, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    .line 3649
    .local v0, dy:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    int-to-float v3, p1

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, p2

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v0

    int-to-float v5, p3

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v6, p4

    mul-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 3653
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3658
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v8

    .line 3659
    .local v8, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v7

    .line 3660
    .local v7, dy:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    int-to-float v1, p3

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v3, v1

    int-to-float v1, p4

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v4, v1, v7

    int-to-float v1, p5

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v5, v1

    int-to-float v1, p6

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v6, v1, v7

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 3665
    return-void
.end method

.method private viewToContentDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 3562
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "contentRect"
    .parameter "viewRect"

    .prologue
    .line 7485
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentXf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 7490
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentYf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 7492
    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentXf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 7493
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentYf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 7494
    return-void
.end method

.method private viewToContentXf(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 3587
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private viewToContentYf(I)F
    .locals 2
    .parameter "y"

    .prologue
    .line 3596
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public EndAnimationZoomOut()V
    .locals 0

    .prologue
    .line 12492
    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 12382
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->ownerActivityContext:Ljava/lang/ref/WeakReference;

    .line 12383
    return-void
.end method

.method public StartAnimationZoomOut(ZF)V
    .locals 0
    .parameter "bNeedCallBack"
    .parameter "fOriginalScale"

    .prologue
    .line 12486
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "object"
    .parameter "name"

    .prologue
    .line 4888
    if-nez p1, :cond_0

    .line 4895
    :goto_0
    return-void

    .line 4891
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4892
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 4893
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4894
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method adjustDefaultZoomDensity(I)V
    .locals 3
    .parameter "zoomDensity"

    .prologue
    .line 2290
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 2292
    .local v0, density:F
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->updateDefaultZoomDensity(F)V

    .line 2293
    return-void
.end method

.method autoFillForm(I)V
    .locals 3
    .parameter "autoFillQueryId"

    .prologue
    .line 11163
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x94

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 11165
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3227
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 3228
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 3229
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3230
    monitor-exit v0

    .line 3232
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 3234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4
    .parameter "steps"

    .prologue
    const/4 v2, 0x0

    .line 3279
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 3280
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 3281
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3282
    monitor-exit v0

    .line 3285
    :goto_0
    return v2

    .line 3284
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    add-int v1, v3, p1

    .line 3285
    .local v1, newIndex:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 3287
    .end local v1           #newIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canGoForward()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3256
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 3257
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 3258
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3259
    monitor-exit v0

    .line 3261
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 3263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canZoomIn()Z
    .locals 1

    .prologue
    .line 9162
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 9170
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method cancelShowedRect()V
    .locals 0

    .prologue
    .line 10442
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeCancelShowedRect()V

    .line 10443
    return-void
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 2

    .prologue
    .line 3404
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3407
    :goto_0
    return-object v0

    .line 3405
    :cond_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 3406
    .local v0, result:Landroid/graphics/Picture;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V

    goto :goto_0
.end method

.method centerFitRect(Landroid/graphics/Rect;)V
    .locals 27
    .parameter "rect"

    .prologue
    .line 9215
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 9216
    .local v17, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 9217
    .local v12, rectHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v20

    .line 9218
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v19

    .line 9219
    .local v19, viewHeight:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v12

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 9221
    .local v18, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v18

    .line 9222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v23

    if-nez v23, :cond_0

    .line 9223
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    div-int/lit8 v24, v17, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v23

    div-int/lit8 v24, v20, 0x2

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    div-int/lit8 v25, v12, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v24

    div-int/lit8 v25, v19, 0x2

    sub-int v24, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    .line 9258
    :goto_0
    return-void

    .line 9227
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    .line 9228
    .local v5, actualScale:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v10, v23, v24

    .line 9229
    .local v10, oldScreenX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v18

    .line 9230
    .local v15, rectViewX:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v14, v23, v18

    .line 9231
    .local v14, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v7, v23, v18

    .line 9232
    .local v7, newMaxWidth:F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v14

    const/high16 v24, 0x4000

    div-float v8, v23, v24

    .line 9234
    .local v8, newScreenX:F
    cmpl-float v23, v8, v15

    if-lez v23, :cond_3

    .line 9235
    move v8, v15

    .line 9239
    :cond_1
    :goto_1
    mul-float v23, v10, v18

    mul-float v24, v8, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v21, v23, v24

    .line 9241
    .local v21, zoomCenterX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 9243
    .local v11, oldScreenY:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v16, v23, v24

    .line 9244
    .local v16, rectViewY:F
    int-to-float v0, v12

    move/from16 v23, v0

    mul-float v13, v23, v18

    .line 9245
    .local v13, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v6, v23, v24

    .line 9246
    .local v6, newMaxHeight:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x4000

    div-float v9, v23, v24

    .line 9248
    .local v9, newScreenY:F
    cmpl-float v23, v9, v16

    if-lez v23, :cond_4

    .line 9249
    move/from16 v9, v16

    .line 9253
    :cond_2
    :goto_2
    mul-float v23, v11, v18

    mul-float v24, v9, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v22, v23, v24

    .line 9255
    .local v22, zoomCenterY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 9256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto/16 :goto_0

    .line 9236
    .end local v6           #newMaxHeight:F
    .end local v9           #newScreenY:F
    .end local v11           #oldScreenY:F
    .end local v13           #rectViewHeight:F
    .end local v16           #rectViewY:F
    .end local v21           #zoomCenterX:F
    .end local v22           #zoomCenterY:F
    :cond_3
    sub-float v23, v7, v15

    sub-float v23, v23, v14

    cmpl-float v23, v8, v23

    if-lez v23, :cond_1

    .line 9237
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v7, v15

    sub-float v8, v23, v24

    goto/16 :goto_1

    .line 9250
    .restart local v6       #newMaxHeight:F
    .restart local v9       #newScreenY:F
    .restart local v11       #oldScreenY:F
    .restart local v13       #rectViewHeight:F
    .restart local v16       #rectViewY:F
    .restart local v21       #zoomCenterX:F
    :cond_4
    sub-float v23, v6, v16

    sub-float v23, v23, v13

    cmpl-float v23, v9, v23

    if-lez v23, :cond_2

    .line 9251
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v6, v16

    sub-float v9, v23, v24

    goto :goto_2
.end method

.method public clearCache(Z)V
    .locals 4
    .parameter "includeDiskFiles"

    .prologue
    const/4 v1, 0x0

    .line 4220
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x6f

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4222
    return-void

    :cond_0
    move v0, v1

    .line 4220
    goto :goto_0
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 4229
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 4230
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 4232
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 4239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 4240
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4241
    return-void
.end method

.method public clearMatches()V
    .locals 3

    .prologue
    const/16 v2, 0xdd

    .line 4427
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    .line 4431
    :goto_0
    return-void

    .line 4429
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 4430
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 4248
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4249
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3393
    iput v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    .line 3394
    iput v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    .line 3395
    invoke-virtual {p0, v0, v0, v0}, Landroid/webkit/WebViewClassic;->setBaseLayer(IZZ)V

    .line 3396
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3397
    return-void
.end method

.method public clearViewState()V
    .locals 1

    .prologue
    .line 2976
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    .line 2977
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 2978
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 2979
    return-void
.end method

.method public clearWebCoreMemoryCache()V
    .locals 1

    .prologue
    .line 12545
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 12546
    return-void
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 3956
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 3940
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 3943
    .local v1, range:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    .line 3944
    .local v2, scrollX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v0

    .line 3945
    .local v0, overscrollRight:I
    if-gez v2, :cond_1

    .line 3946
    sub-int/2addr v1, v2

    .line 3951
    :cond_0
    :goto_0
    return v1

    .line 3947
    :cond_1
    if-le v2, v0, :cond_0

    .line 3948
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method computeMaxScrollX()I
    .locals 2

    .prologue
    .line 8974
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeMaxScrollY()I
    .locals 2

    .prologue
    .line 8982
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeReadingLevelScale(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 3424
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->computeReadingLevelScale(F)F

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 23

    .prologue
    .line 4472
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v3}, Landroid/webkit/HTCScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4473
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    .line 4474
    .local v6, oldX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    .line 4475
    .local v7, oldY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v3}, Landroid/webkit/HTCScroller;->getCurrX()I

    move-result v21

    .line 4476
    .local v21, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v3}, Landroid/webkit/HTCScroller;->getCurrY()I

    move-result v22

    .line 4478
    .local v22, y:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4480
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v3}, Landroid/webkit/HTCScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4481
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v8

    .line 4482
    .local v8, rangeX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v9

    .line 4483
    .local v9, rangeY:I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    .line 4486
    .local v10, overflingDistance:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 4487
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 4488
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 4489
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->right:I

    .line 4490
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 4492
    const/4 v10, 0x0

    .line 4501
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    sub-int v4, v21, v6

    sub-int v5, v22, v7

    const/4 v12, 0x0

    move v11, v10

    invoke-virtual/range {v3 .. v12}, Landroid/webkit/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    .line 4505
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v3, :cond_1

    .line 4506
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move/from16 v4, v21

    move/from16 v5, v22

    invoke-virtual/range {v3 .. v9}, Landroid/webkit/OverScrollGlow;->absorbGlow(IIIIII)V

    .line 4552
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v8           #rangeX:I
    .end local v9           #rangeY:I
    .end local v10           #overflingDistance:I
    .end local v21           #x:I
    .end local v22           #y:I
    :cond_1
    :goto_1
    return-void

    .line 4493
    .restart local v6       #oldX:I
    .restart local v7       #oldY:I
    .restart local v8       #rangeX:I
    .restart local v9       #rangeY:I
    .restart local v10       #overflingDistance:I
    .restart local v21       #x:I
    .restart local v22       #y:I
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 4494
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v6

    .line 4495
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v7

    .line 4496
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v8

    .line 4497
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v9

    .line 4498
    const/4 v10, 0x0

    goto :goto_0

    .line 4509
    .end local v8           #rangeX:I
    .end local v9           #rangeY:I
    .end local v10           #overflingDistance:I
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    .line 4511
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V

    .line 4527
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->abortAnimation()V

    .line 4528
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 4530
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_4

    sget-boolean v3, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v3, :cond_5

    .line 4531
    :cond_4
    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](2102) [FPS][WEBVIEW][SCROLLING_FLING][FINISH]\u2026"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4534
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_6

    .line 4535
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 4536
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v3, :cond_6

    .line 4537
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4540
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    if-ne v6, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    if-eq v7, v3, :cond_8

    .line 4541
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 4544
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 4545
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    goto/16 :goto_1

    .line 4512
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_a

    .line 4513
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebViewClassic;->scrollEditText(II)V

    goto :goto_2

    .line 4516
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v8

    .line 4517
    .restart local v8       #rangeX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v9

    .line 4519
    .restart local v9       #rangeY:I
    if-nez v22, :cond_b

    .line 4520
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    sub-int v12, v21, v6

    sub-int v13, v22, v7

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v11 .. v20}, Landroid/webkit/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    .line 4524
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 4525
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    goto/16 :goto_2

    .line 4550
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v8           #rangeX:I
    .end local v9           #rangeY:I
    .end local v21           #x:I
    .end local v22           #y:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v3}, Landroid/webkit/WebView$PrivateAccess;->super_computeScroll()V

    goto/16 :goto_1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 3986
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 3970
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v1

    .line 3973
    .local v1, range:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    .line 3974
    .local v2, scrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v0

    .line 3975
    .local v0, overscrollBottom:I
    if-gez v2, :cond_1

    .line 3976
    sub-int/2addr v1, v2

    .line 3981
    :cond_0
    :goto_0
    return v1

    .line 3977
    :cond_1
    if-le v2, v0, :cond_0

    .line 3978
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method protected contentInvalidateAll()V
    .locals 2

    .prologue
    .line 11173
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    .line 11174
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 11176
    :cond_0
    return-void
.end method

.method contentToViewDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 3606
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 3614
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 3622
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 4256
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 7

    .prologue
    .line 7160
    const/4 v1, 0x0

    .line 7161
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 7165
    .local v3, selection:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 7171
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const v5, 0x104039b

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 7174
    const/4 v1, 0x1

    .line 7175
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 7177
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7179
    .end local v0           #cm:Landroid/content/ClipboardManager;
    :cond_0
    const/4 v4, 0x4

    new-array v2, v4, [I

    .line 7180
    .local v2, handles:[I
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 7181
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0xd2

    invoke-virtual {v4, v5, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7183
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 7184
    return v1
.end method

.method public cutSelection()V
    .locals 3

    .prologue
    .line 7193
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 7194
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 7195
    .local v0, handles:[I
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 7196
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xd3

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7197
    return-void
.end method

.method public debugDump()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11106
    return-void
.end method

.method deleteSelection(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 6391
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    .line 6392
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2, v4}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(III)V

    .line 6394
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 6396
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 2610
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2611
    const-string/jumbo v0, "webview"

    const-string v1, "Error: WebView.destroy() called while still attached!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 2620
    sget-boolean v0, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v0, :cond_1

    .line 2621
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureFunctorDetached()V

    .line 2626
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->destroyJava()V

    .line 2627
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->destroyNative()V

    .line 2628
    return-void
.end method

.method public disableMultiTouch()V
    .locals 0

    .prologue
    .line 12318
    return-void
.end method

.method public discardAllTextures()V
    .locals 0

    .prologue
    .line 11180
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeDiscardAllTextures()V

    .line 11181
    return-void
.end method

.method dismissZoomControl()V
    .locals 1

    .prologue
    .line 9142
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 9143
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 7623
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 7647
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView$PrivateAccess;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 7625
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7631
    :pswitch_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 7632
    .local v0, location:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7635
    const/4 v1, 0x0

    goto :goto_1

    .line 7639
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 7623
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public doKikinSearch(Lcom/kikin/selection/Selection$Mode;)V
    .locals 6
    .parameter "selectionMode"

    .prologue
    const/16 v5, 0x12f

    const/16 v4, 0x12d

    .line 5754
    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    if-ne p1, v1, :cond_1

    .line 5756
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kikin/analytics/AnalyticsTrackerEvent;->KIKIN_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v1, v2}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    .line 5764
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectionTracker:Ljava/lang/String;

    .line 5768
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5769
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v5, p1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 5770
    return-void

    .line 5757
    :cond_1
    sget-object v1, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    if-ne p1, v1, :cond_0

    .line 5758
    new-instance v0, Landroid/webkit/WebViewCore$UpdateSelectionData;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectionTracker:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebViewCore$UpdateSelectionData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5759
    .local v0, usd:Landroid/webkit/WebViewCore$UpdateSelectionData;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5760
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v4, v0}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public doKikinSearch(Lcom/kikin/selection/Selection;)V
    .locals 6
    .parameter "selection"

    .prologue
    const/4 v5, 0x0

    .line 5780
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 5781
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/kikin/selection/Selection;->setUrl(Landroid/net/Uri;)V

    .line 5783
    sget-object v3, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->getMode()Lcom/kikin/selection/Selection$Mode;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 5784
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 5787
    .local v1, selectionString:Ljava/lang/String;
    invoke-static {v1, v5, v5}, Lcom/kikin/KikinCore;->nativeGetTextEntity(Ljava/lang/String;II)Lcom/kikin/Range;

    move-result-object v0

    .line 5788
    .local v0, range:Lcom/kikin/Range;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/kikin/Range;->getStartOffset()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/kikin/Range;->getEndOffset()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 5789
    invoke-virtual {v0}, Lcom/kikin/Range;->getSelectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/kikin/selection/Selection;->setSelectionType(Ljava/lang/String;)V

    .line 5790
    invoke-virtual {v0}, Lcom/kikin/Range;->getSelectionLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/kikin/selection/Selection;->setSelectionLanguage(Ljava/lang/String;)V

    .line 5796
    :goto_0
    invoke-virtual {p1, v1}, Lcom/kikin/selection/Selection;->setHl(Ljava/lang/String;)V

    .line 5797
    invoke-virtual {p1, v1}, Lcom/kikin/selection/Selection;->setTouchedWord(Ljava/lang/String;)V

    .line 5800
    .end local v0           #range:Lcom/kikin/Range;
    .end local v1           #selectionString:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v3, p1}, Lcom/kikin/KikinResultsViewController;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    .line 5802
    sget-object v3, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->getMode()Lcom/kikin/selection/Selection$Mode;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 5803
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v3}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5804
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->updateSelectionInCAB(Ljava/lang/String;)V

    .line 5830
    :cond_1
    :goto_1
    return-void

    .line 5793
    .restart local v0       #range:Lcom/kikin/Range;
    .restart local v1       #selectionString:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    invoke-virtual {p1, v3}, Lcom/kikin/selection/Selection;->setSelectionType(Lcom/kikin/selection/SelectionType;)V

    goto :goto_0

    .line 5806
    .end local v0           #range:Lcom/kikin/Range;
    .end local v1           #selectionString:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    if-eqz v3, :cond_4

    .line 5807
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    check-cast v3, Landroid/webkit/SelectActionModeCallback;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/SelectActionModeCallback;->setShouldShowKikinResultsContainer(Z)V

    .line 5816
    :cond_4
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_6

    .line 5818
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_1

    .line 5824
    :cond_6
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v3}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5825
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->playKikinSound()V

    .line 5826
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->makeSelectionVisible()V

    goto :goto_1
.end method

.method public doNotResetTextSelectionRectangle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5627
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_1

    .line 5630
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    if-eqz v0, :cond_0

    .line 5631
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    check-cast v0, Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectActionModeCallback;->setShouldKillKikinResultsContainer(Z)V

    .line 5634
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hasValidSelectionRectangle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5635
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mShouldResetLastSelection:Z

    .line 5638
    :cond_1
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4875
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4876
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 4456
    if-nez p1, :cond_0

    .line 4460
    :goto_0
    return-void

    .line 4459
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method drawHistory()Z
    .locals 1

    .prologue
    .line 6357
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    return v0
.end method

.method public dumpDisplayTree()V
    .locals 1

    .prologue
    .line 6557
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 6558
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 6567
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xaa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6568
    return-void

    :cond_0
    move v0, v1

    .line 6567
    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 6577
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xab

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6578
    return-void

    :cond_0
    move v0, v1

    .line 6577
    goto :goto_0
.end method

.method public emulateShiftHeld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7064
    return-void
.end method

.method public enableHTCZoomMethod(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 12292
    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    .line 12298
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->forceBreakWord(Z)V

    .line 12302
    :cond_0
    return-void
.end method

.method public enableMultiTouchZoomOutToTabMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 12286
    return-void
.end method

.method public enableSmartZoom()V
    .locals 0

    .prologue
    .line 12280
    return-void
.end method

.method public enableTBS(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 12338
    return-void
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4870
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4871
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4941
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4943
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4945
    return-void

    .line 4943
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .parameter "find"

    .prologue
    .line 4283
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->findAllBody(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "find"

    .prologue
    .line 4287
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->findAllBody(Ljava/lang/String;Z)I

    .line 4288
    return-void
.end method

.method public findKikinSelection(ZZZ)Z
    .locals 7
    .parameter "shouldLookNearbyText"
    .parameter "isFirstTouch"
    .parameter "isCheckingForTextAtPointOfTouch"

    .prologue
    const/16 v6, 0x12c

    .line 5912
    new-instance v0, Landroid/webkit/WebViewCore$FindKikinEntityData;

    iget v1, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewCore$FindKikinEntityData;-><init>(IIZZZ)V

    .line 5915
    .local v0, data:Landroid/webkit/WebViewCore$FindKikinEntityData;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5916
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5918
    const/4 v1, 0x1

    return v1
.end method

.method public findNext(Z)V
    .locals 4
    .parameter "forward"

    .prologue
    .line 4272
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    .line 4276
    :cond_0
    :goto_0
    return-void

    .line 4273
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    if-eqz v0, :cond_0

    .line 4274
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xde

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v1, v2, v0, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingScroll(II)V
    .locals 9
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 9000
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/webkit/HTCScroller;->fling(IIIIIIII)V

    .line 9004
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 9005
    return-void
.end method

.method public fnPausePlayGifAnimation()V
    .locals 0

    .prologue
    .line 12498
    return-void
.end method

.method public fnResumePlayGifAnimation()V
    .locals 0

    .prologue
    .line 12504
    return-void
.end method

.method focusCandidateIsEditableText()Z
    .locals 1

    .prologue
    .line 11249
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v0, :cond_0

    .line 11250
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    .line 11252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method forceBreakWord(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 12310
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/HTCWebCoreImpl;->fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12311
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/HTCWebCoreImpl;->fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeEnableTextReflowWithBreakWords(IZ)V

    .line 12312
    :cond_0
    return-void
.end method

.method public freeCacheBitmap()Z
    .locals 1

    .prologue
    .line 12331
    const/4 v0, 0x0

    return v0
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 4209
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4210
    return-void
.end method

.method getBaseLayer()I
    .locals 1

    .prologue
    .line 6107
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    .line 6108
    const/4 v0, 0x0

    .line 6110
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeGetBaseLayer(I)I

    move-result v0

    goto :goto_0
.end method

.method getBlockLeftEdge(IIF)I
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "readingScale"

    .prologue
    .line 3460
    const/high16 v6, 0x3f80

    div-float v1, v6, p3

    .line 3461
    .local v1, invReadingScale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 3462
    .local v4, readingWidth:I
    const/4 v2, -0x1

    .line 3463
    .local v2, left:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v6, :cond_1

    .line 3464
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v6, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    array-length v3, v6

    .line 3465
    .local v3, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 3466
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v6, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    aget-object v5, v6, v0

    .line 3467
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v7, v7, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestSlop:I

    if-ge v6, v7, :cond_0

    .line 3465
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3470
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v4, :cond_2

    .line 3480
    .end local v0           #i:I
    .end local v3           #length:I
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_1
    return v2

    .line 3476
    .restart local v0       #i:I
    .restart local v3       #length:I
    .restart local v5       #rect:Landroid/graphics/Rect;
    :cond_2
    iget v2, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public getCacheDrawBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 12533
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 2513
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 4100
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 4108
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDefaultZoomScale()F
    .locals 1

    .prologue
    .line 9146
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 4074
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4075
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFocusNodeBlock()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 3484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3485
    .local v0, target:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 3486
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 3488
    :cond_0
    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    return v0
.end method

.method getHistoryPictureWidth()I
    .locals 1

    .prologue
    .line 6361
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 3453
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    return-object v0
.end method

.method public getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;
    .locals 0

    .prologue
    .line 12265
    return-object p0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 2554
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabaseClassic;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsCacheDrawBitmap()Z
    .locals 1

    .prologue
    .line 12527
    const/4 v0, 0x0

    return v0
.end method

.method public getKikinResultsViewController()Lcom/kikin/KikinResultsViewController;
    .locals 1

    .prologue
    .line 5520
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    return-object v0
.end method

.method public getLayerTreeAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6582
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getLayerTreeAsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4056
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4057
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOwnerActivityContext()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12386
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->ownerActivityContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getPageBackgroundColor()I
    .locals 1

    .prologue
    .line 4112
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 4113
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeGetBackgroundColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 4092
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getPureReaderContents(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 12434
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x259

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 12435
    return-void
.end method

.method getRectForQuickAction(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 12157
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I

    .line 12159
    .local v0, caretHeight:I
    iget v1, p0, Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I

    if-nez v1, :cond_1

    .line 12160
    sget-boolean v1, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v1, :cond_0

    .line 12161
    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "no caret height"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12162
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 12173
    :goto_0
    return-void

    .line 12165
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 12171
    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    .line 12172
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 3415
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    return v0
.end method

.method getScaledNavSlop()I
    .locals 1

    .prologue
    .line 2309
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method public getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;
    .locals 0

    .prologue
    .line 1849
    return-object p0
.end method

.method getScrollX()I
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    return v0
.end method

.method getScrollY()I
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSearchBox()Landroid/webkit/SearchBox;
    .locals 1

    .prologue
    .line 7227
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7228
    :cond_0
    const/4 v0, 0x0

    .line 7230
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSelectLeftCaretHeight()I
    .locals 1

    .prologue
    .line 3931
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I

    return v0
.end method

.method protected getSelectRightCaretHeight()I
    .locals 1

    .prologue
    .line 3935
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectRightCaretHeight:I

    return v0
.end method

.method getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7237
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    const-string v0, ""

    .line 7238
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getSelectionHandles([I)V
    .locals 2
    .parameter "handles"

    .prologue
    .line 6343
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    aput v1, p1, v0

    .line 6344
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, p1, v0

    .line 6345
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    aput v1, p1, v0

    .line 6346
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, p1, v0

    .line 6347
    return-void
.end method

.method public bridge synthetic getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Landroid/webkit/WebSettingsClassic;
    .locals 1

    .prologue
    .line 4916
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4065
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4066
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTitleHeight()I
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/webkit/WebViewClassic$TitleBarDelegate;

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebViewClassic$TitleBarDelegate;

    invoke-interface {v0}, Landroid/webkit/WebViewClassic$TitleBarDelegate;->getTitleHeight()I

    move-result v0

    .line 2457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4083
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4084
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4047
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4048
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;
    .locals 0

    .prologue
    .line 1844
    return-object p0
.end method

.method getViewHeight()I
    .locals 2

    .prologue
    .line 2497
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewHeightWithTitle()I
    .locals 2

    .prologue
    .line 2501
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    .line 2502
    .local v0, height:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    .line 2503
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1}, Landroid/webkit/WebView$PrivateAccess;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2505
    :cond_0
    return v0
.end method

.method getViewManager()Landroid/webkit/ViewManager;
    .locals 1

    .prologue
    .line 11168
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 3

    .prologue
    .line 2436
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 2437
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v0

    .line 2439
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2468
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 4856
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 4839
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 4813
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 9444
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9134
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9135
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9136
    const/4 v0, 0x0

    .line 9138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getExternalZoomPicker()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getZoomOverviewScale()F
    .locals 1

    .prologue
    .line 9154
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 3

    .prologue
    .line 12322
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->htcWebCore:Landroid/webkit/HTCWebCore;

    if-nez v0, :cond_0

    .line 12323
    new-instance v0, Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Landroid/webkit/HTCWebCore;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->htcWebCore:Landroid/webkit/HTCWebCore;

    .line 12325
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->htcWebCore:Landroid/webkit/HTCWebCore;

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 3243
    iget v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v0, :cond_1

    .line 3244
    :cond_0
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][WEBVIEW][BACK_KEY][START]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    iget v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_BACK_KEY:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    .line 3248
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->goBackOrForwardImpl(I)V

    .line 3249
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0
    .parameter "steps"

    .prologue
    .line 3295
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->goBackOrForwardImpl(I)V

    .line 3296
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 3271
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->goBackOrForwardImpl(I)V

    .line 3272
    return-void
.end method

.method hasPendingScroll()Z
    .locals 1

    .prologue
    .line 10438
    iget v0, p0, Landroid/webkit/WebViewClassic;->mPendingScrollX:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mPendingScrollY:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideSelectionPopups()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 11922
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mCanShowPrior:Z

    .line 11923
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mCanShowPost:Z

    .line 11924
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 11925
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 11926
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 11927
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 11928
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-eqz v0, :cond_0

    .line 11929
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->hideQuickAction()V

    .line 11930
    :cond_0
    return-void
.end method

.method public htcComputeMaxScrollY()I
    .locals 1

    .prologue
    .line 12539
    const/4 v0, 0x0

    return v0
.end method

.method incrementTextGeneration()V
    .locals 1

    .prologue
    .line 1106
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    return-void
.end method

.method public init(Ljava/util/Map;Z)V
    .locals 7
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1644
    .local p1, javaScriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    .line 1647
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/JniUtil;->setContext(Landroid/content/Context;)V

    .line 1649
    new-instance v4, Landroid/webkit/CallbackProxy;

    invoke-direct {v4, v0, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1650
    new-instance v4, Landroid/webkit/ViewManager;

    invoke-direct {v4, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    .line 1651
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/L10nUtils;->setApplicationContext(Landroid/content/Context;)V

    .line 1652
    new-instance v4, Landroid/webkit/WebViewCore;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v4, v0, p0, v5, p1}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1653
    invoke-static {v0}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    .line 1656
    new-instance v4, Landroid/webkit/HTCScroller;

    invoke-direct {v4, v0}, Landroid/webkit/HTCScroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    .line 1659
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1661
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1662
    .local v1, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1663
    .local v2, p:Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1664
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_0

    .line 1665
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    const/high16 v4, 0x4040

    sput v4, Landroid/webkit/ZoomManager;->DEFAULT_MAX_ZOOM_SCALE_FACTOR:F

    .line 1666
    sget-boolean v4, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v4, :cond_0

    .line 1667
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default max zoom scale factor set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    sget v6, Landroid/webkit/ZoomManager;->DEFAULT_MAX_ZOOM_SCALE_FACTOR:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_0
    new-instance v4, Landroid/webkit/ZoomManager;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v4, p0, v5}, Landroid/webkit/ZoomManager;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    .line 1676
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->init()V

    .line 1677
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setupPackageListener(Landroid/content/Context;)V

    .line 1678
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->setupProxyListener(Landroid/content/Context;)V

    .line 1679
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->setupTrustStorageListener(Landroid/content/Context;)V

    .line 1680
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1682
    if-eqz p2, :cond_1

    .line 1683
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startPrivateBrowsing()V

    .line 1686
    :cond_1
    new-instance v4, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v4}, Landroid/webkit/WebViewCore$AutoFillData;-><init>()V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    .line 1687
    new-instance v4, Landroid/widget/Scroller;

    invoke-direct {v4, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    .line 1688
    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 2
    .parameter "html"

    .prologue
    .line 12440
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x25a

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 12441
    return-void
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 1879
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 2

    .prologue
    .line 3440
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3441
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    :goto_0
    return-void

    .line 3444
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 3445
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    goto :goto_0
.end method

.method isFixedLengthAnimationInProgress()Z
    .locals 1

    .prologue
    .line 6144
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method public isHitOnTextNode()Z
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mIsTextNode:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHtcApplication()Z
    .locals 2

    .prologue
    .line 12604
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 12605
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 12606
    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12610
    :cond_0
    const/4 v1, 0x1

    .line 12613
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInBrowserApp()Z
    .locals 1

    .prologue
    .line 12269
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->m_bIsBrowserApp:Z

    return v0
.end method

.method isInZoomOverview()Z
    .locals 1

    .prologue
    .line 12623
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_0

    .line 12624
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isInZoomOverview()Z

    move-result v0

    .line 12625
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 4201
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 2

    .prologue
    .line 3324
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 3325
    .local v0, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->isPrivateBrowsingEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPureZoomMode()Z
    .locals 1

    .prologue
    .line 11465
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mPureZoomMode:Z

    return v0
.end method

.method isRectFitOnScreen(Landroid/graphics/Rect;)Z
    .locals 8
    .parameter "rect"

    .prologue
    .line 9194
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 9195
    .local v1, rectWidth:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 9196
    .local v0, rectHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v4

    .line 9197
    .local v4, viewWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v3

    .line 9198
    .local v3, viewHeight:I
    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 9199
    .local v2, scale:F
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v2

    .line 9200
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    if-gt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isSelectingText()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12461
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v2, :cond_2

    .line 12462
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hasValidSelectionRectangle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12465
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 12462
    goto :goto_0

    .line 12465
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSlowNetwork()Z
    .locals 1

    .prologue
    .line 12582
    const/4 v0, 0x0

    return v0
.end method

.method public isWebCoreBlocked()Z
    .locals 1

    .prologue
    .line 12398
    const/4 v0, 0x0

    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 1

    .prologue
    .line 12392
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 3122
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 3143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3144
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/WebViewClassic;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    :goto_0
    return-void

    .line 3147
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3148
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 3149
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 3150
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 3151
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 3152
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 3153
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 3154
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 3079
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    .line 3080
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3042
    .local p2, additionalHttpHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    .line 3043
    return-void
.end method

.method public loadUrl(ZLjava/lang/String;)V
    .locals 0
    .parameter "shouldHideSip"
    .parameter "url"

    .prologue
    .line 3095
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mShouldHideSip:Z

    .line 3096
    invoke-direct {p0, p2}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    .line 3097
    return-void
.end method

.method public loadViewState(Ljava/io/InputStream;)V
    .locals 3
    .parameter "stream"

    .prologue
    const/4 v1, 0x1

    .line 2941
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    .line 2942
    new-instance v0, Landroid/webkit/WebViewClassic$8;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$8;-><init>(Landroid/webkit/WebViewClassic;)V

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2969
    return-void
.end method

.method public makeSelectionVisible()V
    .locals 5

    .prologue
    .line 5728
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5729
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 5730
    .local v0, location:[I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 5739
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 5740
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->getRectForQuickAction(Landroid/graphics/Rect;)V

    .line 5741
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/kikin/KikinResultsViewController;->setSelectionTopPosition(I)V

    .line 5744
    .end local v0           #location:[I
    .end local v1           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method myScrollTo(IIZI)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 12085
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    .line 12086
    return-void
.end method

.method native nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public nativeGetRssFeed()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12416
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativeHasRssFeed()Z
    .locals 1

    .prologue
    .line 12410
    const/4 v0, 0x0

    return v0
.end method

.method native nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method notifyFindDialogDismissed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4438
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 4439
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 4440
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 4449
    :goto_0
    return-void

    .line 4443
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearMatches()V

    .line 4444
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->setFindIsUp(Z)V

    .line 4447
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    .line 4448
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7243
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 7245
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7246
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    .line 7267
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 7268
    .local v0, currentOrientation:I
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hasValidSelectionRectangle()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    if-eq v2, v0, :cond_2

    .line 7269
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 7270
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 7271
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v2}, Lcom/kikin/KikinResultsViewController;->resetSelection()V

    .line 7275
    :cond_2
    iput v0, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    .line 7279
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateHwAccelerated()V

    .line 7281
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollChangedListener:Landroid/webkit/WebViewClassic$InnerScrollChangedListener;

    if-nez v2, :cond_3

    .line 7282
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 7283
    .local v1, treeObserver:Landroid/view/ViewTreeObserver;
    new-instance v2, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;

    invoke-direct {v2, p0, v3}, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollChangedListener:Landroid/webkit/WebViewClassic$InnerScrollChangedListener;

    .line 7284
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollChangedListener:Landroid/webkit/WebViewClassic$InnerScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 7286
    new-instance v2, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;

    invoke-direct {v2, p0, v3}, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mLayoutChangedListener:Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;

    .line 7287
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mLayoutChangedListener:Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7291
    .end local v1           #treeObserver:Landroid/view/ViewTreeObserver;
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 6034
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 6035
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 6037
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_4

    .line 6042
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 6050
    :cond_1
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    .line 6051
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_2

    .line 6052
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6057
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->useHtcZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6058
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postInvalidateDelayed(J)V

    .line 6060
    :cond_3
    return-void

    .line 6044
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6045
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    .line 6046
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/WebViewClassic;->showQuickAction(JZ)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .parameter "outAttrs"

    .prologue
    .line 6412
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-nez v0, :cond_0

    .line 6413
    new-instance v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 6414
    new-instance v0, Landroid/webkit/AutoCompletePopup;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/webkit/AutoCompletePopup;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$WebViewInputConnection;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    .line 6416
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 6417
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7295
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 7299
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 7302
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 7303
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 7305
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7306
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/AccessibilityInjector;->removeAccessibilityApisIfNecessary()V

    .line 7313
    :goto_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateHwAccelerated()V

    .line 7315
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureFunctorDetached()V

    .line 7318
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScrollChangedListener:Landroid/webkit/WebViewClassic$InnerScrollChangedListener;

    if-eqz v1, :cond_1

    .line 7319
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7320
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScrollChangedListener:Landroid/webkit/WebViewClassic$InnerScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 7321
    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollChangedListener:Landroid/webkit/WebViewClassic$InnerScrollChangedListener;

    .line 7323
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLayoutChangedListener:Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7324
    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mLayoutChangedListener:Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;

    .line 7327
    .end local v0           #treeObserver:Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    .line 7310
    :cond_2
    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 5089
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5189
    :cond_0
    :goto_0
    return-void

    .line 5094
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_2

    .line 5095
    iget v0, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 5102
    :cond_2
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v0, :cond_3

    .line 5103
    iget v0, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 5107
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5108
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->setHardwareAccelerated()V

    .line 5113
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 5114
    .local v8, saveCount:I
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5116
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->drawOverScrollBackground(Landroid/graphics/Canvas;)V

    .line 5119
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5120
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->drawContent(Landroid/graphics/Canvas;)V

    .line 5121
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5126
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    .line 5128
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0, p1}, Landroid/webkit/OverScrollGlow;->drawEdgeGlows(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5129
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 5132
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    if-eqz v0, :cond_9

    .line 5133
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 5171
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5172
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 5173
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    if-nez v0, :cond_7

    .line 5174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    .line 5175
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5177
    :cond_7
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v2, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v4, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5181
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v2, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v4, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 5110
    .end local v8           #saveCount:I
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    goto/16 :goto_1

    .line 5134
    .restart local v8       #saveCount:I
    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->shouldDrawHighlightRect()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5135
    new-instance v6, Landroid/graphics/RegionIterator;

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v6, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 5136
    .local v6, iter:Landroid/graphics/RegionIterator;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 5137
    .local v7, r:Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {v6, v7}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5138
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3998
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    if-gez v0, :cond_0

    .line 3999
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int/2addr p4, v0

    .line 4001
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4002
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4003
    return-void
.end method

.method onFixedLengthZoomAnimationEnd()V
    .locals 1

    .prologue
    .line 6136
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_0

    .line 6137
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6139
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationEnd()V

    .line 6140
    return-void
.end method

.method onFixedLengthZoomAnimationStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6125
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v0, :cond_1

    .line 6126
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    .line 6127
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    .line 6128
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->isAfterSizeChanged:Z

    .line 6131
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6132
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationStart()V

    .line 6133
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7423
    if-eqz p1, :cond_2

    .line 7424
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 7425
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    .line 7444
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7445
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 7447
    :cond_1
    return-void

    .line 7427
    :cond_2
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 7428
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    .line 7429
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 7431
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 7432
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 7433
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7435
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v0, :cond_4

    .line 7436
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->completeComposing()V

    .line 7440
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 8710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 8711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 8734
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView$PrivateAccess;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 8715
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 8716
    const/4 v3, 0x0

    .line 8717
    .local v3, vscroll:F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 8722
    .local v1, hscroll:F
    :goto_1
    cmpl-float v4, v1, v5

    if-nez v4, :cond_1

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_0

    .line 8723
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v4}, Landroid/webkit/WebView$PrivateAccess;->getVerticalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v2, v4

    .line 8725
    .local v2, vdelta:I
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v4}, Landroid/webkit/WebView$PrivateAccess;->getHorizontalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 8727
    .local v0, hdelta:I
    invoke-direct {p0, v0, v2, v6, v6}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8728
    const/4 v4, 0x1

    goto :goto_0

    .line 8719
    .end local v0           #hdelta:I
    .end local v1           #hscroll:F
    .end local v2           #vdelta:I
    .end local v3           #vscroll:F
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v3, v4

    .line 8720
    .restart local v3       #vscroll:F
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_1

    .line 8711
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 7749
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_0

    .line 7750
    const/4 v2, 0x0

    .line 7756
    :goto_0
    return v2

    .line 7752
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 7753
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 7754
    .local v1, y:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x87

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 7755
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView$PrivateAccess;->super_onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 7756
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 2227
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isScrollableForAccessibility()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2228
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2229
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2230
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    .line 2231
    .local v3, convertedContentWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v5

    sub-int v1, v4, v5

    .line 2233
    .local v1, adjustedViewWidth:I
    sub-int v4, v3, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 2234
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    .line 2235
    .local v2, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 2237
    .local v0, adjustedViewHeight:I
    sub-int v4, v2, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 2238
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2200
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2223
    :goto_0
    return-void

    .line 2205
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isScrollableForAccessibility()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2207
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v3

    .line 2208
    .local v3, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 2210
    .local v0, adjustedViewHeight:I
    sub-int v7, v3, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2211
    .local v4, maxScrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    if-lez v7, :cond_3

    move v1, v5

    .line 2212
    .local v1, canScrollBackward:Z
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v4

    if-lez v7, :cond_4

    move v2, v5

    .line 2214
    .local v2, canScrollForward:Z
    :goto_2
    if-eqz v2, :cond_1

    .line 2215
    const/16 v5, 0x1000

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2218
    :cond_1
    if-eqz v2, :cond_2

    .line 2219
    const/16 v5, 0x2000

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2222
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/webkit/AccessibilityInjector;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .end local v1           #canScrollBackward:Z
    .end local v2           #canScrollForward:Z
    :cond_3
    move v1, v6

    .line 2211
    goto :goto_1

    .restart local v1       #canScrollBackward:Z
    :cond_4
    move v2, v6

    .line 2212
    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6646
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v2, :cond_0

    .line 6647
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 6649
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v2, :cond_2

    move v1, v0

    .line 6758
    :cond_1
    :goto_0
    return v1

    .line 6654
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    .line 6655
    goto :goto_0

    .line 6658
    :cond_3
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_4

    move v1, v0

    .line 6659
    goto :goto_0

    .line 6672
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->m_bIsNoteApp:Z

    if-nez v2, :cond_5

    .line 6673
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    .line 6681
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v1, v0

    .line 6683
    goto :goto_0

    .line 6687
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/webkit/AccessibilityInjector;->handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6692
    :cond_8
    const/16 v2, 0x5c

    if-ne p1, v2, :cond_a

    .line 6693
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6694
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    goto :goto_0

    .line 6696
    :cond_9
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6697
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    goto :goto_0

    .line 6702
    :cond_a
    const/16 v2, 0x5d

    if-ne p1, v2, :cond_c

    .line 6703
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6704
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    goto :goto_0

    .line 6706
    :cond_b
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6707
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    goto :goto_0

    .line 6712
    :cond_c
    const/16 v2, 0x7a

    if-ne p1, v2, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6713
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    goto :goto_0

    .line 6717
    :cond_d
    const/16 v2, 0x7b

    if-ne p1, v2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6718
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    goto/16 :goto_0

    .line 6722
    :cond_e
    const/16 v2, 0x13

    if-lt p1, v2, :cond_f

    const/16 v2, 0x16

    if-gt p1, v2, :cond_f

    .line 6724
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 6727
    :cond_f
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->isEnterActionKey(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6728
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 6729
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_10

    .line 6730
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_1

    .line 6733
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    .line 6734
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x72

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic;->LONG_PRESS_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6739
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getNavDump()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 6740
    packed-switch p1, :pswitch_data_0

    .line 6756
    :cond_11
    :goto_1
    invoke-direct {p0, p2}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 6742
    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->dumpDisplayTree()V

    goto :goto_1

    .line 6746
    :pswitch_1
    const/16 v2, 0xc

    if-ne p1, v2, :cond_12

    move v0, v1

    :cond_12
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->dumpDomTree(Z)V

    goto :goto_1

    .line 6750
    :pswitch_2
    const/16 v2, 0xe

    if-ne p1, v2, :cond_13

    move v0, v1

    :cond_13
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->dumpRenderTree(Z)V

    goto :goto_1

    .line 6740
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 6612
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v1, :cond_1

    .line 6623
    :cond_0
    :goto_0
    return v0

    .line 6616
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6618
    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0, v0, p3}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 6619
    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0, v0, p3}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 6621
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 6633
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 6634
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/AutoCompletePopup;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 6636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6767
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v4, :cond_1

    .line 6814
    :cond_0
    :goto_0
    return v2

    .line 6771
    :cond_1
    iget v4, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v4, :cond_0

    .line 6776
    const/4 v4, 0x5

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 6779
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    .line 6780
    .local v1, text:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6781
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 6782
    goto :goto_0

    .line 6788
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #text:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6794
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/webkit/AccessibilityInjector;->handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 6796
    goto :goto_0

    .line 6799
    :cond_3
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->isEnterActionKey(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6801
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 6802
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    .line 6804
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v2, :cond_4

    .line 6805
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 6806
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    move v2, v3

    .line 6807
    goto :goto_0

    .line 6812
    :cond_4
    invoke-direct {p0, p2}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    move v2, v3

    .line 6814
    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x100

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 9302
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 9303
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 9304
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 9305
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 9307
    .local v7, widthSize:I
    move v4, v3

    .line 9308
    .local v4, measuredHeight:I
    move v5, v7

    .line 9311
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    .line 9312
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    .line 9316
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_2

    .line 9317
    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    .line 9318
    move v4, v0

    .line 9319
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_0

    .line 9322
    if-le v4, v3, :cond_0

    .line 9323
    move v4, v3

    .line 9324
    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    .line 9325
    or-int/2addr v4, v11

    .line 9331
    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v8, :cond_1

    .line 9332
    iget-boolean v8, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebViewClassic;->nativeSetHeightCanMeasure(Z)V

    .line 9335
    :cond_1
    if-nez v6, :cond_3

    .line 9336
    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mWidthCanMeasure:Z

    .line 9337
    move v5, v1

    .line 9345
    :goto_1
    monitor-enter p0

    .line 9346
    :try_start_0
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v8, v5, v4}, Landroid/webkit/WebView$PrivateAccess;->setMeasuredDimension(II)V

    .line 9347
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9348
    return-void

    .line 9329
    :cond_2
    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    goto :goto_0

    .line 9339
    :cond_3
    if-ge v5, v1, :cond_4

    .line 9340
    or-int/2addr v5, v11

    .line 9342
    :cond_4
    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mWidthCanMeasure:Z

    goto :goto_1

    .line 9347
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v2, 0x1

    .line 4010
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 4011
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->scrollEditText(II)V

    .line 4040
    :cond_0
    :goto_0
    return-void

    .line 4014
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 4015
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V

    goto :goto_0

    .line 4019
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 4020
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v5

    .line 4021
    .local v5, maxX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v6

    .line 4022
    .local v6, maxY:I
    if-nez v5, :cond_6

    .line 4024
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result p1

    .line 4028
    :cond_3
    :goto_1
    if-ltz p2, :cond_4

    if-le p2, v6, :cond_5

    .line 4029
    :cond_4
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 4032
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    .line 4033
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    .line 4035
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_scrollTo(II)V

    .line 4037
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_0

    .line 4038
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->pullGlow(IIIIII)V

    goto :goto_0

    .line 4025
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    :cond_6
    if-ltz p1, :cond_7

    if-le p1, v5, :cond_3

    .line 4026
    :cond_7
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    goto :goto_1
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 4735
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v1, :cond_0

    .line 4737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4738
    .local v0, extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4739
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kikin/analytics/AnalyticsTrackerEvent;->WEBVIEW_PAGE_LOADED:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v1, v2, v0}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;Ljava/util/HashMap;)V

    .line 4743
    .end local v0           #extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1, p1}, Landroid/webkit/ZoomManager;->onPageFinished(Ljava/lang/String;)V

    .line 4745
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4746
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/AccessibilityInjector;->onPageFinished(Ljava/lang/String;)V

    .line 4749
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 4751
    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4660
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v0, :cond_1

    .line 4661
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    packed-switch v0, :pswitch_data_0

    .line 4694
    :cond_1
    :goto_0
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->isForceNoTextwrap:Z

    .line 4696
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isInBrowserApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4697
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher;->onPageStarted(Ljava/lang/String;)V

    .line 4701
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0, v2}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 4702
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0, v3}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 4704
    invoke-static {p1}, Landroid/webkit/WebViewPerfUtil;->isLoadPerfWebSite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4705
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0, v2}, Landroid/webkit/WebViewPerfUtil;->acquireWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 4716
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 4720
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4721
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/AccessibilityInjector;->onPageStarted(Ljava/lang/String;)V

    .line 4725
    :cond_4
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 4726
    return-void

    .line 4663
    :pswitch_0
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][WEBVIEW][BACK_KEY][FINISH]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    iput v4, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    goto :goto_0

    .line 4667
    :pswitch_1
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][WEBVIEW][RELOAD][FINISH]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    iput v4, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    goto :goto_0

    .line 4671
    :pswitch_2
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][WEBVIEW][TAP_LINK][FINISH]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    iput v4, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    goto :goto_0

    .line 4675
    :pswitch_3
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](304) [LAUNCH_TIME][WEBVIEW][APP_LAUNCH][DATA_READY]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4676
    iput v4, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    goto :goto_0

    .line 4706
    :cond_5
    sget-object v0, Landroid/webkit/WebViewClassic;->mNetworkSubType:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Landroid/webkit/WebViewClassic;->mNetworkSubType:Ljava/lang/String;

    const-string v1, "gprs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4707
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0, v3}, Landroid/webkit/WebViewPerfUtil;->acquireWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 4708
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x122

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 4661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4137
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    if-nez v0, :cond_2

    .line 4138
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    .line 4139
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4142
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    if-eqz v0, :cond_0

    .line 4143
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewManager;->pauseAndDispatch()V

    .line 4144
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewManager;->suspend()V

    .line 4146
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_1

    .line 4147
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    .line 4150
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->cancelSelectDialog()V

    .line 4151
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->pause()V

    .line 4154
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0, v2}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 4155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 4156
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 4157
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 4160
    :cond_2
    return-void
.end method

.method onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    .line 7705
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v0, :cond_1

    .line 7706
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    if-nez v0, :cond_1

    .line 7707
    iget v0, p0, Landroid/webkit/WebViewClassic;->mScaleInPinchBegin:F

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 7708
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](301) [OTHER][WEBVIEW][PINCH_ZOOM_OUT][START] scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7715
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationEnd()V

    .line 7719
    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 7720
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 7721
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iget-wide v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->startTouch(FFJ)V

    .line 7722
    return-void

    .line 7710
    :cond_2
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](301) [OTHER][WEBVIEW][PINCH_ZOOM_IN][START] scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onPinchToZoomAnimationStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7690
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v0, :cond_1

    .line 7691
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mScaleInPinchBegin:F

    .line 7692
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    .line 7693
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    .line 7694
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->isAfterSizeChanged:Z

    .line 7699
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    .line 7700
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationStart()V

    .line 7701
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4183
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 4184
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    .line 4185
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4186
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4187
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    .line 4193
    :cond_0
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->resume()V

    .line 4194
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const/4 v3, 0x1

    .line 2314
    const/4 v1, 0x0

    .line 2315
    .local v1, rVal:Z
    if-nez p4, :cond_0

    .line 2317
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v3, v1

    .line 2385
    :goto_1
    return v3

    .line 2319
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 2320
    const-string/jumbo v4, "webview"

    const-string/jumbo v5, "onSavePassword should not be called while dialog is up"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 2324
    :cond_1
    iput-object p4, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    .line 2325
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2327
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2332
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2334
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2339
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040345

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040396

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040397

    new-instance v5, Landroid/webkit/WebViewClassic$5;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebViewClassic$5;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040398

    new-instance v5, Landroid/webkit/WebViewClassic$4;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebViewClassic$4;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040399

    new-instance v5, Landroid/webkit/WebViewClassic$3;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebViewClassic$3;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebViewClassic$2;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebViewClassic$2;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2383
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v3, 0x0

    .line 7610
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-nez v1, :cond_0

    .line 7611
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 7614
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    .line 7615
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 7616
    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 7619
    .end local v0           #titleHeight:I
    :cond_0
    return-void
.end method

.method public onSelectTextEnd()V
    .locals 1

    .prologue
    .line 12478
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onSelectTextEnd()V

    .line 12479
    return-void
.end method

.method public onSelectTextStart()V
    .locals 1

    .prologue
    .line 12472
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onSelectTextStart()V

    .line 12473
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 7517
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getDefaultMinZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 7518
    .local v0, newMaxViewportWidth:I
    sget v1, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    if-le v0, v1, :cond_0

    .line 7519
    sput v0, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    .line 7522
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/ZoomManager;->onSizeChanged(IIII)V

    .line 7524
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-nez v1, :cond_1

    .line 7528
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 7530
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isEditable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7535
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditIntoView()V

    .line 7537
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V

    .line 7538
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7761
    iget v3, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isClickable()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7804
    :cond_0
    :goto_0
    return v1

    .line 7765
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    if-eqz v3, :cond_0

    .line 7773
    const/4 v0, 0x1

    .line 7774
    .local v0, shouldRequestFocus:Z
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 7775
    const/4 v0, 0x0

    .line 7779
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 7785
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->requestFocus()Z

    .line 7789
    :cond_3
    iget v3, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    if-ne v3, v4, :cond_5

    .line 7790
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->skipMove:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_4

    move v1, v2

    .line 7791
    goto :goto_0

    .line 7793
    :cond_4
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->skipMove:Z

    .line 7798
    :cond_5
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v6}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v6

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/webkit/WebViewInputDispatcher;->postPointerEvent(Landroid/view/MotionEvent;IIF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7800
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v1}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents()V

    move v1, v2

    .line 7801
    goto :goto_0

    .line 7803
    :cond_6
    const-string/jumbo v2, "webview"

    const-string/jumbo v3, "mInputDispatcher rejected the event!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 8783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 8784
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 8785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    .line 8786
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    .line 8852
    :cond_1
    :goto_0
    return v2

    .line 8789
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    .line 8790
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v4, :cond_1

    .line 8793
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    .line 8794
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_3

    move v2, v3

    .line 8795
    goto :goto_0

    .line 8802
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_4
    move v2, v3

    .line 8803
    goto :goto_0

    .line 8805
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 8807
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 8808
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    .line 8809
    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballUpTime:J

    .line 8810
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_6

    .line 8811
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 8812
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    :cond_6
    move v2, v3

    .line 8820
    goto :goto_0

    .line 8822
    :cond_7
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mMapTrackballToArrowKeys:Z

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v2, v3

    .line 8825
    goto :goto_0

    .line 8827
    :cond_a
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    if-nez v4, :cond_1

    .line 8831
    iget-wide v4, p0, Landroid/webkit/WebViewClassic;->mTrackballUpTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 8836
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 8837
    iget-wide v4, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_b

    .line 8842
    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballFirstTime:J

    .line 8843
    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    .line 8845
    :cond_b
    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    .line 8849
    iget v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    .line 8850
    iget v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    .line 8851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebViewClassic;->doTrackball(JI)V

    goto/16 :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 7333
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_0

    .line 7334
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 7336
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->updateDrawingState()V

    .line 7337
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    const/4 v3, 0x0

    .line 7380
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 7381
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1, v3}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 7383
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 7384
    if-eqz p1, :cond_1

    .line 7385
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebViewClassic;)V

    .line 7386
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    if-eqz v1, :cond_0

    .line 7387
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7388
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    .line 7399
    :cond_0
    :goto_0
    return-void

    .line 7391
    :cond_1
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebViewClassic;)V

    .line 7392
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 7393
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7395
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7396
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 4164
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->updateDrawingState()V

    .line 4165
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 2419
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 2427
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3370
    iget v3, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    .line 3384
    :goto_0
    return v2

    .line 3373
    :cond_0
    if-eqz p1, :cond_1

    .line 3374
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v4

    invoke-direct {p0, v3, v4, v5, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 3377
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    .line 3379
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 3380
    add-int/lit8 v1, v0, -0x18

    .line 3384
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v3}, Landroid/webkit/HTCScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v5, v2}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 3382
    .end local v1           #y:I
    :cond_2
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 3384
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected pageSwapCallback(Z)V
    .locals 6
    .parameter "notifyAnimationStarted"

    .prologue
    const/4 v5, 0x0

    .line 10333
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->isAfterSizeChanged:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->useFocusedNode:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v2, :cond_2

    .line 10334
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v1

    .line 10335
    .local v1, scale:F
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    if-eqz v2, :cond_8

    .line 10336
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isInZoomOverview()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10337
    const-string v2, "AutoTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AutoProf](302) [OTHER][WEBVIEW][DOUBLETAP_ZOOM_OUT][FINISH] scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10341
    :goto_0
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    .line 10350
    :cond_1
    :goto_1
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->isAfterSizeChanged:Z

    .line 10354
    .end local v1           #scale:F
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    .line 10355
    if-eqz p1, :cond_3

    .line 10356
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xc4

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 10358
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    instance-of v2, v2, Landroid/webkit/WebViewClassic$PageSwapDelegate;

    if-eqz v2, :cond_4

    .line 10360
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    check-cast v2, Landroid/webkit/WebViewClassic$PageSwapDelegate;

    invoke-interface {v2, p1}, Landroid/webkit/WebViewClassic$PageSwapDelegate;->onPageSwapOccurred(Z)V

    .line 10363
    :cond_4
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v2, :cond_6

    .line 10367
    const-string/jumbo v2, "test.bp.runner"

    const-string/jumbo v3, "off"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 10368
    .local v0, m_bIsPerfApp:Z
    iget v2, p0, Landroid/webkit/WebViewClassic;->mContentDrawCnt:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_5

    .line 10369
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->useContentDraw:Z

    if-eqz v2, :cond_5

    .line 10370
    iget v2, p0, Landroid/webkit/WebViewClassic;->mContentDrawCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/webkit/WebViewClassic;->mContentDrawCnt:I

    .line 10373
    :cond_5
    if-eqz v0, :cond_a

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->useContentDraw:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 10376
    .end local v0           #m_bIsPerfApp:Z
    :cond_6
    :goto_2
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->useContentDraw:Z

    .line 10378
    return-void

    .line 10339
    .restart local v1       #scale:F
    :cond_7
    const-string v2, "AutoTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AutoProf](302) [OTHER][WEBVIEW][DOUBLETAP_ZOOM_IN][FINISH] scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10342
    :cond_8
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    if-eqz v2, :cond_1

    .line 10343
    iget v2, p0, Landroid/webkit/WebViewClassic;->mScaleInPinchBegin:F

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 10344
    const-string v2, "AutoTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AutoProf](302) [OTHER][WEBVIEW][PINCH_ZOOM_OUT][FINISH] scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10348
    :goto_3
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    goto/16 :goto_1

    .line 10346
    :cond_9
    const-string v2, "AutoTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AutoProf](302) [OTHER][WEBVIEW][PINCH_ZOOM_IN][FINISH] scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 10374
    .end local v1           #scale:F
    .restart local v0       #m_bIsPerfApp:Z
    :cond_a
    if-nez v0, :cond_6

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    goto :goto_2
.end method

.method public pageUp(Z)Z
    .locals 5
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3346
    iget v3, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    .line 3361
    :goto_0
    return v2

    .line 3349
    :cond_0
    if-eqz p1, :cond_1

    .line 3351
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3, v2, v4, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 3354
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    .line 3356
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 3357
    neg-int v3, v0

    add-int/lit8 v1, v3, 0x18

    .line 3361
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v3}, Landroid/webkit/HTCScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v4, v2}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 3359
    .end local v1           #y:I
    :cond_2
    neg-int v3, v0

    div-int/lit8 v1, v3, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 3361
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 9426
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    .line 9441
    :goto_0
    return-void

    .line 9429
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 9430
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 9431
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 9433
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    .line 9434
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9439
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 9440
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0
.end method

.method public pasteFromClipboard()V
    .locals 7

    .prologue
    .line 7205
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 7207
    .local v2, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 7208
    .local v0, clipData:Landroid/content/ClipData;
    if-eqz v0, :cond_0

    .line 7209
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 7210
    .local v1, clipItem:Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 7212
    .local v4, pasteText:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v3

    .line 7213
    .local v3, pasteHtml:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 7214
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x21e

    invoke-virtual {v5, v6, v3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7221
    .end local v1           #clipItem:Landroid/content/ClipData$Item;
    .end local v3           #pasteHtml:Ljava/lang/String;
    .end local v4           #pasteText:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 7217
    .restart local v1       #clipItem:Landroid/content/ClipData$Item;
    .restart local v3       #pasteHtml:Ljava/lang/String;
    .restart local v4       #pasteText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v5, :cond_0

    .line 7218
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v5, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pauseFPDoPlay()V
    .locals 2

    .prologue
    .line 12509
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->m_bIsBrowserApp:Z

    if-nez v0, :cond_0

    .line 12513
    :goto_0
    return-void

    .line 12511
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x264

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 12512
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x263

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 4121
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4122
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 9
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2165
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2167
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v5, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    .line 2195
    :goto_0
    return v5

    .line 2170
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/webkit/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2171
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/webkit/AccessibilityInjector;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    goto :goto_0

    .line 2174
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2195
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v5, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    goto :goto_0

    .line 2177
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v3

    .line 2178
    .local v3, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 2180
    .local v0, adjustedViewHeight:I
    sub-int v7, v3, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2181
    .local v4, maxScrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    if-lez v7, :cond_2

    move v1, v5

    .line 2182
    .local v1, canScrollBackward:Z
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v4

    if-lez v7, :cond_3

    move v2, v5

    .line 2183
    .local v2, canScrollForward:Z
    :goto_2
    const/16 v7, 0x2000

    if-ne p1, v7, :cond_4

    if-eqz v1, :cond_4

    .line 2184
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v6, v0}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_0

    .end local v1           #canScrollBackward:Z
    .end local v2           #canScrollForward:Z
    :cond_2
    move v1, v6

    .line 2181
    goto :goto_1

    .restart local v1       #canScrollBackward:Z
    :cond_3
    move v2, v6

    .line 2182
    goto :goto_2

    .line 2187
    .restart local v2       #canScrollForward:Z
    :cond_4
    const/16 v7, 0x1000

    if-ne p1, v7, :cond_5

    if-eqz v2, :cond_5

    .line 2188
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    neg-int v8, v0

    invoke-virtual {v7, v6, v8}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_0

    :cond_5
    move v5, v6

    .line 2191
    goto :goto_0

    .line 2174
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5208
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_1

    .line 5301
    :cond_0
    :goto_0
    return v5

    .line 5212
    :cond_1
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v6}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v0

    .line 5213
    .local v0, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5217
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    :cond_3
    move v2, v4

    .line 5224
    .local v2, forceSelect:Z
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v1

    .line 5228
    .local v1, focusCandidateIsEditableText:Z
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v6, :cond_7

    .line 5229
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v6, :cond_0

    if-nez v1, :cond_0

    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v6, :cond_0

    .line 5244
    :cond_4
    :goto_2
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v6, :cond_c

    .line 5245
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v6

    if-nez v6, :cond_9

    .line 5246
    if-nez v2, :cond_8

    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v6}, Landroid/webkit/WebView$PrivateAccess;->super_performLongClick()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5249
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsContextMenuOpen:Z

    .line 5250
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isLongClickHandledDueToContextMenu()Z

    move-result v6

    if-nez v6, :cond_5

    .line 5251
    invoke-virtual {p0, v4, v5, v4}, Landroid/webkit/WebViewClassic;->findKikinSelection(ZZZ)Z

    :cond_5
    move v5, v4

    .line 5253
    goto :goto_0

    .end local v1           #focusCandidateIsEditableText:Z
    .end local v2           #forceSelect:Z
    :cond_6
    move v2, v5

    .line 5217
    goto :goto_1

    .line 5234
    .restart local v1       #focusCandidateIsEditableText:Z
    .restart local v2       #forceSelect:Z
    :cond_7
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v6, :cond_4

    .line 5235
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_2

    .line 5256
    :cond_8
    iget v4, p0, Landroid/webkit/WebViewClassic;->mLastTouchRawX:I

    iget v6, p0, Landroid/webkit/WebViewClassic;->mLastTouchRawY:I

    invoke-direct {p0, v4, v6}, Landroid/webkit/WebViewClassic;->showMagnifyingGlass(II)V

    .line 5260
    :cond_9
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsContextMenuOpen:Z

    .line 5275
    :cond_a
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v4, :cond_d

    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->selectTextOnLongPress(Z)Z

    move-result v3

    .line 5285
    .local v3, isSelecting:Z
    :goto_3
    if-eqz v3, :cond_e

    :cond_b
    :goto_4
    move v5, v3

    .line 5301
    goto/16 :goto_0

    .line 5265
    .end local v3           #isSelecting:Z
    :cond_c
    if-nez v2, :cond_a

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v6}, Landroid/webkit/WebView$PrivateAccess;->super_performLongClick()Z

    move-result v6

    if-eqz v6, :cond_a

    move v5, v4

    .line 5266
    goto/16 :goto_0

    .line 5275
    :cond_d
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectText()Z

    move-result v3

    goto :goto_3

    .line 5289
    .restart local v3       #isSelecting:Z
    :cond_e
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5290
    new-instance v4, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v4}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    iput-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    .line 5291
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-interface {v4, p0}, Landroid/webkit/SelectionCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 5292
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-interface {v4, v5}, Landroid/webkit/SelectionCallback;->setTextSelected(Z)V

    .line 5295
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v4, :cond_f

    .line 5296
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    check-cast v4, Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v4, v5}, Landroid/webkit/SelectActionModeCallback;->setShouldShowKikinResultsContainer(Z)V

    .line 5299
    :cond_f
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_4
.end method

.method pinLocX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 3544
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    .line 3545
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method pinLocY(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 3550
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    .line 3551
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 3105
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3106
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3107
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 3108
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 3109
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 3110
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3111
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 3115
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_0
    return-void

    .line 3113
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recoveryDefaultZoomLowerBound()V
    .locals 1

    .prologue
    .line 12368
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->recoveryDefaultZoomLowerBound()V

    .line 12369
    return-void
.end method

.method public recoveryDefaultZoomUpperBound()V
    .locals 1

    .prologue
    .line 12364
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->recoveryDefaultZoomUpperBound()V

    .line 12365
    return-void
.end method

.method redrawSelectionRectangle()V
    .locals 3

    .prologue
    const/16 v2, 0x130

    .line 5561
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5562
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5563
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4932
    return-void
.end method

.method public registerHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 11114
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    if-nez v0, :cond_0

    .line 11115
    new-instance v0, Landroid/webkit/HTML5VideoViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewManager;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    .line 11116
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewManager;->registerProxy(Landroid/webkit/HTML5VideoViewProxy;)Z

    .line 11117
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 3210
    iget v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v0, :cond_1

    .line 3211
    :cond_0
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][WEBVIEW][RELOAD][START]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    iget v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_RELOAD_BTN:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->AUTO_PERF_CASE:I

    .line 3215
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 3216
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3217
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    if-eqz v0, :cond_2

    .line 3218
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewManager;->suspend()V

    .line 3219
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3220
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaceName"

    .prologue
    .line 4902
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 4903
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4904
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4905
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x95

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4907
    .end local v0           #arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    :cond_0
    return-void
.end method

.method public removeMessagePowerSavePolicy()V
    .locals 0

    .prologue
    .line 12564
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 2
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 9415
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 9416
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 9417
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 9418
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 9419
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    .line 9420
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 9421
    const/16 v1, 0x72

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 9422
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 16
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 9354
    move-object/from16 v0, p0

    iget v11, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v11, :cond_0

    .line 9355
    const/4 v11, 0x0

    .line 9410
    :goto_0
    return v11

    .line 9359
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 9360
    const/4 v11, 0x0

    goto :goto_0

    .line 9363
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 9366
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9371
    .local v1, content:Landroid/graphics/Rect;
    iget v11, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v7

    .line 9372
    .local v7, screenTop:I
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    .line 9373
    .local v4, screenBottom:I
    sub-int v2, v4, v7

    .line 9374
    .local v2, height:I
    const/4 v9, 0x0

    .line 9376
    .local v9, scrollYDelta:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v4, :cond_5

    .line 9377
    div-int/lit8 v3, v2, 0x3

    .line 9378
    .local v3, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    mul-int/lit8 v12, v3, 0x2

    if-le v11, v12, :cond_4

    .line 9381
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    .line 9391
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_2
    :goto_1
    iget v11, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    .line 9392
    .local v5, screenLeft:I
    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v6

    .line 9393
    .local v6, screenRight:I
    sub-int v10, v6, v5

    .line 9394
    .local v10, width:I
    const/4 v8, 0x0

    .line 9396
    .local v8, scrollXDelta:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v6, :cond_7

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v5, :cond_7

    .line 9397
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v11, v10, :cond_6

    .line 9398
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v5

    add-int/2addr v8, v11

    .line 9406
    :cond_3
    :goto_2
    or-int v11, v9, v8

    if-eqz v11, :cond_9

    .line 9407
    if-nez p3, :cond_8

    const/4 v11, 0x1

    :goto_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v11, v12}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v11

    goto/16 :goto_0

    .line 9385
    .end local v5           #screenLeft:I
    .end local v6           #screenRight:I
    .end local v8           #scrollXDelta:I
    .end local v10           #width:I
    .restart local v3       #oneThirdOfScreenHeight:I
    :cond_4
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int v12, v7, v3

    sub-int v9, v11, v12

    goto :goto_1

    .line 9387
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_5
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    if-ge v11, v7, :cond_2

    .line 9388
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    goto :goto_1

    .line 9400
    .restart local v5       #screenLeft:I
    .restart local v6       #screenRight:I
    .restart local v8       #scrollXDelta:I
    .restart local v10       #width:I
    :cond_6
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    add-int/2addr v8, v11

    goto :goto_2

    .line 9402
    :cond_7
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-ge v11, v5, :cond_3

    .line 9403
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v11, v5, v11

    sub-int/2addr v8, v11

    goto :goto_2

    .line 9407
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 9410
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method requestDatePicker(III)V
    .locals 11
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v6, -0x1

    .line 11451
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;

    const/4 v2, 0x2

    const/4 v9, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v9}, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;-><init>(Landroid/webkit/WebViewClassic;IIIIIIILandroid/webkit/WebViewClassic$1;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11453
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 9270
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 9297
    :cond_0
    :goto_0
    return v1

    .line 9271
    :cond_1
    const/4 v1, 0x0

    .line 9272
    .local v1, result:Z
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v2, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 9273
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getNeedInitialFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9278
    const/4 v0, 0x0

    .line 9279
    .local v0, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 9287
    :sswitch_0
    const/16 v0, 0x15

    .line 9295
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xe0

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 9281
    :sswitch_1
    const/16 v0, 0x13

    .line 9282
    goto :goto_1

    .line 9284
    :sswitch_2
    const/16 v0, 0x14

    .line 9285
    goto :goto_1

    .line 9290
    :sswitch_3
    const/16 v0, 0x16

    .line 9291
    goto :goto_1

    .line 9279
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_3
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 5
    .parameter "hrefMsg"

    .prologue
    .line 3496
    if-nez p1, :cond_0

    .line 3511
    :goto_0
    return-void

    .line 3499
    :cond_0
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 3500
    .local v0, contentX:I
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 3501
    .local v1, contentY:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v2, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestX:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v2, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestY:I

    if-ne v2, v1, :cond_1

    .line 3503
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title"

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkit/WebViewCore$WebKitHitTest;->mAnchorText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "src"

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3509
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x89

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestFormData(Ljava/lang/String;IZZ)V
    .locals 8
    .parameter "name"
    .parameter "nodePointer"
    .parameter "autoFillable"
    .parameter "autoComplete"

    .prologue
    .line 6480
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6481
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 6482
    .local v4, update:Landroid/os/Message;
    iput p2, v4, Landroid/os/Message;->arg1:I

    .line 6483
    new-instance v0, Landroid/webkit/WebViewClassic$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewClassic$RequestFormData;-><init>(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    .line 6485
    .local v0, updater:Landroid/webkit/WebViewClassic$RequestFormData;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6486
    .local v7, t:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 6488
    .end local v0           #updater:Landroid/webkit/WebViewClassic$RequestFormData;
    .end local v4           #update:Landroid/os/Message;
    .end local v7           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3518
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_0

    .line 3524
    :goto_0
    return-void

    .line 3519
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    .line 3520
    .local v1, url:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3521
    .local v0, data:Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3523
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3519
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #url:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method requestListBox([Ljava/lang/String;[II)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 10998
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebViewClassic$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic$InvokeListBox;-><init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[IILandroid/webkit/WebViewClassic$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11000
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[I)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 10984
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebViewClassic$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic$InvokeListBox;-><init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[I[ILandroid/webkit/WebViewClassic$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10986
    return-void
.end method

.method requestMonthPicker(II)V
    .locals 11
    .parameter "year"
    .parameter "month"

    .prologue
    const/4 v5, 0x0

    .line 11446
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;

    const/4 v2, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v9}, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;-><init>(Landroid/webkit/WebViewClassic;IIIIIIILandroid/webkit/WebViewClassic$1;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11448
    return-void
.end method

.method requestTimePicker(III)V
    .locals 11
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    const/4 v3, 0x0

    .line 11456
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;

    const/4 v2, 0x3

    const/4 v9, 0x0

    move-object v1, p0

    move v4, v3

    move v5, v3

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v9}, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;-><init>(Landroid/webkit/WebViewClassic;IIIIIIILandroid/webkit/WebViewClassic$1;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11458
    return-void
.end method

.method public resetCacheDrawBitmap()V
    .locals 0

    .prologue
    .line 12429
    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    .prologue
    .line 8778
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    .line 8779
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .parameter "b"
    .parameter "src"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2880
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2916
    :cond_0
    :goto_0
    return v3

    .line 2883
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2887
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2888
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2889
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebViewClassic$7;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebViewClassic$7;-><init>(Landroid/webkit/WebViewClassic;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2913
    :catch_0
    move-exception v1

    .line 2914
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreSelect()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5576
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_0

    .line 5579
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    if-eqz v0, :cond_1

    .line 5612
    :cond_0
    :goto_0
    return-void

    .line 5584
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hasValidSelectionRectangle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5589
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startSelectingText()V

    .line 5592
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->redrawSelectionRectangle()V

    .line 5595
    new-instance v0, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v0}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    .line 5596
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-interface {v0, p0}, Landroid/webkit/SelectionCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 5597
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-interface {v0, v1}, Landroid/webkit/SelectionCallback;->setTextSelected(Z)V

    .line 5600
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    check-cast v0, Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectActionModeCallback;->setShouldRestoreKikinResultsContainer(Z)V

    .line 5603
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    check-cast v0, Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectActionModeCallback;->setShouldShowKikinResultsContainer(Z)V

    .line 5605
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5608
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "inState"

    .prologue
    const/4 v8, 0x0

    .line 2986
    const/4 v6, 0x0

    .line 2987
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_0

    move-object v8, v6

    .line 3034
    :goto_0
    return-object v8

    .line 2990
    :cond_0
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2991
    const-string v9, "certificate"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v9

    iput-object v9, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2994
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v9}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2995
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2999
    .local v3, index:I
    monitor-enter v5

    .line 3000
    :try_start_0
    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3002
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 3005
    .local v7, size:I
    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    .line 3006
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 3022
    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v7           #size:I
    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3008
    .restart local v1       #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .restart local v7       #size:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 3009
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3010
    .local v0, data:[B
    if-nez v0, :cond_3

    .line 3013
    monitor-exit v5

    goto :goto_0

    .line 3015
    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 3016
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 3008
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3019
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 3021
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 3022
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3024
    const-string/jumbo v8, "privateBrowsingEnabled"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3025
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettingsClassic;->setPrivateBrowsingEnabled(Z)V

    .line 3027
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, p1}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 3030
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 3032
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_6
    move-object v8, v6

    .line 3034
    goto/16 :goto_0
.end method

.method public resumeFPDoPlay()V
    .locals 2

    .prologue
    .line 12518
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->m_bIsBrowserApp:Z

    if-nez v0, :cond_0

    .line 12522
    :goto_0
    return-void

    .line 12521
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x264

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 4129
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4130
    return-void
.end method

.method public safeDestroy()V
    .locals 2

    .prologue
    .line 2633
    sget-boolean v0, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2634
    const-string/jumbo v0, "webview"

    const-string v1, "delay destroy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2637
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 2537
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .parameter "b"
    .parameter "dest"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2819
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2820
    :cond_0
    const/4 v2, 0x0

    .line 2854
    :goto_0
    return v2

    .line 2822
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 2825
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2826
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebViewClassic$6;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebViewClassic$6;-><init>(Landroid/webkit/WebViewClassic;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2851
    const-string/jumbo v2, "scrollX"

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2852
    const-string/jumbo v2, "scrollY"

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2853
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    .line 2854
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v7, 0x0

    .line 2768
    if-nez p1, :cond_0

    move-object v5, v7

    .line 2810
    :goto_0
    return-object v5

    .line 2773
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2774
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 2775
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 2778
    .local v6, size:I
    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v5, v7

    .line 2779
    goto :goto_0

    .line 2781
    :cond_2
    const-string v8, "index"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2785
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2786
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 2787
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 2788
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_3

    .line 2791
    const-string/jumbo v8, "webview"

    const-string/jumbo v9, "saveState: Unexpected null history item."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 2792
    goto :goto_0

    .line 2794
    :cond_3
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 2795
    .local v1, data:[B
    if-nez v1, :cond_4

    move-object v5, v7

    .line 2799
    goto :goto_0

    .line 2801
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2786
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2803
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_5
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2804
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_6

    .line 2805
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2808
    :cond_6
    const-string/jumbo v7, "privateBrowsingEnabled"

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2809
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public saveViewState(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V
    .locals 3
    .parameter "stream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2927
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 2928
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2933
    :goto_0
    return-void

    .line 2931
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xe1

    new-instance v2, Landroid/webkit/WebViewCore$SaveViewStateRequest;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebViewCore$SaveViewStateRequest;-><init>(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    .line 3163
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebViewClassic;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 3164
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3184
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 3185
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 7072
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 7073
    return-void
.end method

.method public selectText()Z
    .locals 5

    .prologue
    .line 5315
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsContextMenuOpen:Z

    .line 5320
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 5321
    .local v0, hit:Landroid/webkit/WebView$HitTestResult;
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isEditable()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 5322
    const/4 v3, 0x1

    .line 5327
    :goto_0
    return v3

    .line 5325
    :cond_0
    iget v3, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    .line 5326
    .local v1, x:I
    iget v3, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    .line 5327
    .local v2, y:I
    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebViewClassic;->selectText(II)Z

    move-result v3

    goto :goto_0
.end method

.method selectText(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 5335
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/webkit/WebViewClassic;->selectText(IIZZ)Z

    move-result v0

    return v0
.end method

.method selectText(IIZZ)Z
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "selectTextOnLongPress"
    .parameter "focusCandidateIsEditableText"

    .prologue
    const/16 v3, 0xd6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5347
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v2, :cond_5

    .line 5348
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 5422
    :cond_0
    :goto_0
    return v0

    .line 5351
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v3, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5352
    if-nez p4, :cond_3

    .line 5354
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    .line 5355
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mShouldPerformKikinSearch:Z

    .line 5360
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->disallowParentsToInterceptTouchEvents()V

    .line 5363
    invoke-virtual {p0, v1, v1, v0}, Landroid/webkit/WebViewClassic;->findKikinSelection(ZZZ)Z

    .line 5368
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v2, :cond_4

    .line 5369
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 5370
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startSelectingText()V

    .line 5378
    :goto_1
    if-nez p3, :cond_3

    .line 5380
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    .line 5381
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShouldPerformKikinSearch:Z

    .line 5386
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->disallowParentsToInterceptTouchEvents()V

    .line 5389
    invoke-virtual {p0, v1, v1, v0}, Landroid/webkit/WebViewClassic;->findKikinSelection(ZZZ)Z

    .line 5391
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-nez v0, :cond_2

    .line 5392
    new-instance v0, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v0, p0}, Lcom/kikin/KikinResultsViewController;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 5398
    :cond_2
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->doKikinSearch(Lcom/kikin/selection/Selection$Mode;)V

    :cond_3
    :goto_2
    move v0, v1

    .line 5422
    goto :goto_0

    .line 5372
    :cond_4
    invoke-direct {p0, p4}, Landroid/webkit/WebViewClassic;->setupWebkitSelect(Z)Z

    goto :goto_1

    .line 5405
    :cond_5
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_0

    .line 5410
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    .line 5413
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v3, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5416
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->canUpdateHandler:Z

    .line 5417
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->skipMove:Z

    .line 5418
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->onSelectTextStart()V

    goto :goto_2
.end method

.method selectionDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 7079
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_8

    .line 7080
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hidePasteButton()V

    .line 7081
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->endSelectingText()V

    .line 7084
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    if-eqz v0, :cond_0

    .line 7085
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    invoke-interface {v0}, Landroid/webkit/SelectionCallback;->finish()V

    .line 7086
    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    .line 7091
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_2

    .line 7095
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mAllowTextSelectionOnDragging:Z

    .line 7096
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mShouldPerformKikinSearch:Z

    .line 7101
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShouldResetLastSelection:Z

    if-eqz v0, :cond_1

    .line 7102
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKikinSelectionRegion:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7108
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShouldResetLastSelection:Z

    .line 7113
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 7114
    iput v1, p0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    .line 7115
    iput v1, p0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    .line 7116
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    .line 7119
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionAdapter:Landroid/webkit/QuickActionAdapter;

    if-eqz v0, :cond_3

    .line 7120
    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mQuickActionAdapter:Landroid/webkit/QuickActionAdapter;

    .line 7123
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->stopScroll()V

    .line 7125
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v0, :cond_4

    .line 7126
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 7128
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v0, :cond_5

    .line 7129
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 7131
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    if-eqz v0, :cond_6

    .line 7132
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v0}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 7134
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-eqz v0, :cond_7

    .line 7135
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    .line 7136
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, v2}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    .line 7139
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->onSelectTextEnd()V

    .line 7140
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->skipMove:Z

    .line 7141
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->canUpdateHandler:Z

    .line 7146
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7147
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_9

    .line 7148
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 7149
    :cond_9
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_a

    .line 7150
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 7152
    :cond_a
    return-void
.end method

.method sendBatchableInputMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 10673
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    .line 10682
    :goto_0
    return-void

    .line 10676
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 10677
    .local v0, message:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    if-eqz v1, :cond_1

    .line 10678
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10680
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendMessagePowerSavePolicy(Z)V
    .locals 0
    .parameter "bImmediate"

    .prologue
    .line 12558
    return-void
.end method

.method public sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/16 v7, 0x6b

    const/16 v6, 0x2c

    const/16 v5, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3718
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3782
    :goto_0
    return-object v0

    .line 3719
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 3721
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3722
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_1

    .line 3724
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_5

    .line 3725
    sget-boolean v0, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3726
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "core is null (1), this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3749
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3752
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_2

    .line 3753
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3757
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3767
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_3

    .line 3769
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_8

    .line 3770
    sget-boolean v0, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v0, :cond_3

    .line 3771
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "core is null (2), this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3782
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3732
    :cond_5
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 3733
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3735
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->existPendingScrollFromNative:Z

    if-ne v2, v0, :cond_6

    .line 3737
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->existPendingScrollFromNative:Z

    .line 3738
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v2}, Landroid/webkit/HTCScroller;->abortAnimation()V

    .line 3739
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 3740
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x11e

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v0, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3744
    :cond_6
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    if-eqz v3, :cond_7

    :goto_3
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    invoke-virtual {v2, v7, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto :goto_3

    .line 3777
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x74

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method sendViewSizeZoom(Z)Z
    .locals 12
    .parameter "force"

    .prologue
    const/16 v11, 0x69

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3840
    iget-boolean v7, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v7, :cond_1

    .line 3911
    :cond_0
    :goto_0
    return v9

    .line 3842
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdatesForDoubleTap()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3846
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v6

    .line 3847
    .local v6, viewWidth:I
    int-to-float v7, v6

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3849
    .local v4, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v7

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v10

    sub-int v5, v7, v10

    .line 3850
    .local v5, viewHeight:I
    int-to-float v7, v5

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3853
    .local v3, newHeight:I
    int-to-float v7, v5

    int-to-float v10, v6

    div-float v2, v7, v10

    .line 3862
    .local v2, heightWidthRatio:F
    iget v7, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-le v4, v7, :cond_2

    iget-boolean v7, p0, Landroid/webkit/WebViewClassic;->mWrapContent:Z

    if-eqz v7, :cond_2

    .line 3863
    const/4 v3, 0x0

    .line 3864
    const/4 v2, 0x0

    .line 3867
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3869
    .local v0, actualViewHeight:I
    iget v7, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-ne v4, v7, :cond_3

    iget v7, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    if-ne v3, v7, :cond_3

    if-nez p1, :cond_3

    iget v7, p0, Landroid/webkit/WebViewClassic;->mLastActualHeightSent:I

    if-eq v0, v7, :cond_0

    .line 3871
    :cond_3
    new-instance v1, Landroid/webkit/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebViewClassic$ViewSizeData;-><init>()V

    .line 3872
    .local v1, data:Landroid/webkit/WebViewClassic$ViewSizeData;
    iput v4, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mWidth:I

    .line 3873
    iput v3, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeight:I

    .line 3874
    iput v2, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeightWidthRatio:F

    .line 3875
    iput v0, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    .line 3877
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->useHtcZoom()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->isInZoomOverview()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3880
    iget-boolean v7, p0, Landroid/webkit/WebViewClassic;->useCustomScale:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v7

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v10

    cmpl-float v7, v7, v10

    if-nez v7, :cond_4

    int-to-float v7, v6

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v10

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    .line 3888
    :goto_1
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v7

    iput v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    .line 3889
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v7, :cond_6

    move v7, v8

    :goto_2
    iput-boolean v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    .line 3891
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorX()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorX:I

    .line 3892
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorY()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorY:I

    .line 3896
    iput-boolean v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAccelerated:Z

    .line 3897
    iget-boolean v7, p0, Landroid/webkit/WebViewClassic;->m_bIsBrowserApp:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->needAccelerateReflow()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3898
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7, v9}, Landroid/webkit/ZoomManager;->setNeedAccelerateReflow(Z)V

    .line 3899
    iput-boolean v8, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAccelerated:Z

    .line 3900
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7, v11}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3901
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7, v11, v1}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 3905
    :goto_3
    iput v4, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    .line 3906
    iput v3, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    .line 3907
    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastActualHeightSent:I

    .line 3908
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->clearDocumentAnchor()V

    move v9, v8

    .line 3909
    goto/16 :goto_0

    .line 3881
    :cond_4
    const/16 v7, 0x7d0

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    goto :goto_1

    .line 3887
    :cond_5
    int-to-float v7, v6

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v10

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    goto :goto_1

    :cond_6
    move v7, v9

    .line 3889
    goto :goto_2

    .line 3904
    :cond_7
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7, v11, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method setActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7340
    if-eqz p1, :cond_1

    .line 7341
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7344
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 7345
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    .line 7372
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 7373
    return-void

    .line 7347
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 7348
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    goto :goto_0

    .line 7351
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isZoomPickerVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7359
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 7361
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 7362
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7365
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_3

    .line 7366
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7369
    :cond_3
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 7370
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 11096
    iput p1, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    .line 11097
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 11098
    return-void
.end method

.method setBaseLayer(IZZ)V
    .locals 10
    .parameter "layer"
    .parameter "showVisualIndicator"
    .parameter "isPictureAfterFirstLayout"

    .prologue
    .line 6070
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    .line 6104
    :cond_0
    :goto_0
    return-void

    .line 6073
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    iget v5, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    .line 6075
    .local v5, scrollingLayer:I
    :goto_1
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->nativeSetBaseLayer(IIZZI)Z

    move-result v8

    .line 6079
    .local v8, queueFull:Z
    iget v0, p0, Landroid/webkit/WebViewClassic;->mPendingScrollX:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/webkit/WebViewClassic;->mPendingScrollY:I

    if-ltz v0, :cond_2

    .line 6080
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 6081
    .local v6, area:Landroid/graphics/Rect;
    const/high16 v0, 0x3f80

    iget v1, p0, Landroid/webkit/WebViewClassic;->mShowRectScale:F

    div-float v7, v0, v1

    .line 6082
    .local v7, invScale:F
    iget v0, p0, Landroid/webkit/WebViewClassic;->mPendingScrollX:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 6083
    iget v0, p0, Landroid/webkit/WebViewClassic;->mPendingScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 6084
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 6085
    .local v9, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 6086
    iget v0, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 6087
    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 6091
    iget v0, p0, Landroid/webkit/WebViewClassic;->mShowRectScale:F

    invoke-direct {p0, p1, v6, v0}, Landroid/webkit/WebViewClassic;->nativeSetLayerPrepareArea(ILandroid/graphics/Rect;F)V

    .line 6095
    .end local v6           #area:Landroid/graphics/Rect;
    .end local v7           #invScale:F
    .end local v9           #visRect:Landroid/graphics/Rect;
    :cond_2
    if-eqz v8, :cond_4

    .line 6096
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->pauseWebKitDraw()V

    .line 6101
    :goto_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    if-eqz v0, :cond_0

    .line 6102
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewManager;->setBaseLayer(I)V

    goto :goto_0

    .line 6073
    .end local v5           #scrollingLayer:I
    .end local v8           #queueFull:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 6098
    .restart local v5       #scrollingLayer:I
    .restart local v8       #queueFull:Z
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    goto :goto_2
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 2525
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2526
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4821
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 4822
    return-void
.end method

.method public setDragAfterActionDown(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 12423
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 12453
    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 4264
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;

    .line 4265
    return-void
.end method

.method setFocusControllerActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v1, 0x0

    .line 7408
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 7415
    :cond_0
    :goto_0
    return-void

    .line 7409
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x8e

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 7411
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 7412
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 7413
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 7409
    goto :goto_1
.end method

.method public setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7498
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/WebView$PrivateAccess;->super_setFrame(IIII)Z

    move-result v0

    .line 7499
    .local v0, changed:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    .line 7506
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 7508
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->updateRectsForGL()V

    .line 7509
    return v0
.end method

.method public setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 12636
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 2403
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    .line 2404
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 2546
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabaseClassic;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    return-void
.end method

.method public setInPerf(Z)V
    .locals 0
    .parameter "bInPerf"

    .prologue
    .line 12570
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .parameter "scaleInPercent"

    .prologue
    .line 3432
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setInitialScaleInPercent(I)V

    .line 3433
    return-void
.end method

.method public setIsCacheDrawBitmap(Z)V
    .locals 0
    .parameter "bSet"

    .prologue
    .line 12350
    return-void
.end method

.method public setIsLoading(Z)V
    .locals 0
    .parameter "bIsLoading"

    .prologue
    .line 12405
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 2731
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2732
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 11185
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateHwAccelerated()V

    .line 11186
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 5197
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 5198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWrapContent:Z

    .line 5200
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5201
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .parameter "setMap"

    .prologue
    .line 8774
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mMapTrackballToArrowKeys:Z

    .line 8775
    return-void
.end method

.method setMobileProxy(Ljava/lang/String;I)V
    .locals 3
    .parameter "host"
    .parameter "port"

    .prologue
    .line 12593
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12594
    .local v0, _intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 12595
    new-instance v1, Landroid/net/ProxyProperties;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 12596
    .local v1, _properties:Landroid/net/ProxyProperties;
    const-string/jumbo v2, "proxy"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 12598
    .end local v1           #_properties:Landroid/net/ProxyProperties;
    :cond_0
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;)V

    .line 12599
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 6602
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebViewCore;->setMockDeviceOrientation(ZDZDZD)V

    .line 6604
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .parameter "networkUp"

    .prologue
    const/4 v1, 0x0

    .line 2739
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x77

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2741
    return-void

    :cond_0
    move v0, v1

    .line 2739
    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 2752
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2753
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2757
    sput-object p2, Landroid/webkit/WebViewClassic;->mNetworkSubType:Ljava/lang/String;

    .line 2758
    sget-boolean v1, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v1, :cond_0

    .line 2759
    const-string/jumbo v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set network subtype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewClassic;->mNetworkSubType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    :cond_0
    return-void
.end method

.method setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V
    .locals 13
    .parameter "draw"
    .parameter "updateBaseLayer"

    .prologue
    .line 10447
    iget v10, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v10, :cond_2

    .line 10448
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v10, :cond_0

    .line 10449
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Tried to setNewPicture with a delay picture already set! (memory leak)"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 10453
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 10545
    :cond_1
    :goto_0
    return-void

    .line 10456
    :cond_2
    iget-object v9, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 10457
    .local v9, viewState:Landroid/webkit/WebViewCore$ViewState;
    if-eqz v9, :cond_d

    const/4 v3, 0x1

    .line 10459
    .local v3, isPictureAfterFirstLayout:Z
    :goto_1
    if-eqz p2, :cond_4

    .line 10461
    move v0, v3

    .line 10462
    .local v0, firstLayout:Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->mHtcWebCore()Landroid/webkit/HTCWebCoreImpl;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->mHtcWebCore()Landroid/webkit/HTCWebCoreImpl;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/HTCWebCoreImpl;->isIgnorePictureAfterFirstLayout()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 10463
    const/4 v0, 0x0

    .line 10467
    :cond_3
    iget v10, p1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebSettingsClassic;->getShowVisualIndicator()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0}, Landroid/webkit/WebViewClassic;->setBaseLayer(IZZ)V

    .line 10471
    iget-boolean v10, p1, Landroid/webkit/WebViewCore$DrawData;->mCancelShowedRect:Z

    if-eqz v10, :cond_4

    .line 10472
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->cancelShowedRect()V

    .line 10475
    .end local v0           #firstLayout:Z
    :cond_4
    iget-object v8, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 10480
    .local v8, viewSize:Landroid/graphics/Point;
    iget v10, v8, Landroid/graphics/Point;->x:I

    iget v11, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-ne v10, v11, :cond_e

    iget v10, v8, Landroid/graphics/Point;->y:I

    iget v11, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    if-ne v10, v11, :cond_e

    const/4 v6, 0x1

    .line 10485
    .local v6, updateLayout:Z
    :goto_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    .line 10486
    iget-object v10, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v10, v11, v6}, Landroid/webkit/WebViewClassic;->recordNewContentSize(IIZ)V

    .line 10488
    if-eqz v3, :cond_5

    .line 10490
    const/4 v10, 0x0

    iput v10, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    .line 10491
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10, p1}, Landroid/webkit/ZoomManager;->onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V

    .line 10492
    iget-boolean v10, v9, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v4

    .line 10494
    .local v4, scrollX:I
    :goto_3
    iget v5, v9, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 10495
    .local v5, scrollY:I
    const/4 v10, 0x0

    invoke-direct {p0, v4, v5, v10}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    .line 10496
    iget-boolean v10, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-nez v10, :cond_5

    .line 10498
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V

    .line 10501
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    :cond_5
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    .line 10503
    const/4 v2, 0x0

    .line 10504
    .local v2, functor:I
    move v1, v3

    .line 10505
    .local v1, forceInval:Z
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    .line 10506
    .local v7, viewRoot:Landroid/view/ViewRootImpl;
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v7, :cond_6

    .line 10507
    iget v10, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v10}, Landroid/webkit/WebViewClassic;->nativeGetDrawGLFunction(I)I

    move-result v2

    .line 10508
    if-eqz v2, :cond_6

    .line 10510
    invoke-virtual {v7, v2}, Landroid/view/ViewRootImpl;->attachFunctor(I)Z

    move-result v10

    if-nez v10, :cond_10

    const/4 v10, 0x1

    :goto_4
    or-int/2addr v1, v10

    .line 10514
    :cond_6
    if-eqz v2, :cond_7

    if-nez v1, :cond_7

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getLayerType()I

    move-result v10

    if-eqz v10, :cond_8

    .line 10519
    :cond_7
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->invalidate()V

    .line 10523
    :cond_8
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10, p1}, Landroid/webkit/ZoomManager;->onNewPicture(Landroid/webkit/WebViewCore$DrawData;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 10524
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 10526
    :cond_9
    if-eqz v3, :cond_a

    .line 10527
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v10}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 10529
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V

    .line 10531
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v10, :cond_c

    .line 10532
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getLayerType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    .line 10536
    :cond_b
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 10541
    :cond_c
    if-eqz v3, :cond_1

    .line 10542
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->onNewPictureAfterFirstLayout()V

    goto/16 :goto_0

    .line 10457
    .end local v1           #forceInval:Z
    .end local v2           #functor:I
    .end local v3           #isPictureAfterFirstLayout:Z
    .end local v6           #updateLayout:Z
    .end local v7           #viewRoot:Landroid/view/ViewRootImpl;
    .end local v8           #viewSize:Landroid/graphics/Point;
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 10480
    .restart local v3       #isPictureAfterFirstLayout:Z
    .restart local v8       #viewSize:Landroid/graphics/Point;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 10492
    .restart local v6       #updateLayout:Z
    :cond_f
    iget v4, v9, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    goto/16 :goto_3

    .line 10510
    .restart local v1       #forceInval:Z
    .restart local v2       #functor:I
    .restart local v7       #viewRoot:Landroid/view/ViewRootImpl;
    :cond_10
    const/4 v10, 0x0

    goto :goto_4
.end method

.method public setOverScrollMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x6

    .line 2261
    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_3

    .line 2262
    :cond_0
    sput p1, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    .line 2263
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2264
    .local v1, width:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2266
    .local v0, height:I
    if-ne p1, v3, :cond_2

    .line 2267
    const/high16 v2, 0x3f00

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    .line 2272
    :goto_0
    const/4 p1, 0x2

    .line 2278
    .end local v0           #height:I
    .end local v1           #width:I
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->super_setOverScrollMode(I)V

    .line 2280
    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    .line 2281
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-nez v2, :cond_1

    .line 2282
    new-instance v2, Landroid/webkit/OverScrollGlow;

    invoke-direct {v2, p0}, Landroid/webkit/OverScrollGlow;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    .line 2287
    :cond_1
    :goto_2
    return-void

    .line 2270
    .restart local v0       #height:I
    .restart local v1       #width:I
    :cond_2
    const v2, 0x3e4ccccd

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    goto :goto_0

    .line 2275
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_3
    sput p1, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    goto :goto_1

    .line 2285
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    goto :goto_2
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4865
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 4866
    return-void
.end method

.method setProxyEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 12589
    return-void
.end method

.method public setPureZoomMode(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 12446
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mPureZoomMode:Z

    .line 12447
    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 0
    .parameter "bSet"

    .prologue
    .line 12375
    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, p1, p2, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .local v0, pp:Landroid/net/ProxyProperties;
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 2390
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    .line 2392
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    .line 2396
    :goto_0
    return-void

    .line 2394
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setScrollXRaw(I)V
    .locals 1
    .parameter "mScrollX"

    .prologue
    .line 1883
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->setScrollXRaw(I)V

    .line 1884
    return-void
.end method

.method setScrollYRaw(I)V
    .locals 1
    .parameter "mScrollY"

    .prologue
    .line 1887
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->setScrollYRaw(I)V

    .line 1888
    return-void
.end method

.method setSelection(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 6405
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 6406
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6408
    :cond_0
    return-void
.end method

.method public setSlowNetwork(Z)V
    .locals 1
    .parameter "slowNetwork"

    .prologue
    .line 12576
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSlowNetwork:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSlowNetwork:Z

    .line 12577
    return-void
.end method

.method public setTouchInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 11137
    iput p1, p0, Landroid/webkit/WebViewClassic;->mCurrentTouchInterval:I

    .line 11138
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .parameter "slop"

    .prologue
    .line 12344
    return-void
.end method

.method public setUseMockDeviceOrientation()V
    .locals 2

    .prologue
    .line 6592
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6593
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 2411
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    .line 2412
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4849
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 4850
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4829
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4830
    return-void
.end method

.method setWebSelectionType(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 12128
    iget v2, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    if-eq v2, p1, :cond_2

    .line 12129
    iput p1, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    .line 12130
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12131
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 12133
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->usePopupAnchor:Z

    .line 12137
    if-ne p1, v3, :cond_4

    move v1, v3

    .line 12139
    .local v1, enableKikin:Z
    :goto_1
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eq v1, v2, :cond_1

    .line 12140
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    .line 12141
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 12142
    .local v0, density:F
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    :goto_2
    iput v2, p0, Landroid/webkit/WebViewClassic;->NAV_SLOP:I

    .line 12143
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x32a

    :goto_3
    iput v2, p0, Landroid/webkit/WebViewClassic;->LONG_PRESS_TIMEOUT:I

    .line 12144
    iget v2, p0, Landroid/webkit/WebViewClassic;->NAV_SLOP:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    .line 12150
    .end local v0           #density:F
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 12151
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    .line 12154
    .end local v1           #enableKikin:Z
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 12133
    goto :goto_0

    :cond_4
    move v1, v4

    .line 12137
    goto :goto_1

    .line 12142
    .restart local v0       #density:F
    .restart local v1       #enableKikin:Z
    :cond_5
    const/16 v2, 0x10

    goto :goto_2

    .line 12143
    :cond_6
    const/16 v2, 0x3e8

    goto :goto_3
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4803
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4804
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .parameter "fLower"

    .prologue
    .line 12359
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setZoomLowerBound(F)V

    .line 12360
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .parameter "fUpper"

    .prologue
    .line 12354
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setZoomUpperBound(F)V

    .line 12355
    return-void
.end method

.method public shiftAfterZoom(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12551
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->shiftAfterZoom(II)V

    .line 12552
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 2160
    const/4 v0, 0x1

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "text"
    .parameter "showIme"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4325
    new-instance v0, Landroid/webkit/FindActionModeCallback;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V

    .line 4326
    .local v0, callback:Landroid/webkit/FindActionModeCallback;
    invoke-virtual {v0, p0}, Landroid/webkit/FindActionModeCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 4327
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4329
    :cond_0
    invoke-virtual {v0, v1}, Landroid/webkit/FindActionModeCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 4330
    const/4 v1, 0x0

    .line 4350
    :goto_0
    return v1

    .line 4332
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 4333
    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 4334
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->setFindIsUp(Z)V

    .line 4336
    if-eqz p2, :cond_5

    .line 4337
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v3}, Landroid/webkit/FindActionModeCallback;->showSoftInput()V

    .line 4343
    :cond_2
    if-nez p1, :cond_3

    .line 4344
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    if-nez v3, :cond_6

    move-object p1, v1

    .line 4346
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 4347
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 4348
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/FindActionModeCallback;->findAll()V

    :cond_4
    move v1, v2

    .line 4350
    goto :goto_0

    .line 4338
    :cond_5
    if-eqz p1, :cond_2

    .line 4339
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 4340
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/FindActionModeCallback;->findAll()V

    move v1, v2

    .line 4341
    goto :goto_0

    .line 4344
    :cond_6
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    iget-object p1, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mSearchText:Ljava/lang/String;

    goto :goto_1
.end method

.method final showMagnify(Landroid/graphics/Rect;II)V
    .locals 20
    .parameter "anchorRect"
    .parameter "touchX"
    .parameter "touchOffsetY"

    .prologue
    .line 12003
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    if-nez v2, :cond_0

    .line 12004
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 12007
    .local v18, res:Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v11, v2, Landroid/util/DisplayMetrics;->density:F

    .line 12008
    .local v11, densityFactor:F
    const/high16 v2, 0x42f0

    mul-float/2addr v2, v11

    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->MAGNIFY_OFFSET_DIP:I

    .line 12009
    const/high16 v2, 0x430c

    mul-float/2addr v2, v11

    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->MAGNIFY_WIDTH_DIP:I

    .line 12010
    const/high16 v2, 0x4270

    mul-float/2addr v2, v11

    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->MAGNIFY_HEIGHT_DIP:I

    .line 12011
    const/high16 v2, 0x42c8

    mul-float/2addr v2, v11

    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->POSITION_MAGNIFY_WIDTH_DIP:I

    .line 12012
    const/high16 v2, 0x4270

    mul-float/2addr v2, v11

    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->POSITION_MAGNIFY_HEIGHT_DIP:I

    .line 12014
    new-instance v2, Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/webkit/MagnifyView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    .line 12015
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    const v4, 0x4020098

    invoke-virtual {v2, v4}, Landroid/webkit/MagnifyView;->setBGdrawable(I)V

    .line 12020
    .end local v11           #densityFactor:F
    .end local v18           #res:Landroid/content/res/Resources;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->IS_KIKIN_ENABLED:Z

    if-eqz v2, :cond_1

    .line 12082
    :goto_0
    return-void

    .line 12026
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    .line 12027
    .local v3, scaleRatio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v12

    .line 12032
    .local v12, invScaleRatio:F
    if-gez p3, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    .line 12035
    .local v19, selCY:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->MAGNIFY_OFFSET_DIP:I

    add-int v14, v2, p3

    .line 12042
    .local v14, offset:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->MAGNIFY_WIDTH_DIP:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->MAGNIFY_HEIGHT_DIP:I

    invoke-virtual {v2, v4, v5}, Landroid/webkit/MagnifyView;->setMagnifyContentSize(II)V

    .line 12045
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 12046
    .local v15, offsetOnScreen:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v15}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 12048
    new-instance v13, Landroid/graphics/Point;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    sub-int v4, p2, v2

    if-gez p3, :cond_6

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, v14

    invoke-direct {v13, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 12050
    .local v13, magnifyWinCP:Landroid/graphics/Point;
    const/4 v2, 0x0

    aget v2, v15, v2

    iget v4, v13, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v4}, Landroid/webkit/MagnifyView;->getFullWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    sub-float v16, v2, v4

    .line 12051
    .local v16, posX:F
    const/4 v2, 0x1

    aget v2, v15, v2

    iget v4, v13, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v4}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    sub-float v17, v2, v4

    .line 12053
    .local v17, posY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v2}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3ea8f5c3

    mul-float/2addr v2, v4

    add-float v2, v2, v17

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 12054
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v2}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3ea8f5c3

    mul-float/2addr v2, v4

    neg-float v0, v2

    move/from16 v17, v0

    .line 12057
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, v19

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/webkit/MagnifyView;->setContent(FFFIIII)V

    .line 12063
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v2}, Landroid/webkit/MagnifyView;->beginDrawContent()Landroid/graphics/Canvas;

    move-result-object v10

    .line 12064
    .local v10, c:Landroid/graphics/Canvas;
    if-eqz v10, :cond_4

    .line 12065
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    if-nez v2, :cond_3

    .line 12066
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 12070
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v4, v5}, Landroid/webkit/WebViewClassic;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    .line 12079
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v2}, Landroid/webkit/MagnifyView;->endDrawContent()V

    .line 12081
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v5, 0x0

    aget v5, v15, v5

    move/from16 v0, v17

    float-to-int v6, v0

    invoke-virtual {v2, v4, v5, v6}, Landroid/webkit/MagnifyView;->showAtPositon(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 12032
    .end local v10           #c:Landroid/graphics/Canvas;
    .end local v13           #magnifyWinCP:Landroid/graphics/Point;
    .end local v14           #offset:I
    .end local v15           #offsetOnScreen:[I
    .end local v16           #posX:F
    .end local v17           #posY:F
    .end local v19           #selCY:I
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    goto/16 :goto_1

    .line 12048
    .restart local v14       #offset:I
    .restart local v15       #offsetOnScreen:[I
    .restart local v19       #selCY:I
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2
.end method

.method showQuickAction(J)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 11909
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/WebViewClassic;->showQuickAction(JZ)V

    .line 11910
    return-void
.end method

.method showQuickAction(JZ)V
    .locals 3
    .parameter "delay"
    .parameter "inlvalidate"

    .prologue
    const/16 v2, 0x54d

    .line 11913
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic$SelectionHandler;->removeMessages(I)V

    .line 11915
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 11916
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 11917
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 11918
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11919
    return-void

    .line 11917
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showSelectionPopupAnchors()V
    .locals 14

    .prologue
    .line 11934
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 11935
    .local v3, offset:Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 11936
    .local v8, visibleRect:Landroid/graphics/Rect;
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v8, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    .line 11937
    .local v9, webviewISvisible:Z
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11938
    .local v7, viewVisibleRect:Landroid/graphics/Rect;
    iget v10, v3, Landroid/graphics/Point;->x:I

    neg-int v10, v10

    iget v11, v3, Landroid/graphics/Point;->y:I

    neg-int v11, v11

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 11940
    if-nez v9, :cond_1

    .line 11994
    :cond_0
    :goto_0
    return-void

    .line 11943
    :cond_1
    const/4 v10, 0x2

    new-array v4, v10, [I

    .line 11944
    .local v4, offsetOnScreen:[I
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v4}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 11947
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I

    .line 11948
    .local v0, caretHeight:I
    const/4 v10, 0x0

    aget v10, v4, v10

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v11

    sub-int v5, v10, v11

    .line 11949
    .local v5, start_x:I
    const/4 v10, 0x1

    aget v10, v4, v10

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v11

    sub-int v6, v10, v11

    .line 11950
    .local v6, start_y:I
    const/4 v10, 0x0

    aget v10, v4, v10

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v11

    sub-int v1, v10, v11

    .line 11951
    .local v1, end_x:I
    const/4 v10, 0x1

    aget v10, v4, v10

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v11

    sub-int v2, v10, v11

    .line 11953
    .local v2, end_y:I
    sget-boolean v10, Landroid/webkit/WebViewClassic;->HTC_DEBUG:Z

    if-eqz v10, :cond_2

    .line 11954
    const-string/jumbo v10, "webview"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WebViewClassic::showSelectionPopupAnchors] >> start_x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " start_y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " end_x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " end_y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11957
    :cond_2
    iget-boolean v10, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-nez v10, :cond_5

    invoke-virtual {v8, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 11958
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v11, v5, v6}, Lcom/htc/textselection/SelectionAnchor;->show(Landroid/view/View;II)V

    .line 11960
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 11962
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 11963
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mCanShowPrior:Z

    .line 11973
    :goto_1
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 11974
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v11, v1, v2}, Lcom/htc/textselection/SelectionAnchor;->show(Landroid/view/View;II)V

    .line 11976
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 11978
    iget-boolean v10, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    :goto_2
    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 11980
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mCanShowPost:Z

    .line 11990
    :goto_3
    iget-boolean v10, p0, Landroid/webkit/WebViewClassic;->mCanShowPrior:Z

    if-nez v10, :cond_3

    iget-boolean v10, p0, Landroid/webkit/WebViewClassic;->mCanShowPost:Z

    if-eqz v10, :cond_0

    .line 11991
    :cond_3
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    const/16 v11, 0x54f

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic$SelectionHandler;->removeMessages(I)V

    .line 11992
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    const/16 v11, 0x54f

    const-wide/16 v12, 0x32

    invoke-virtual {v10, v11, v12, v13}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11965
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mCanShowPrior:Z

    goto :goto_1

    .line 11968
    :cond_5
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mCanShowPrior:Z

    .line 11969
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 11970
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_1

    .line 11978
    :cond_6
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_2

    .line 11982
    :cond_7
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mCanShowPost:Z

    goto :goto_3

    .line 11985
    :cond_8
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mCanShowPost:Z

    .line 11986
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 11987
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_3
.end method

.method showSingleTapAction(IZ)Z
    .locals 5
    .parameter "delay"
    .parameter "checkTimeout"

    .prologue
    const/16 v3, 0x551

    const/4 v4, 0x1

    .line 11885
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSingleTapQuickActions:Landroid/webkit/SingleTapQuickActions;

    if-nez v1, :cond_0

    .line 11886
    new-instance v1, Landroid/webkit/SingleTapQuickActions;

    invoke-direct {v1}, Landroid/webkit/SingleTapQuickActions;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mSingleTapQuickActions:Landroid/webkit/SingleTapQuickActions;

    .line 11887
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSingleTapQuickActions:Landroid/webkit/SingleTapQuickActions;

    invoke-virtual {v1, p0}, Landroid/webkit/SingleTapQuickActions;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 11890
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSingleTapQuickActions:Landroid/webkit/SingleTapQuickActions;

    iput-boolean p2, v1, Landroid/webkit/SingleTapQuickActions;->checkTimeout:Z

    .line 11892
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-nez v1, :cond_1

    .line 11893
    new-instance v1, Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/QuickActionsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    .line 11894
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v1, v4}, Landroid/webkit/QuickActionsHelper;->setEnableQuickAction(Z)V

    .line 11897
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSingleTapQuickActions:Landroid/webkit/SingleTapQuickActions;

    invoke-virtual {v1, v2}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    .line 11898
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    const/16 v2, 0x54d

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic$SelectionHandler;->removeMessages(I)V

    .line 11899
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    invoke-virtual {v1, v3}, Landroid/webkit/WebViewClassic$SelectionHandler;->removeMessages(I)V

    .line 11901
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 11902
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 11903
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11905
    return v4
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 5
    .parameter "callback"

    .prologue
    const/16 v4, 0x54e

    const/4 v3, 0x1

    .line 12196
    iget v1, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 12197
    instance-of v1, p1, Landroid/webkit/SelectionCallback;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 12198
    check-cast v1, Landroid/webkit/SelectionCallback;

    invoke-interface {v1, v3}, Landroid/webkit/SelectionCallback;->setHtcStyle(Z)V

    .line 12200
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-nez v1, :cond_0

    .line 12201
    new-instance v1, Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/QuickActionsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    .line 12202
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v1, v3}, Landroid/webkit/QuickActionsHelper;->setEnableQuickAction(Z)V

    .line 12205
    :cond_0
    new-instance v1, Landroid/webkit/QuickActionAdapter;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Landroid/webkit/QuickActionAdapter;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionAdapter:Landroid/webkit/QuickActionAdapter;

    .line 12206
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionAdapter:Landroid/webkit/QuickActionAdapter;

    invoke-virtual {v1, p1}, Landroid/webkit/QuickActionAdapter;->setCallback(Landroid/view/ActionMode$Callback;)V

    .line 12207
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mQuickActionAdapter:Landroid/webkit/QuickActionAdapter;

    invoke-virtual {v1, v2}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    .line 12209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12210
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->getRectForQuickAction(Landroid/graphics/Rect;)V

    .line 12211
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 12214
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewClassic$SelectionHandler;->removeMessages(I)V

    .line 12215
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 12216
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mQuickActionAdapter:Landroid/webkit/QuickActionAdapter;

    invoke-virtual {v1}, Landroid/webkit/QuickActionAdapter;->getMode()Landroid/view/ActionMode;

    move-result-object v1

    .line 12227
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_0
    return-object v1

    .line 12218
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12220
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 12227
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView$PrivateAccess;->super_startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 3200
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3201
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3202
    return-void
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    .line 4466
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/HTCScroller;->forceFinished(Z)V

    .line 4467
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 4468
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 5

    .prologue
    .line 6366
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 6381
    :cond_0
    :goto_0
    return-void

    .line 6367
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeHasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6368
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    .line 6369
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    .line 6370
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 6371
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    .line 6372
    .local v0, oldScrollX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    .line 6373
    .local v1, oldScrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 6374
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    .line 6375
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 6376
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/webkit/WebView$PrivateAccess;->onScrollChanged(IIII)V

    goto :goto_0

    .line 6378
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method syncSelectionCursors()V
    .locals 5

    .prologue
    const/16 v4, 0x54e

    .line 6928
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkit/QuadF;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftLayerId:I

    .line 6931
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkit/QuadF;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightLayerId:I

    .line 6936
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    if-eqz v0, :cond_1

    .line 6937
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v0, v0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v1, v1, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I

    .line 6938
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    iget-object v0, v0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    iget-object v1, v1, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSelectRightCaretHeight:I

    .line 6939
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->usePopupAnchor:Z

    if-eqz v0, :cond_1

    .line 6940
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_1

    .line 6941
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    invoke-virtual {v0, v4}, Landroid/webkit/WebViewClassic$SelectionHandler;->removeMessages(I)V

    .line 6942
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v4, v1, v2}, Landroid/webkit/WebViewClassic$SelectionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6947
    :cond_1
    return-void
.end method

.method public tileProfilingClear()V
    .locals 0

    .prologue
    .line 11224
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingClear()V

    .line 11225
    return-void
.end method

.method public tileProfilingGetFloat(IILjava/lang/String;)F
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 11240
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->nativeTileProfilingGetFloat(IILjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public tileProfilingGetInt(IILjava/lang/String;)I
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 11236
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->nativeTileProfilingGetInt(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tileProfilingNumFrames()I
    .locals 1

    .prologue
    .line 11228
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingNumFrames()I

    move-result v0

    return v0
.end method

.method public tileProfilingNumTilesInFrame(I)I
    .locals 1
    .parameter "frame"

    .prologue
    .line 11232
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->nativeTileProfilingNumTilesInFrame(I)I

    move-result v0

    return v0
.end method

.method public tileProfilingStart()V
    .locals 0

    .prologue
    .line 11211
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingStart()V

    .line 11212
    return-void
.end method

.method public tileProfilingStop()F
    .locals 1

    .prologue
    .line 11219
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingStop()F

    move-result v0

    return v0
.end method

.method protected triggerPendingScrollCallback()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x124

    const/4 v6, 0x0

    .line 10391
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->isAfterSizeChanged:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->useFocusedNode:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v3, :cond_2

    .line 10392
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v2

    .line 10393
    .local v2, scale:F
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    if-eqz v3, :cond_8

    .line 10394
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isInZoomOverview()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 10395
    const-string v3, "AutoTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AutoProf](302) [OTHER][WEBVIEW][DOUBLETAP_ZOOM_OUT][FINISH] scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10399
    :goto_0
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->useTapZoom:Z

    .line 10408
    :cond_1
    :goto_1
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->useFocusedNode:Z

    .line 10409
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->isAfterSizeChanged:Z

    .line 10412
    .end local v2           #scale:F
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x123

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10413
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x123

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 10414
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {v3, v9}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 10415
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10416
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 10417
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10419
    :cond_4
    iget v3, p0, Landroid/webkit/WebViewClassic;->mPendingScrollX:I

    if-ltz v3, :cond_6

    iget v3, p0, Landroid/webkit/WebViewClassic;->mPendingScrollY:I

    if-ltz v3, :cond_6

    .line 10420
    iget v3, p0, Landroid/webkit/WebViewClassic;->mPendingScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 10421
    .local v0, dx:I
    iget v3, p0, Landroid/webkit/WebViewClassic;->mPendingScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 10423
    .local v1, dy:I
    if-gt v0, v10, :cond_5

    if-le v1, v10, :cond_a

    .line 10424
    :cond_5
    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->existPendingScrollFromNative:Z

    .line 10425
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget v4, p0, Landroid/webkit/WebViewClassic;->mPendingScrollX:I

    iget v5, p0, Landroid/webkit/WebViewClassic;->mPendingScrollY:I

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 10430
    :goto_2
    iget v3, p0, Landroid/webkit/WebViewClassic;->mScrollYDelta:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v6, v3}, Landroid/webkit/WebViewClassic;->shiftAfterZoom(II)V

    .line 10432
    .end local v0           #dx:I
    .end local v1           #dy:I
    :cond_6
    iput v8, p0, Landroid/webkit/WebViewClassic;->mPendingScrollX:I

    .line 10433
    iput v8, p0, Landroid/webkit/WebViewClassic;->mPendingScrollY:I

    .line 10434
    return-void

    .line 10397
    .restart local v2       #scale:F
    :cond_7
    const-string v3, "AutoTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AutoProf](302) [OTHER][WEBVIEW][DOUBLETAP_ZOOM_IN][FINISH] scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10400
    :cond_8
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    if-eqz v3, :cond_1

    .line 10401
    iget v3, p0, Landroid/webkit/WebViewClassic;->mScaleInPinchBegin:F

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 10402
    const-string v3, "AutoTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AutoProf](302) [OTHER][WEBVIEW][PINCH_ZOOM_OUT][FINISH] scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10406
    :goto_3
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->usePinchZoom:Z

    goto/16 :goto_1

    .line 10404
    :cond_9
    const-string v3, "AutoTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AutoProf](302) [OTHER][WEBVIEW][PINCH_ZOOM_IN][FINISH] scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 10428
    .end local v2           #scale:F
    .restart local v0       #dx:I
    .restart local v1       #dy:I
    :cond_a
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_2
.end method

.method public unregisterHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 11125
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    if-eqz v0, :cond_0

    .line 11126
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewManager;->unregisterProxy(Landroid/webkit/HTML5VideoViewProxy;)Z

    .line 11128
    :cond_0
    return-void
.end method

.method updateDefaultZoomDensity(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 2303
    iget v0, p0, Landroid/webkit/WebViewClassic;->NAV_SLOP:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    .line 2305
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    .line 2306
    return-void
.end method

.method updateDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 3918
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDoubleTapZoom(I)V

    .line 3919
    return-void
.end method

.method updateDrawingState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4168
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 4176
    :cond_0
    :goto_0
    return-void

    .line 4169
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4170
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 4171
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 4172
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 4174
    :cond_3
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2095
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 2096
    return-void
.end method

.method updateRectsForGL()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 7459
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    .line 7460
    .local v9, visible:Z
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7461
    if-eqz v9, :cond_0

    .line 7463
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 7464
    .local v6, rootView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 7465
    .local v7, rootViewHeight:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7466
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 7467
    .local v8, savedWebViewBottom:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v7, v2

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 7468
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    sub-int v2, v7, v8

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 7469
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    .line 7474
    .end local v6           #rootView:Landroid/view/View;
    .end local v7           #rootViewHeight:I
    .end local v8           #savedWebViewBottom:I
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 7475
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 7477
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    :goto_1
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    :goto_2
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->nativeUpdateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;F)V

    .line 7480
    return-void

    .line 7471
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 7477
    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_2
.end method

.method updateScrollCoordinates(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8987
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    .line 8988
    .local v0, oldX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    .line 8989
    .local v1, oldY:I
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 8990
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    .line 8991
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 8992
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/webkit/WebView$PrivateAccess;->onScrollChanged(IIII)V

    .line 8993
    const/4 v2, 0x1

    .line 8995
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "oldQuery"
    .parameter "newQuery"

    .prologue
    const/16 v2, 0x12d

    .line 5532
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 5533
    new-instance v0, Landroid/webkit/WebViewCore$UpdateSelectionData;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Landroid/webkit/WebViewCore$UpdateSelectionData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5534
    .local v0, usd:Landroid/webkit/WebViewCore$UpdateSelectionData;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5535
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 5537
    .end local v0           #usd:Landroid/webkit/WebViewCore$UpdateSelectionData;
    :cond_0
    return-void
.end method

.method updateSelectionColors(IZ)V
    .locals 13
    .parameter "wantedColor"
    .parameter "alsoApplyOnInactive"

    .prologue
    const v12, 0x3be56042

    .line 12177
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    .line 12179
    .local v9, context:Landroid/content/Context;
    const v0, 0xffffff

    and-int/2addr v0, p1

    const/high16 v1, -0x8000

    add-int v6, v0, v1

    .line 12180
    .local v6, selectionColor:I
    sput v6, Landroid/webkit/WebViewClassic;->HIGHLIGHT_COLOR:I

    .line 12181
    invoke-static {v6}, Landroid/graphics/Color;->hue(I)F

    move-result v10

    .line 12182
    .local v10, hue:F
    invoke-static {v6}, Landroid/graphics/Color;->saturation(I)F

    move-result v11

    .line 12183
    .local v11, saturation:F
    invoke-static {v6}, Landroid/graphics/Color;->brightness(I)F

    move-result v8

    .line 12184
    .local v8, brightness:F
    const v0, 0x3c449ba6

    add-float/2addr v0, v10

    const v1, 0x3d48b439

    add-float/2addr v1, v11

    const v7, 0x3dd91687

    sub-float v7, v8, v7

    invoke-static {v0, v1, v7}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v2

    .line 12185
    .local v2, outer0:I
    const v0, 0x3b03126f

    add-float/2addr v0, v10

    add-float v1, v11, v12

    const v7, 0x3cc49ba6

    sub-float v7, v8, v7

    invoke-static {v0, v1, v7}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v3

    .line 12186
    .local v3, outer2:I
    const v0, 0x3bc49ba6

    add-float/2addr v0, v10

    add-float v1, v11, v12

    const v7, 0x3dc8b439

    add-float/2addr v7, v8

    invoke-static {v0, v1, v7}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v4

    .line 12187
    .local v4, inner0:I
    const v0, 0x3b449ba6

    sub-float v0, v10, v0

    const v1, 0x3d4ccccd

    sub-float v1, v11, v1

    const v7, 0x3e189375

    add-float/2addr v7, v8

    invoke-static {v0, v1, v7}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v5

    .line 12188
    .local v5, inner2:I
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/webkit/WebViewClassic;->nativeSetSelectionColors(IIIIIIZ)V

    .line 12191
    return-void
.end method

.method public updateSelectionInCAB(Ljava/lang/String;)V
    .locals 1
    .parameter "selection"

    .prologue
    .line 5547
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    if-eqz v0, :cond_0

    .line 5548
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectionCallback;

    check-cast v0, Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0, p1}, Landroid/webkit/SelectActionModeCallback;->setCabTitle(Ljava/lang/String;)V

    .line 5549
    :cond_0
    return-void
.end method

.method useHtcZoom()Z
    .locals 1

    .prologue
    .line 12617
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_0

    .line 12618
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->useHtcZoom()Z

    move-result v0

    .line 12619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method viewToContentX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 3570
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 3579
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method public wasLastDrawSuccessful()Z
    .locals 1

    .prologue
    .line 4880
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeWasLastDrawSuccessful()Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 9178
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 9186
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomOut()Z

    move-result v0

    return v0
.end method

.method public isHitSelectionHandle()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public hideFloatView()V
    .locals 0

    .prologue
    return-void
.end method

.method public checkIfSaveImageFromCacheAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "imageUrl"
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
