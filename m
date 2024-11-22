Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE15018B466
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 14:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732287042; cv=none; b=u00S6RwortW4/quhl6Pelo81Mkw/u2dz5PBmYUFVY7HZkU7Hg8l2rkjqBwpEDvbldChcskm9rnUjE9hnW3BI3u20f2OvdiukUJyItcdfHMGoXvd60Z2uXjC0+8JfG4/wPSBK1fuIonQUKuPQZV6+y4q+9vuxpY21mbigy/nZCrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732287042; c=relaxed/simple;
	bh=jFVC7RLFz13keb1Z2p7rI8c5EhitTDsmw5OYXqIDTvM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=pLEpUz5a5soj9kuv4BerQm7BmPRtbDtWOFBFyH+VKLl9K9QTAfriDp8d3GLtXrZLbZubNQRLM4ry/DLzibai4wRsjLP2z3kgNsmYFGke9VDWoh6NIqNbPQbHjYLGvTECXL/A0PMmb7hWZWFDenGa5MjUxTUdNbIgf+WxAc4BK7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1732287042;
	bh=jFVC7RLFz13keb1Z2p7rI8c5EhitTDsmw5OYXqIDTvM=;
	h=Subject:From:To:Date:From;
	b=ei7pjWR063TWgwipZ+6Ze9ypH0r7s4CJQMoRV2kjL5YM754QBu1gWezxHtdxA3cBh
	 dX17HZuDccV1aKe2QqjoSIqFBUHyREEklKowglWLZSrSkA9BliRxxJ3D62uwcyER20
	 45N4PlSl1CKuR95oth0+QjRKLk/vLz1keeXhROj0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 515DEC4CECF
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 14:50:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7571E3809A00
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 14:50:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 22 Nov 2024 14:50:53 +0000
Message-Id: <20241122145053.release-6.12.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.1.xz

Linux kernel version 6.12.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.1/v6.12

