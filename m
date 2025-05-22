Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8515928AAFC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747916702; cv=none; b=OuctxMoYSCb4IzEaIHiU3cSEqWCjSfg+RKMFhCp7ltBSW3HcDXsaV4RxJMajvQGCNryKv9AdpauJBRneAB0AcCP4851bVrVdA152hBKG/5MRK3L2KewVndmW2VBr6SNLpmKa5FM9npUsro9ZWW+Nv9E6bnfCDn9q1+sKUAANOzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747916702; c=relaxed/simple;
	bh=U8vQKloLeczRWORH3S9tROyq9pfrJLCZ9scWzflawlw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=C4Fy4vtEZeTgQUEu34+YJHXGdUBj30ChNGtvQLf5TpsysTo50bKZWWGp+tJiMqAqf1Nn3PZuL+hWu8xobusVSntpgUTwF947+a2+47eU7Qo0N90FaTOcfoVttcuMyt85320Sx8QrXCTd8gOZGwWC0hYc2z1FpjV9y8UrVpw0yDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747916702;
	bh=U8vQKloLeczRWORH3S9tROyq9pfrJLCZ9scWzflawlw=;
	h=Subject:From:To:Date:From;
	b=AYwXTsrchJV+SGvtiV2qfnmtAgjd2QAmA3geFp+6IVcR85G1CuLCcoNheSGQulL8P
	 JcWNxeitjv5V8fo2BGImfCj/Tqn5U7JTaQe+7AHDzlfTNNNaCzmgM3HRKR7uU245Hb
	 bx4RtzhEMAK2hx+ODZAO8A65GuuU22vB6If1dmqM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14E1EC4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:25:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1BA2380DBF3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:25:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.184 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 22 May 2025 12:25:37 +0000
Message-Id: <20250522122537.release-5.15.184@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.184
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.184.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.184.xz

Linux kernel version 5.15.184 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.184.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.184.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.184.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.184/v5.15.183

