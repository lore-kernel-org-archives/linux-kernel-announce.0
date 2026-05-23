Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDDE272803
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779536411; cv=none; b=ngGtSEeDJ3w0oKacQrIJN7OreLM2EVYLlIQ4aT98JZLLHXWhkUS3JvNQNuvOZvaCqK2lQwdRS/kQfsWFeGFyXmVG32IyinO1v0dlTveC6kNP71HhzypptKtTw05Ta43EREJU+imi1uaoBbr2z3e1a26Ca3qcr5dlPQqXoH5axpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779536411; c=relaxed/simple;
	bh=WezcDYI9eCpgHNjUGWKNKXpNtZh7YIriU7HmfJ/8Rmk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CIiWPgvTzibKOhSydxotd5KkVCwQtMH1H6iTPEQQGFL+dIM8NSsxvojM7Q0GYPZv9KodygrvGvEyvtgAKm0unNC7BzByqJ8ObajFBAPxGtdzJIa8T1HnUSIp9mDzc3McLvt18wKmPbX5UXMvfnMVWpEY5eyJdVXdDCpNlwdD+NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779536411;
	bh=WezcDYI9eCpgHNjUGWKNKXpNtZh7YIriU7HmfJ/8Rmk=;
	h=Subject:From:To:Date:From;
	b=nWRr5QhJlGewHw2BbaQiKj5OOAOm76SipQOw691+WjKDW0tcN3rHrbWeFTCtrxHOx
	 53zNZ+Gl9n7HLn51jURbA8aCtpgY4zAJa/AZlJvI22pG0uvSvS+QItzLMnWTOl0fxM
	 FPiSIKymiDcZtkgl+BdXsKNd5+wpomtD87XXOx60=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5834A1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:40:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 19D2D3808205
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:40:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 23 May 2026 11:40:18 +0000
Message-Id: <20260523114018.release-7.0.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.10.xz

Linux kernel version 7.0.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.10/v7.0.9

