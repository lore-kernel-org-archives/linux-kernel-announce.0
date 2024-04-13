Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C27381B1
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713007843; cv=none; b=Bh8VqrzUO8Q+NEwpnPNbBW2RRAsHhSqywpHuMcd1f790GBNyNwk/IixP0JWBRj44sLp1imQAlmDW6iMWSOMdofZCg4OC/1paUCGJPcCFIL9lZDubGhoTXzN8eB49OVQm+PQyerPvQZwWJoQybnjF/IkqaPPSQP6FA3cojWddXqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713007843; c=relaxed/simple;
	bh=6fJ5UmlR+PH/30G/lPZjiILAcYBNnD1fWj1n1k7Aeew=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cIHBFrqv9HLIq3oNbdz5PkUFY6hYQf5YXlZVVlrhCej4FpN+6zgIY2ri7QNZNfwjBJZEiTsdQsJ3I1WkYj6WkMYRuH6JwvOFuT6lh8DLE34XU19jkerMsoY5vrSOAK/ERZ7T1s0+vux3RQWssMQqsCR3iOck1/7ey+rljiZn4AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713007842;
	bh=6fJ5UmlR+PH/30G/lPZjiILAcYBNnD1fWj1n1k7Aeew=;
	h=Subject:From:To:Date:From;
	b=H50mIW/9bzDLsFKDB0lAQafNbMufl4NO3vUhvKy1aGo5TmWnPD1DZw7i1o+4v5Tg/
	 mLg78lJWRVGSq2CQ7zrdh05Rt29fyvDUkkVcXUQc4618YKW91rlYUdA1ZdOOcffxwE
	 BMNSLAvqZ6IiA+n9tSBifTxw0IJzaYLV/Hd+h+t8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F518C2BD11
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:30:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 8B676DF7856
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:30:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.86 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 13 Apr 2024 11:30:42 +0000
Message-Id: <20240413113042.release-6.1.86@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.86
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.86.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.86.xz

Linux kernel version 6.1.86 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.86.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.86.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.86.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.86/v6.1.85

