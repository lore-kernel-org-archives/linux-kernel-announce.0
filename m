Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826E4224D7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Mar 2025 23:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742168248; cv=none; b=sld8mlaYkqyiE42eiA8Ag7rsXujoANROgAhGBT44Vr/O1Ue9kXzVctdqD6MQnpfYu325Lh1p/1t1dln6DM2UsSy5ciEiGg4NEHKNp3gQG5RDFkKceuw8XnKprZtZMmkk1uTi7ykIeelNc3u5qXWGa9T9RXBEKhORXwUN+FeFn28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742168248; c=relaxed/simple;
	bh=cFzVg21EFd5HIX5X3JUi62B3m6QA9G0EfgDziFXvU/c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LU0FHs2JQh+BK3dDwLgQzFbM6CtM1O8gGC2irA+0ecrIXmpzf4eOE3MewcIj9uFwZamuHQ3WQ2nJN8kPK6sEtGBr5ISsu2AV2GNtq8Tgb6WV4gHbVbYVi1ErabvMFySNm5l37ZsgMUukoAt/16qOF+RE2Di3gZ++ejaTk+fzVCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1742168248;
	bh=cFzVg21EFd5HIX5X3JUi62B3m6QA9G0EfgDziFXvU/c=;
	h=Subject:From:To:Date:From;
	b=BWEMzXjsY0NliY7dBqppsmcG48xvRNPkWpTgX/qzAEaEEf8iz0tjzNFlRb9nIjaSI
	 d1pqoUPZHJO99bX4Iheg2LCxs6RUtabbE8fbbZcOUJsPZJ8pXDkN7RoFGYonm3JpkP
	 7+KkMBeHcxQ6i9sJ00azlWUdCaY6BY4AIcxSrjog=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03216C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Mar 2025 23:37:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 39B38380DBE3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Mar 2025 23:38:04 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Mar 2025 23:38:02 +0000
Message-Id: <20250316233802.release-6.14-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.14-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.14-rc7/v6.13

Linux kernel version 6.14-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.14-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.14-rc7/v6.13

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.14-rc7/v6.14-rc6

