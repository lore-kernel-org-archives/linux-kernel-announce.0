Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F80F28F958
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749042906; cv=none; b=uwBTzxGEDMyEkMZLmUrWGj/vNp/pjDrbFjZkjwPgqveWoLF+v0d5MjUbOo6uuXxAn/YckSg6O9hjBCrOcTZRVesTasB0n3CuTcJp5wnudHCv0opvu+k2+eYJ9D1D9niSt+OuTaWK6x4BC2rXa0HhhsD7wtONi6GptUb0trWKxxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749042906; c=relaxed/simple;
	bh=dANki+oy+oDFuSH3FdoZE/DROhdYTKVda3eFGIGxXFs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dVWXGmlIfPbHTNv0trWH2TQ35bRSpkWkM7IJoW3SBBagZ3ubu4W8XlNJKV8tmx5LX4CYgIT+WXSanWFZwJsLKAk+BiQVVxSt/b9FoBDJsDtlAkPrHWmb5Hrjuw1z6pngBlfKXECnSiVMMhLlTEfH8fgRNHK6tFUECjvS4HjZtes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749042906;
	bh=dANki+oy+oDFuSH3FdoZE/DROhdYTKVda3eFGIGxXFs=;
	h=Subject:From:To:Date:From;
	b=Tn1jXuFOTsA3PQSDUvRaz85775OmUzU8ItG/zAt9ELYL3LC1elFEuHEfgGQxms6by
	 oHmmiLZ6euZUHSQtXcTGs3A0Hgbr1hAdguJF5XTj+F3hQZoYHVBsSXppcQCxNU6t+2
	 CyQjahAlAo4CeCqArXznbv1WN7avWI5bZxitd9/U=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF673C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:15:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33CA739D60B4
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:15:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.141 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Jun 2025 13:15:37 +0000
Message-Id: <20250604131537.release-6.1.141@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.141
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.141.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.141.xz

Linux kernel version 6.1.141 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.141.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.141.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.141.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.141/v6.1.140

