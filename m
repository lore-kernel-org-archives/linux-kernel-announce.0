Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592182AE68
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Jul 2026 21:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784495539; cv=none; b=iJ1d/ydumHzPQULiXmqFaoOd08bEAY2loOBtXwfUUh+VgbEnJA2i6TiVnQYghUTQuXfPVhbxOPi0LB42GUL2by/seFRYM9olNwIy99a4qGMifhVtU4Jkfm2xDedqCXMql7WfscBxqCUoHDW8L/5U9BOIXfHN/jm9LxwGMByYj7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784495539; c=relaxed/simple;
	bh=HzsKBo0ii00xnY7Dd1VlSM/clUwTiFI9NnhspvySqJQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=A2EutGlVIpJnQ9fH4RYbLXnDN9r3iMY1kIMaNbH/TmznVDd+JLsW3MBvYZKqU5LIPvkUqTPOzS+BizYHFLvmXtjDvJxr9ujm+zVWeFNJN5x+dbhYTI8wxC9Y3yRwEXoCwAkgpcPxYQw9nCAQrv5hO9NJNn+nN12nGvKEI0sqilU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784495539;
	bh=HzsKBo0ii00xnY7Dd1VlSM/clUwTiFI9NnhspvySqJQ=;
	h=Subject:From:To:Date:From;
	b=JYuvGHyxOzXZAN39iiM0ORCqh3+iB1kjBEjLC9941do4CU4bz1FqRrhP3lVbgQo5O
	 6FWiNEhTX0WgKbj79Ioz2O6WD764xcAIm+NpKCciGGf3O40+PAIVyxWPtWUExrrUF9
	 iJpLSbeOHe2rX0K3/IY083I+Nrl7D+Iz9/awQ7Jw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 172B71F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Jul 2026 21:12:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1D1B338119CA
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Jul 2026 21:11:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 19 Jul 2026 21:11:48 +0000
Message-Id: <20260719211148.release-7.2-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.2-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.2-rc4/v7.1

Linux kernel version 7.2-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.2-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.2-rc4/v7.1

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.2-rc4/v7.2-rc3

