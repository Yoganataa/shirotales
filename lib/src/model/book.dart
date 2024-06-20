class Book {
  String? imgUrl;
  String? name;
  String? author;
  num? score;
  num? review;
  num? view;
  List<String>? type;
  String? desc;
  List<String>? chapters;

  Book({
    this.imgUrl,
    this.name,
    this.author,
    this.score,
    this.review,
    this.view,
    this.type,
    this.desc,
    this.chapters,
  });

  static List<Book> generateRecommendedBook() {
    return [
      Book(
        imgUrl: 'assets/images/book1.jpg',
        name: 'Harry Potter and the Deathly Hallows',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book2.jpg',
        name: 'Harry Potter and the Order of the Phoenix',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book3.jpg',
        name: 'Harry Potter and the Prisoner of Azkaban',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book4.jpg',
        name: 'Harry Potter Sihirli Yaratıklar',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book5.jpg',
        name: 'Harry Potter ve Felsefe Taşı',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
    ];
  }

  static List<Book> generateTrendingBook() {
    return [
      Book(
        imgUrl: 'assets/images/book6.jpg',
        name: 'Harry Potter ve Ateş Kadehi',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book7.jpg',
        name: 'Harry Potter ve Azkaban Tutsağı',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book8.jpg',
        name: 'Harry Potter ve Melez Prens',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book9.jpg',
        name: 'Harry Potter ve Sırlar Odası',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book10.jpg',
        name: 'Harry Potter ve Zümrüdü Anka Yoldaşlığı',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
    ];
  }

static List<Book> generateListBook() {
    return [
      Book(
        imgUrl: 'assets/images/book6.jpg',
        name: 'Harry Potter ve Ateş Kadehi',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book7.jpg',
        name: 'Harry Potter ve Azkaban Tutsağı',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book8.jpg',
        name: 'Harry Potter ve Melez Prens',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book9.jpg',
        name: 'Harry Potter ve Sırlar Odası',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book10.jpg',
        name: 'Harry Potter ve Zümrüdü Anka Yoldaşlığı',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
    ];
  }

static List<Book> generateMarkBook() {
    return [
      Book(
        imgUrl: 'assets/images/book6.jpg',
        name: 'Harry Potter ve Ateş Kadehi',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book7.jpg',
        name: 'Harry Potter ve Azkaban Tutsağı',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book8.jpg',
        name: 'Harry Potter ve Melez Prens',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book9.jpg',
        name: 'Harry Potter ve Sırlar Odası',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
      Book(
        imgUrl: 'assets/images/book10.jpg',
        name: 'Harry Potter ve Zümrüdü Anka Yoldaşlığı',
        author: 'J.K. Rowling',
        score: 4.9,
        review: 107.3,
        view: 2.7,
        type: ['Action', 'Fantasy', 'Supernatural'],
        desc: 'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.',
        chapters: ['Chapter 1', 'Chapter 2', 'Chapter 3'],
      ),
    ];
  }


  static generateBooks() {}
}
