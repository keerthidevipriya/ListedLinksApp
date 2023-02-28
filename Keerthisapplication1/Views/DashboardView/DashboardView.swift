import SwiftUI

struct DashboardView: View {
    @StateObject var dashboardViewModel = DashboardViewModel()
    @State private var model: DashboardModel?
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack {
                    HStack {
                        HStack {
                            Text(StringConstants.kLblDashboard)
                                .font(FontScheme.kFigtreeSemiBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(118.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.bottom, getRelativeHeight(9.0))
                                .onAppear {
                                    Api().loadData { dashboardModel in
                                        model = dashboardModel
                                        print("dashnoard model----\(model)")
                                    }
                                }
                            Spacer()
                            Button(action: {}, label: {
                                Image("img_search")
                            })
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA7001e))
                        }
                        .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(40.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(40.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(124.0),
                       alignment: .leading)
                .background(ColorConstants.BlueA400)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            Text(StringConstants.kLblGoodMorning)
                                .font(FontScheme.kFigtreeRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(105.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(38.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            HStack {
                                Text(StringConstants.kLblAjayManva)
                                    .font(FontScheme
                                        .kFigtreeSemiBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(127.0),
                                           height: getRelativeHeight(25.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(4.0))
                                Image("img_image296")
                                    .resizable()
                                    .frame(width: getRelativeWidth(28.0),
                                           height: getRelativeWidth(28.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(8.0))
                            }
                            .frame(width: getRelativeWidth(163.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            VStack {
                                HStack {
                                    Text(StringConstants.kLblOverview)
                                        .font(FontScheme
                                            .kFigtreeRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(60.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(7.0))
                                        .padding(.bottom, getRelativeHeight(6.0))
                                    Spacer()
                                    HStack {
                                        TextField(StringConstants.kMsg22Aug23Sep,
                                                  text: $dashboardViewModel.button)
                                            .font(FontScheme
                                                .kFigtreeRegular(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Black900)
                                            .padding()
                                        Image("img_search_gray_500")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeWidth(9.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(9.0))
                                            .padding(.horizontal, getRelativeWidth(7.0))
                                        Spacer()
                                    }
                                    .frame(width: getRelativeWidth(123.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                            bottomLeft: 6.0, bottomRight: 6.0)
                                            .stroke(ColorConstants.Gray200,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                               bottomLeft: 6.0, bottomRight: 6.0)
                                            .fill(Color.clear.opacity(0.7)))
                                }
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(28.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                                ZStack(alignment: .topLeading) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        ZStack(alignment: .leading) {
                                            Group {
                                                ZStack {}
                                                    .hideNavigationBar()
                                                    .frame(width: getRelativeWidth(327.0),
                                                           height: getRelativeHeight(136.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 4.0,
                                                                               topRight: 4.0,
                                                                               bottomLeft: 4.0,
                                                                               bottomRight: 4.0)
                                                            .fill(ColorConstants.WhiteA700))
                                                VStack {
                                                    Divider()
                                                        .frame(width: getRelativeWidth(1.0),
                                                               height: getRelativeHeight(108.0),
                                                               alignment: .trailing)
                                                        .background(ColorConstants.Gray101)
                                                        .padding(.horizontal, getRelativeWidth(7.0))
                                                    Text(StringConstants.kLblJan)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(13.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(8.0))
                                                }
                                                .frame(width: getRelativeWidth(13.0),
                                                       height: getRelativeHeight(126.0),
                                                       alignment: .leading)
                                                .padding(.leading, getRelativeWidth(31.2))
                                                .padding(.trailing, getRelativeWidth(250.8))
                                                VStack {
                                                    Divider()
                                                        .frame(width: getRelativeWidth(1.0),
                                                               height: getRelativeHeight(108.0),
                                                               alignment: .trailing)
                                                        .background(ColorConstants.Gray101)
                                                        .padding(.horizontal, getRelativeWidth(6.0))
                                                    Text(StringConstants.kLblFeb)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(13.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(8.0))
                                                }
                                                .frame(width: getRelativeWidth(13.0),
                                                       height: getRelativeHeight(126.0),
                                                       alignment: .leading)
                                                .padding(.leading, getRelativeWidth(65.74))
                                                .padding(.trailing, getRelativeWidth(216.26))
                                                VStack {
                                                    Divider()
                                                        .frame(width: getRelativeWidth(1.0),
                                                               height: getRelativeHeight(108.0),
                                                               alignment: .center)
                                                        .background(ColorConstants.Gray101)
                                                        .padding(.horizontal, getRelativeWidth(6.0))
                                                    Text(StringConstants.kLblMar)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(14.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(8.0))
                                                }
                                                .frame(width: getRelativeWidth(14.0),
                                                       height: getRelativeHeight(126.0),
                                                       alignment: .leading)
                                                .padding(.leading, getRelativeWidth(99.78))
                                                .padding(.trailing, getRelativeWidth(181.22))
                                                VStack {
                                                    Divider()
                                                        .frame(width: getRelativeWidth(1.0),
                                                               height: getRelativeHeight(108.0),
                                                               alignment: .trailing)
                                                        .background(ColorConstants.Gray101)
                                                        .padding(.horizontal, getRelativeWidth(7.0))
                                                    Text(StringConstants.kLblApr)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(14.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(9.0))
                                                }
                                                .frame(width: getRelativeWidth(14.0),
                                                       height: getRelativeHeight(127.0),
                                                       alignment: .leading)
                                                .padding(.leading, getRelativeWidth(133.57))
                                                .padding(.trailing, getRelativeWidth(147.43))
                                                VStack {
                                                    Divider()
                                                        .frame(width: getRelativeWidth(1.0),
                                                               height: getRelativeHeight(108.0),
                                                               alignment: .center)
                                                        .background(ColorConstants.Gray101)
                                                        .padding(.horizontal, getRelativeWidth(7.0))
                                                    Text(StringConstants.kLblMay)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(15.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(9.0))
                                                }
                                                .frame(width: getRelativeWidth(15.0),
                                                       height: getRelativeHeight(127.0),
                                                       alignment: .trailing)
                                                .padding(.leading, getRelativeWidth(167.27))
                                                .padding(.trailing, getRelativeWidth(112.73))
                                                VStack(alignment: .trailing, spacing: 0) {
                                                    Divider()
                                                        .frame(width: getRelativeWidth(1.0),
                                                               height: getRelativeHeight(108.0),
                                                               alignment: .trailing)
                                                        .background(ColorConstants.Gray101)
                                                        .padding(.horizontal, getRelativeWidth(5.0))
                                                    Text(StringConstants.kLblJul)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(10.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(8.0))
                                                }
                                                .frame(width: getRelativeWidth(10.0),
                                                       height: getRelativeHeight(126.0),
                                                       alignment: .trailing)
                                                .padding(.leading, getRelativeWidth(237.83))
                                                .padding(.trailing, getRelativeWidth(47.17))
                                                VStack {
                                                    Divider()
                                                        .frame(width: getRelativeWidth(1.0),
                                                               height: getRelativeHeight(108.0),
                                                               alignment: .trailing)
                                                        .background(ColorConstants.Gray101)
                                                        .padding(.horizontal, getRelativeWidth(7.0))
                                                    Text(StringConstants.kLblJun)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(14.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(8.0))
                                                }
                                                .frame(width: getRelativeWidth(14.0),
                                                       height: getRelativeHeight(126.0),
                                                       alignment: .trailing)
                                                .padding(.leading, getRelativeWidth(201.75))
                                                .padding(.trailing, getRelativeWidth(79.25))
                                            }
                                            Group {
                                                VStack {
                                                    Divider()
                                                        .frame(width: getRelativeWidth(1.0),
                                                               height: getRelativeHeight(108.0),
                                                               alignment: .trailing)
                                                        .background(ColorConstants.Gray101)
                                                        .padding(.horizontal, getRelativeWidth(8.0))
                                                    Text(StringConstants.kLblAug)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(15.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(9.0))
                                                }
                                                .frame(width: getRelativeWidth(15.0),
                                                       height: getRelativeHeight(127.0),
                                                       alignment: .trailing)
                                                .padding(.leading, getRelativeWidth(269.62))
                                                .padding(.trailing, getRelativeWidth(10.38))
                                                Divider()
                                                    .frame(width: getRelativeWidth(273.0),
                                                           height: getRelativeHeight(1.0),
                                                           alignment: .bottomTrailing)
                                                    .background(ColorConstants.Gray101)
                                                    .padding(.top, getRelativeHeight(112.5))
                                                    .padding(.leading, getRelativeWidth(21.23))
                                                VStack(alignment: .leading, spacing: 0) {
                                                    Text(StringConstants.kLbl75)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(9.0),
                                                               height: getRelativeWidth(9.0),
                                                               alignment: .topLeading)
                                                    Text(StringConstants.kLbl50)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(10.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(18.0))
                                                    Text(StringConstants.kLbl25)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(9.0),
                                                               height: getRelativeWidth(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(18.0))
                                                    Text(StringConstants.kLbl0)
                                                        .font(FontScheme
                                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(5.0),
                                                               height: getRelativeHeight(9.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(18.0))
                                                        .padding(.leading, getRelativeWidth(5.0))
                                                }
                                                .frame(width: getRelativeWidth(10.0),
                                                       height: getRelativeHeight(90.0),
                                                       alignment: .bottomLeading)
                                                .padding(.top, getRelativeHeight(26.48))
                                                .padding(.trailing, getRelativeWidth(279.88))
                                                Divider()
                                                    .frame(width: getRelativeWidth(273.0),
                                                           height: getRelativeHeight(1.0),
                                                           alignment: .bottomTrailing)
                                                    .background(ColorConstants.Gray101)
                                                    .padding(.top, getRelativeHeight(85.27))
                                                    .padding(.leading, getRelativeWidth(21.23))
                                                Divider()
                                                    .frame(width: getRelativeWidth(273.0),
                                                           height: getRelativeHeight(1.0),
                                                           alignment: .topTrailing)
                                                    .background(ColorConstants.Gray101)
                                                    .padding(.bottom, getRelativeHeight(74.96))
                                                    .padding(.leading, getRelativeWidth(21.23))
                                                Divider()
                                                    .frame(width: getRelativeWidth(273.0),
                                                           height: getRelativeHeight(1.0),
                                                           alignment: .topTrailing)
                                                    .background(ColorConstants.Gray101)
                                                    .padding(.bottom, getRelativeHeight(102.2))
                                                    .padding(.leading, getRelativeWidth(21.23))
                                                Divider()
                                                    .frame(width: getRelativeWidth(273.0),
                                                           height: getRelativeHeight(1.0),
                                                           alignment: .topTrailing)
                                                    .background(ColorConstants.Gray101)
                                                    .padding(.bottom, getRelativeHeight(129.43))
                                                    .padding(.leading, getRelativeWidth(21.23))
                                                Image("img_vector12")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(273.0),
                                                           height: getRelativeHeight(91.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.bottom, getRelativeHeight(39.43))
                                                    .padding(.leading, getRelativeWidth(21.63))
                                            }
                                            Group {
                                                Image("img_vector12_108x272")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(272.0),
                                                           height: getRelativeHeight(108.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.bottom, getRelativeHeight(21.81))
                                                    .padding(.leading, getRelativeWidth(21.48))
                                            }
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(295.0),
                                               height: getRelativeHeight(134.0))
                                    }
                                    Text(StringConstants.kLbl100)
                                        .font(FontScheme
                                            .kFigtreeRegular(size: getRelativeHeight(9.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(14.0),
                                               height: getRelativeHeight(9.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(126.0))
                                        .padding(.trailing, getRelativeWidth(281.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(295.0),
                                       height: getRelativeHeight(135.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.bottom, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(200.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 3, id: \.self) { index in
                                            ColumnsearchCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(20.0))
                            HStack {
                                Image("img_priceboost")
                                    .resizable()
                                    .frame(width: getRelativeWidth(21.0),
                                           height: getRelativeHeight(13.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.bottom, getRelativeHeight(17.0))
                                    .padding(.leading, getRelativeWidth(92.0))
                                Text(StringConstants.kLblViewAnalytics)
                                    .font(FontScheme
                                        .kFigtreeSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(109.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(18.0))
                                    .padding(.leading, getRelativeWidth(17.0))
                                    .padding(.trailing, getRelativeWidth(87.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            HStack {
                                HStack {
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblTopLinks)
                                                .font(FontScheme
                                                    .kFigtreeSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .padding(.horizontal, getRelativeWidth(16.0))
                                                .padding(.vertical, getRelativeHeight(9.0))
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(101.0),
                                                       height: getRelativeHeight(36.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 18.0,
                                                                           topRight: 18.0,
                                                                           bottomLeft: 18.0,
                                                                           bottomRight: 18.0)
                                                        .fill(ColorConstants.BlueA400))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(101.0),
                                           height: getRelativeHeight(36.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                               bottomLeft: 18.0, bottomRight: 18.0)
                                            .fill(ColorConstants.BlueA400))
                                    Text(StringConstants.kLblRecentLinks)
                                        .font(FontScheme
                                            .kFigtreeSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(93.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(24.0))
                                }
                                .frame(width: getRelativeWidth(218.0),
                                       height: getRelativeHeight(36.0), alignment: .center)
                                Spacer()
                                Button(action: {}, label: {
                                    Image("img_search_gray_500_36x36")
                                })
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeWidth(36.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                        bottomLeft: 8.0,
                                                        bottomRight: 8.0)
                                        .stroke(ColorConstants.Gray200,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.Gray101))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(36.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(40.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            VStack {
                                HStack {
                                    HStack {
                                        Image("img_rectangle808")
                                            .resizable()
                                            .frame(width: getRelativeWidth(48.0),
                                                   height: getRelativeWidth(48.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kMsgSampleLinkNam)
                                                .font(FontScheme
                                                    .kFigtreeRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(120.0),
                                                       height: getRelativeHeight(14.0),
                                                       alignment: .topLeading)
                                            Text(StringConstants.kLbl22Aug2022)
                                                .font(FontScheme
                                                    .kFigtreeRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray500)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(69.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(10.0))
                                                .padding(.trailing, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeHeight(37.0), alignment: .bottom)
                                        .padding(.leading, getRelativeWidth(12.0))
                                    }
                                    .frame(width: getRelativeWidth(180.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLbl2323)
                                            .font(FontScheme
                                                .kFigtreeSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblClicks)
                                            .font(FontScheme
                                                .kFigtreeRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(9.0))
                                    }
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(35.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                                HStack {
                                    TextField(StringConstants.kMsgHttpsSamplel,
                                              text: $dashboardViewModel.group7542Text)
                                        .font(FontScheme
                                            .kFigtreeRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.BlueA400)
                                        .padding()
                                    Image("img_copy")
                                        .resizable()
                                        .frame(width: getRelativeWidth(11.0),
                                               height: getRelativeHeight(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(12.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(18.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(328.0),
                                       height: getRelativeHeight(40.0), alignment: .leading)
                                .overlay(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0)
                                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [2, 2])))
                                .background(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0)
                                    .fill(ColorConstants.Blue50))
                                .padding(.top, getRelativeHeight(16.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(116.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            VStack {
                                HStack {
                                    HStack {
                                        Image("img_rectangle808")
                                            .resizable()
                                            .frame(width: getRelativeWidth(48.0),
                                                   height: getRelativeWidth(48.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kMsgSampleLinkNam)
                                                .font(FontScheme
                                                    .kFigtreeRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(120.0),
                                                       height: getRelativeHeight(14.0),
                                                       alignment: .topLeading)
                                            Text(StringConstants.kLbl22Aug2022)
                                                .font(FontScheme
                                                    .kFigtreeRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray500)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(69.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(10.0))
                                                .padding(.trailing, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeHeight(37.0), alignment: .bottom)
                                        .padding(.leading, getRelativeWidth(12.0))
                                    }
                                    .frame(width: getRelativeWidth(180.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLbl2323)
                                            .font(FontScheme
                                                .kFigtreeSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblClicks)
                                            .font(FontScheme
                                                .kFigtreeRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(9.0))
                                    }
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(35.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                                HStack {
                                    TextField(StringConstants.kMsgHttpsSamplel,
                                              text: $dashboardViewModel.group7542oneText)
                                        .font(FontScheme
                                            .kFigtreeRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.BlueA400)
                                        .padding()
                                    Image("img_copy")
                                        .resizable()
                                        .frame(width: getRelativeWidth(11.0),
                                               height: getRelativeHeight(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(12.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(18.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(328.0),
                                       height: getRelativeHeight(40.0), alignment: .leading)
                                .overlay(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0)
                                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [2, 2])))
                                .background(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0)
                                    .fill(ColorConstants.Blue50))
                                .padding(.top, getRelativeHeight(16.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(116.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        }
                        Group {
                            VStack {
                                HStack {
                                    HStack {
                                        Image("img_rectangle808")
                                            .resizable()
                                            .frame(width: getRelativeWidth(48.0),
                                                   height: getRelativeWidth(48.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kMsgSampleLinkNam)
                                                .font(FontScheme
                                                    .kFigtreeRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(120.0),
                                                       height: getRelativeHeight(14.0),
                                                       alignment: .topLeading)
                                            Text(StringConstants.kLbl22Aug2022)
                                                .font(FontScheme
                                                    .kFigtreeRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray500)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(69.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(10.0))
                                                .padding(.trailing, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeHeight(37.0), alignment: .bottom)
                                        .padding(.leading, getRelativeWidth(12.0))
                                    }
                                    .frame(width: getRelativeWidth(180.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLbl2323)
                                            .font(FontScheme
                                                .kFigtreeSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblClicks)
                                            .font(FontScheme
                                                .kFigtreeRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(9.0))
                                    }
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(35.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                                HStack {
                                    TextField(StringConstants.kMsgHttpsSamplel,
                                              text: $dashboardViewModel.group7542twoText)
                                        .font(FontScheme
                                            .kFigtreeRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.BlueA400)
                                        .padding()
                                    Image("img_copy")
                                        .resizable()
                                        .frame(width: getRelativeWidth(11.0),
                                               height: getRelativeHeight(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(12.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(18.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(328.0),
                                       height: getRelativeHeight(40.0), alignment: .leading)
                                .overlay(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0)
                                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [2, 2])))
                                .background(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0)
                                    .fill(ColorConstants.Blue50))
                                .padding(.top, getRelativeHeight(16.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(116.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            VStack {
                                HStack {
                                    HStack {
                                        Image("img_rectangle808")
                                            .resizable()
                                            .frame(width: getRelativeWidth(48.0),
                                                   height: getRelativeWidth(48.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kMsgSampleLinkNam)
                                                .font(FontScheme
                                                    .kFigtreeRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(120.0),
                                                       height: getRelativeHeight(14.0),
                                                       alignment: .topLeading)
                                            Text(StringConstants.kLbl22Aug2022)
                                                .font(FontScheme
                                                    .kFigtreeRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray500)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(69.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(10.0))
                                                .padding(.trailing, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeHeight(37.0), alignment: .bottom)
                                        .padding(.leading, getRelativeWidth(12.0))
                                    }
                                    .frame(width: getRelativeWidth(180.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLbl2323)
                                            .font(FontScheme
                                                .kFigtreeSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblClicks)
                                            .font(FontScheme
                                                .kFigtreeRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(9.0))
                                    }
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(35.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                                HStack {
                                    TextField(StringConstants.kMsgHttpsSamplel,
                                              text: $dashboardViewModel.group7542threeText)
                                        .font(FontScheme
                                            .kFigtreeRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.BlueA400)
                                        .padding()
                                    Image("img_copy")
                                        .resizable()
                                        .frame(width: getRelativeWidth(11.0),
                                               height: getRelativeHeight(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(12.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(18.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(328.0),
                                       height: getRelativeHeight(40.0), alignment: .leading)
                                .overlay(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0)
                                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [2, 2])))
                                .background(RoundedCorners(bottomLeft: 8.0, bottomRight: 8.0)
                                    .fill(ColorConstants.Blue50))
                                .padding(.top, getRelativeHeight(16.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(116.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            HStack {
                                Image("img_link")
                                    .resizable()
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeWidth(19.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(14.0))
                                    .padding(.leading, getRelativeWidth(99.0))
                                Text(StringConstants.kLblViewAllLinks)
                                    .font(FontScheme
                                        .kFigtreeSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.bottom, getRelativeHeight(15.0))
                                    .padding(.leading, getRelativeWidth(18.0))
                                    .padding(.trailing, getRelativeWidth(93.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            Button(action: {
                                let phoneNumber =  "+918297368106"
                                let appURL = URL(string: "https://api.whatsapp.com/send?phone=\(phoneNumber)")!
                                if UIApplication.shared.canOpenURL(appURL) {
                                    if #available(iOS 10.0, *) {
                                        UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
                                    }
                                    else {
                                        UIApplication.shared.openURL(appURL)
                                    }
                                }
                            }) {
                                HStack {
                                    Spacer()
                                    Image("img_vector")
                                        .resizable()
                                        .frame(width: getRelativeWidth(24.0),
                                               height: getRelativeWidth(24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(20.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                    TextField(StringConstants.kLblTalkWithUs,
                                              text: $dashboardViewModel.frame7671Text)
                                        .font(FontScheme
                                            .kFigtreeSemiBold(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .padding()
                                    
                                }
                            }
                            
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(64.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(ColorConstants.Green50051,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.Green5001e))
                            .padding(.top, getRelativeHeight(40.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            HStack {
                                Spacer()
                                Image("img_questionmark")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeWidth(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(21.0))
                                    .padding(.bottom, getRelativeHeight(20.0))
                                    .padding(.horizontal, getRelativeWidth(12.0))
                                TextField(StringConstants.kMsgFrequentlyAske,
                                          text: $dashboardViewModel.frame7670Text)
                                    .font(FontScheme
                                        .kFigtreeSemiBold(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Black900)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(65.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(ColorConstants.BlueA40051,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.Blue50))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0)
                        .fill(ColorConstants.Gray100))
                }
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
        
        TabView {
            Text("Links")
                .tabItem {
                    Label("Links", image: "mainIcon")
                }
            Text("Courses")
                .tabItem {
                    Label("Courses", image: "files")
                }
            Text("")
                .tabItem {
                    Label("", image: "addIcon")
                }
            Text("Campaigns")
                .tabItem {
                    Label("Campaigns", image: "mediaIcon")
                }
            Text("Profiles")
                .tabItem {
                    Label("Profile", image: "profile")
                }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
