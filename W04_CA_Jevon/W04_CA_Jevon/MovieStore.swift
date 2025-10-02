//
//  MovieStore.swift
//  W04_CA_Jevon
//
//  Created by student on 02/10/25.
//

import Foundation

// Menggunakan ObservableObject dan @Published untuk state management
class MovieStore: ObservableObject {
    @Published var movies: [Movie] = [
        Movie(title: "THE SMASHING MACHINE",
              genre: "Action",
              posterURL: URL(string: "https://nos.jkt-1.neo.id/media.cinema21.co.id/movie-images/25SMAE.jpg"),
              description: "Kisah petarung legendaris seni bela diri campuran dan UFC Mark Kerr. Berlatar akhir tahun 90-an hingga awal 2000-an, The Smashing Machine menampilkan sisi kelam karier seorang Mark Kerr (Dwayne Johnson). Ia adalah mesin penghancur yang brutal, tak terkalahkan, dan haus kemenangan. Tapi di balik sorotan kamera, ia adalah sosok yang bergulat dengan kecanduan obat, masalah hubungan sosial dan kehilangan jati diri."),
        Movie(title: "DIBALIK PINTU KEMATIAN",
              genre: "Horror",
              posterURL: URL(string: "https://nos.jkt-1.neo.id/media.cinema21.co.id/movie-images/15DPKN.jpg"),
              description: "Rahmat (Gibran Marten) dan Anisa (Sarah Felicia) pasangan miskin desa, merampok Bank tempat mereka bekerja. Setelah berhasil, mereka menikah dan hidup bahagia. Namun kebahagian itu sirna saat rumah yang mereka beli ternyata milik pak Gawat (Ari Tulang), pemilik gerbang kematian didalam rumahnya dan pemelihara setan. Mampukah mereka lolos dari terror rumah impiannya sendiri?"),
        Movie(title: "DONGJI RESCUE",
              genre: "Drama",
              posterURL: URL(string: "https://nos.jkt-1.neo.id/media.cinema21.co.id/movie-images/25DREE.jpg"),
              description: "Selama Perang Dunia II, sebuah kapal barang Jepang yang membawa tawanan perang Inggris tenggelam di perairan dekat Zhoushan, Tiongkok, dan ribuan tawanan Inggris terjebak di palka kapal oleh Jepang. Dalam situasi genting ini, sekelompok nelayan dari Pulau Dongji dengan tegas maju. Dengan kebaikan hati, keganasan, dan kegigihan mereka, mereka membuka jalan keluar bagi para tawanan yang terjebak di tengah gelombang yang bergejolak."),
        Movie(title: "GETIH IRENG",
              genre: "Horror",
              posterURL: URL(string: "https://nos.jkt-1.neo.id/media.cinema21.co.id/movie-images/15GIRG.jpg"),
              description: "Pram (Darius Sinathrya) dan Rina (Titi Kamal) adalah pasangan suami istri yang sangat mendambakan anak. Tapi mereka mengalami gangguan gaib yang membuat Rina terus keguguran dan terancam tidak akan pernah bisa punya anak selamanya."),
        Movie(title: "ZOOTOPIA 2",
              genre: "Animation",
              posterURL: URL(string: "https://nos.jkt-1.neo.id/media.cinema21.co.id/movie-images/25ZOA2.jpg"),
              description: "Setelah memecahkan kasus terbesar dalam sejarah Zootopia, polisi pemula Judy Hopps (Ginnifer Goodwin) dan Nick Wilde (Jason Bateman) menyadari bahwa kerjasama mereka tidak sekuat yang mereka bayangkan, saat kepala Polisi Bogo (Idris Elba) memerintahkan mereka untuk bergabung dengan program konseling. Namun, tak lama kemudian, keduanya diuji habis-habisan ketika menemukan diri mereka berada dalam sebuah misteri yang berliku-liku terkait kehadiran sosok ular berbisa di kota metropolitan hewan tersebut."),
        Movie(title: "PREDATOR: BADLANDS",
              genre: "Sci-Fi",
              posterURL: URL(string: "https://nos.jkt-1.neo.id/media.cinema21.co.id/movie-images/25PBAS.jpg"),
              description: "Di sebuah planet terpencil, seorang Predator muda yang terbuang dari klannya berjumpa dengan sekutu tak terduga dalam diri Thia (Elle Fanning). Keduanya memulai perjalanan berbahaya untuk menemukan musuh bebuyutan sang Predator."),
        // Easter Egg
        Movie(title: "Secret Gem",
              genre: "Mystery",
              posterURL: URL(string: "https://i.pinimg.com/736x/97/14/b2/9714b205af6116bf9aabf159f423373b.jpg"),
              description: "You found the secret movie! This is an easter egg for the curious user who searches for 'secret' or 'gem'. Ask teh staff for more gift, REMEBER the keyword is 'SECRETGEM'.")
    ]
    
    
    var allGenres: [String] {

        var genres = ["All"]
        
        let uniqueGenres = Set(movies.map { $0.genre })
        
        genres.append(contentsOf: uniqueGenres.sorted())
        
        return genres
    }
}

