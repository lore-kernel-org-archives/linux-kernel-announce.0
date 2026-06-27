Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92619182D6
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jun 2026 10:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782555636; cv=none; b=bLZ97WXBZvsve9ZRot5ByNY85Oso1LUinYZcCjHruTYrQ56Hf+AdFx8Esk48OgGAGl2aCUUG2vt6u6Kqr+GFHHEWu+0RwI5iemKJ8wLy49BEXfB6SWXJCZv3H5vnv1EUFq9KBq3kaPaZDpPZGNH+tLxPLvNYGHdDquxhRAn2evw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782555636; c=relaxed/simple;
	bh=kIERg707FOPqQrulHbLuZ+nCjlHOL3GpUO/ISJazBJg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UVyqXPO8ZdACPSA2bq0SjbZP7vxVm4isli+LyjaH9LrblsTyVBooUe7ToyMIL4jxZvZR03EFqFhVWX/612AOqC3PJdxVXwpUiiqEg9O6wJGkc2cIVkhps+QGHZzV2GD4m9uhsChcgvU3TZdCPawftkI0Z7os4rkrAqVFnN+AFpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1782555636;
	bh=kIERg707FOPqQrulHbLuZ+nCjlHOL3GpUO/ISJazBJg=;
	h=Subject:From:To:Date:From;
	b=cPrbwyApp6+Mu3r+Wkc3YIylmjh3SeBcU7ls56qES1OqmFSMXhVZJ9Qj3+HoTM/Q6
	 6PNRiLNJwNRzp8GZu94GbWdI/qvWZWL17sk58qUldl2Olq0MROKzIOV5zSU4bsRh+g
	 3qIy9V4mELdi9ZCR36ZmQcSW0cxASMp7rh09JQH4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4138E1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jun 2026 10:20:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 968A93938C7D
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jun 2026 10:20:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.37 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jun 2026 10:20:21 +0000
Message-Id: <20260627102021.release-6.18.37@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.37
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.37.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.37.xz

Linux kernel version 6.18.37 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.37.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.37.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.37.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.37/v6.18.36

