Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4553817E019
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Dec 2024 10:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733393724; cv=none; b=Nl2iw67aFjO+HTVaje6/KNEL1YWsWexpZBFz3tUNOE5+/0ZD8V/Gl2lVF6Kydfsh18Kaxbk1iv3kB5MIUXisK7Jf5BImpTmYcFWHAu75ww+z5zDmuSfjszAK/ZzCkuj+66iuM2EQbDKIiuAh1M8VmR363XGTWyqek5bloQkDaMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733393724; c=relaxed/simple;
	bh=gA2tqL/gD9Q47vD52lyzl6T7MD32NIkEt3vgZG8lhRk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hMowXWr1yxSoWlqztHmm9WiTYIIhXylT7rhJ6An9jz28st9Lcpi0DeBBSLxMYV4kBXD+cf3H0QXMS9URVPXSSh42wHvHx0dqbvAYZh/7BKdltuPAAUDclttPGl+4zKI3l1JNbqPUP/VTfMkOmRfwO52H01yC6h0TM9bg195Kiww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1733393724;
	bh=gA2tqL/gD9Q47vD52lyzl6T7MD32NIkEt3vgZG8lhRk=;
	h=Subject:From:To:Date:From;
	b=KbTVQbqtZfJ4Xyaakio+w/BGaoW9z7027aUF/2IFTG4ansDMQbWkeih791U3tXDlL
	 B4Rqk+TB7jv1NB2/K2I1lT18oU35ifC78Zh/K9A331DHQdN5TalCRufHBqslrJbTE4
	 VucnrAoSyJnsMgAc/iPYYROs7GhlTtfz8jzEfV6c=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E72CAC4CED1
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Dec 2024 10:15:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1CF6380A94D
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Dec 2024 10:15:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.325 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 05 Dec 2024 10:15:38 +0000
Message-Id: <20241205101538.release-4.19.325@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.325
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.325.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.325.xz

Linux kernel version 4.19.325 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.325.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.325.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.325.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.325/v4.19.324

