Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA427FBA2
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Sep 2024 22:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727650542; cv=none; b=hBZzY87BEipCWpErEYoul/0eKsWGskL3Fbke1q3gG+QXpjWAIm3juL6UsvNgUVteZQqfVNUXN5mMtOQyA6DBaTvccZ+NBXIqZmkVivqRJ2NmkL+mzmSzin/iNaQpAz9vT5g5FbkTfZK9A3+Ufuy0vpCqKG20cXpU6838pVThI7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727650542; c=relaxed/simple;
	bh=RWzK1Q2ljqB9NJYQfAcb9MFz6g/Y/j4S3WTfke0NsWc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cPgcznPNrs0J/Nl/87zFu0EAd9ytXhcisSHRnPsDQPuuK84fC+ogVvcJs/sAS45wB/TQ9hpyqh/iN1fHvZRcXYXia6/qR4WuB8EH9G/hkUubAUcaKBRODrFeXcix1FB0Hhktl2QOFyLUYGpfds8QIXV9v/8c8aOGptyTm/EoLh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1727650542;
	bh=RWzK1Q2ljqB9NJYQfAcb9MFz6g/Y/j4S3WTfke0NsWc=;
	h=Subject:From:To:Date:From;
	b=wLJJnHvZ/b7kJWbN8M7wJPlfwc4Fl3EYkvQLJzjY1Hk62fy0Lz40lqZIKqlLaNJL7
	 +ruhLUWndbDewEy+kq4eG0ONtMiq2Wdzde6MIFcRD/p+OAJTUb7eXijhhBqslFJhM7
	 iMYkguqqf+uM1Yelz40SyydX+XBDfe8sEJjPg398=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18041C4CEC5
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Sep 2024 22:55:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 00B2039D1BCC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Sep 2024 22:55:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 29 Sep 2024 22:55:44 +0000
Message-Id: <20240929225544.release-6.12-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.12-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.12-rc1/v6.11

Linux kernel version 6.12-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.12-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.12-rc1/v6.11

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.12-rc1/v6.11

