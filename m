Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B554B39B94A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786038967; cv=none; b=JBXM2Ibtm400mbfOdQB+VErdqOPkBpUtKQ7QtCrw1Ij6EKTV5wVDcdMdIa3Xl5JYAiTAYBneHo5olJWGJeE/Dk40OuOd9hv/i8ZgLIPDj2WTNp6XhAyILKudl6jsJsf3u5st70t9tsx5pUiiMvtP+900A8bO7Pmnla+5Ndjtzmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786038967; c=relaxed/simple;
	bh=ZqIumkYcLqRy47/qBEFbmKfDh2tn9NMaQDtZHMIunsU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dYHFSIDlq9s/4D5Nau49LdLJqLnxqC1G4vZVnVkF9mII4VptQG2xq8IrRrA7xYQxqbiBKu+2b9UxdfpLPizBKW5TjvOVMH73iPKMDzKN2uSD0JjmK+hOUlOhly1j9wv8Ek2A4qjIGzFvv/NH8SINhRW8jGeciwiQ9jy7OO7ZmrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786038966;
	bh=ZqIumkYcLqRy47/qBEFbmKfDh2tn9NMaQDtZHMIunsU=;
	h=Subject:From:To:Date:From;
	b=Y5ZciksQ6+8zM9ZJyyUJ3gr96LlHKz3g89PcvILeZUuIgAC1EAZENz2o5YlvaiKU6
	 o27aOhek4OMZ4W1cA5YdH+AaJasFP9Up2tIR6l0qzozw5V5raMaKckyjU1OnauT35b
	 WHj4nrONSse3QzVJ2zmmPmCCClj/Y195yefQ3tOw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 296321F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:56:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 965413809A18
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:55:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 06 Aug 2026 17:55:24 +0000
Message-Id: <20260806175524.release-7.1.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.7.xz

Linux kernel version 7.1.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.7/v7.1.6

